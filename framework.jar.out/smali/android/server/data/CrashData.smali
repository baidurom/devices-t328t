.class public Landroid/server/data/CrashData;
.super Ljava/lang/Object;
.source "CrashData.java"


# instance fields
.field final activity:Ljava/lang/String;

.field final buildData:Landroid/server/data/BuildData;

.field final id:Ljava/lang/String;

.field final state:[B

.field final throwableData:Landroid/server/data/ThrowableData;

.field final time:J


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 83
    .local v0, dataVersion:I
    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    .line 84
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0 or 1. Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    .line 89
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/server/data/CrashData;->time:J

    .line 90
    new-instance v2, Landroid/server/data/BuildData;

    invoke-direct {v2, p1}, Landroid/server/data/BuildData;-><init>(Ljava/io/DataInput;)V

    iput-object v2, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    .line 91
    new-instance v2, Landroid/server/data/ThrowableData;

    invoke-direct {v2, p1}, Landroid/server/data/ThrowableData;-><init>(Ljava/io/DataInput;)V

    iput-object v2, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    .line 92
    if-ne v0, v4, :cond_2

    .line 93
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 94
    .local v1, len:I
    if-nez v1, :cond_1

    .line 95
    iput-object v5, p0, Landroid/server/data/CrashData;->state:[B

    .line 103
    .end local v1           #len:I
    :goto_0
    return-void

    .line 97
    .restart local v1       #len:I
    :cond_1
    new-array v2, v1, [B

    iput-object v2, p0, Landroid/server/data/CrashData;->state:[B

    .line 98
    iget-object v2, p0, Landroid/server/data/CrashData;->state:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Ljava/io/DataInput;->readFully([BII)V

    goto :goto_0

    .line 101
    .end local v1           #len:I
    :cond_2
    iput-object v5, p0, Landroid/server/data/CrashData;->state:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/server/data/BuildData;Landroid/server/data/ThrowableData;)V
    .locals 2
    .parameter "id"
    .parameter "activity"
    .parameter "buildData"
    .parameter "throwableData"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    .line 64
    invoke-static {p2}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    .line 65
    invoke-static {p3}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/data/BuildData;

    iput-object v0, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    .line 66
    invoke-static {p4}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/data/ThrowableData;

    iput-object v0, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/data/CrashData;->time:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/data/CrashData;->state:[B

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/server/data/BuildData;Landroid/server/data/ThrowableData;[B)V
    .locals 2
    .parameter "id"
    .parameter "activity"
    .parameter "buildData"
    .parameter "throwableData"
    .parameter "state"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    .line 74
    invoke-static {p2}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    .line 75
    invoke-static {p3}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/data/BuildData;

    iput-object v0, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    .line 76
    invoke-static {p4}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/data/ThrowableData;

    iput-object v0, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/data/CrashData;->time:J

    .line 78
    iput-object p5, p0, Landroid/server/data/CrashData;->state:[B

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "throwable"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/server/data/BuildData;

    invoke-direct {v0}, Landroid/server/data/BuildData;-><init>()V

    iput-object v0, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    .line 109
    new-instance v0, Landroid/server/data/ThrowableData;

    invoke-direct {v0, p2}, Landroid/server/data/ThrowableData;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/data/CrashData;->time:J

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/data/CrashData;->state:[B

    .line 112
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildData()Landroid/server/data/BuildData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()[B
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/server/data/CrashData;->state:[B

    return-object v0
.end method

.method public getThrowableData()Landroid/server/data/ThrowableData;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Landroid/server/data/CrashData;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CrashData: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/server/data/CrashData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buildData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " throwableData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    invoke-virtual {v1}, Landroid/server/data/ThrowableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Landroid/server/data/CrashData;->state:[B

    if-nez v0, :cond_1

    .line 118
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 123
    :goto_0
    iget-object v0, p0, Landroid/server/data/CrashData;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/server/data/CrashData;->activity:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 125
    iget-wide v0, p0, Landroid/server/data/CrashData;->time:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 126
    iget-object v0, p0, Landroid/server/data/CrashData;->buildData:Landroid/server/data/BuildData;

    invoke-virtual {v0, p1}, Landroid/server/data/BuildData;->write(Ljava/io/DataOutput;)V

    .line 127
    iget-object v0, p0, Landroid/server/data/CrashData;->throwableData:Landroid/server/data/ThrowableData;

    invoke-virtual {v0, p1}, Landroid/server/data/ThrowableData;->write(Ljava/io/DataOutput;)V

    .line 128
    iget-object v0, p0, Landroid/server/data/CrashData;->state:[B

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/server/data/CrashData;->state:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/server/data/CrashData;->state:[B

    iget-object v1, p0, Landroid/server/data/CrashData;->state:[B

    array-length v1, v1

    invoke-interface {p1, v0, v2, v1}, Ljava/io/DataOutput;->write([BII)V

    .line 132
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method
