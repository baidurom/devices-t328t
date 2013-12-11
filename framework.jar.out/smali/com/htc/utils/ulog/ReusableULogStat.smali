.class public final Lcom/htc/utils/ulog/ReusableULogStat;
.super Ljava/lang/Object;
.source "ReusableULogStat.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogStat;


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ReusableULogStat"

.field private static sLock:Ljava/lang/Object;

.field private static sPool:Lcom/htc/utils/ulog/ReusableULogStat;

.field private static sPoolSize:I


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mCounterName:Ljava/lang/String;

.field private mNext:Lcom/htc/utils/ulog/ReusableULogStat;

.field private mOffset:J

.field private mRefCount:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ReusableULogStat;->sLock:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mAppId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCategory:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCounterName:Ljava/lang/String;

    .line 21
    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mTimestamp:J

    .line 22
    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->addRef()V

    .line 24
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mAppId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCategory:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCounterName:Ljava/lang/String;

    .line 48
    iput-wide v1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mTimestamp:J

    .line 49
    iput-wide v1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mOffset:J

    .line 50
    return-void
.end method

.method public static obtain()Lcom/htc/utils/ulog/ReusableULogStat;
    .locals 5

    .prologue
    .line 132
    sget-object v2, Lcom/htc/utils/ulog/ReusableULogStat;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogStat;->sPool:Lcom/htc/utils/ulog/ReusableULogStat;

    if-eqz v1, :cond_0

    .line 134
    sget-object v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPool:Lcom/htc/utils/ulog/ReusableULogStat;

    .line 135
    .local v0, r:Lcom/htc/utils/ulog/ReusableULogStat;
    iget-object v1, v0, Lcom/htc/utils/ulog/ReusableULogStat;->mNext:Lcom/htc/utils/ulog/ReusableULogStat;

    sput-object v1, Lcom/htc/utils/ulog/ReusableULogStat;->sPool:Lcom/htc/utils/ulog/ReusableULogStat;

    .line 136
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/utils/ulog/ReusableULogStat;->mNext:Lcom/htc/utils/ulog/ReusableULogStat;

    .line 137
    sget v1, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/utils/ulog/ReusableULogStat;->setTimestamp(J)V

    .line 139
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogStat;->addRef()V

    .line 141
    monitor-exit v2

    .line 144
    .end local v0           #r:Lcom/htc/utils/ulog/ReusableULogStat;
    :goto_0
    return-object v0

    .line 143
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v0, Lcom/htc/utils/ulog/ReusableULogStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogStat;-><init>(J)V

    goto :goto_0

    .line 143
    .restart local v0       #r:Lcom/htc/utils/ulog/ReusableULogStat;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCount(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogStat;
    .locals 2
    .parameter "counterName"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCounterName:Ljava/lang/String;

    .line 71
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mOffset:J

    .line 72
    return-object p0
.end method

.method public addCount(Ljava/lang/String;J)Lcom/htc/utils/ulog/ReusableULogStat;
    .locals 0
    .parameter "counterName"
    .parameter "offset"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCounterName:Ljava/lang/String;

    .line 78
    iput-wide p2, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mOffset:J

    .line 79
    return-object p0
.end method

.method public addRef()V
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogStat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    .line 30
    monitor-exit v1

    .line 32
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mOffset:J

    return-wide v0
.end method

.method public getCounterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCounterName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mTimestamp:J

    return-wide v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 149
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogStat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    .line 152
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    if-gtz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->clear()V

    .line 154
    sget v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 155
    sget-object v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPool:Lcom/htc/utils/ulog/ReusableULogStat;

    iput-object v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mNext:Lcom/htc/utils/ulog/ReusableULogStat;

    .line 156
    sput-object p0, Lcom/htc/utils/ulog/ReusableULogStat;->sPool:Lcom/htc/utils/ulog/ReusableULogStat;

    .line 157
    sget v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/utils/ulog/ReusableULogStat;->sPoolSize:I

    .line 160
    :cond_0
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseRef()V
    .locals 2

    .prologue
    .line 38
    sget-object v1, Lcom/htc/utils/ulog/ReusableULogStat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mRefCount:I

    .line 40
    monitor-exit v1

    .line 42
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogStat;
    .locals 0
    .parameter "appId"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mAppId:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogStat;
    .locals 0
    .parameter "category"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mCategory:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/htc/utils/ulog/ReusableULogStat;->mTimestamp:J

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "appId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "category : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, "timestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->getCounterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/utils/ulog/ReusableULogStat;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
