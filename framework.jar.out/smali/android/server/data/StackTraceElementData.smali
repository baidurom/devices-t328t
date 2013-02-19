.class public Landroid/server/data/StackTraceElementData;
.super Ljava/lang/Object;
.source "StackTraceElementData.java"


# instance fields
.field final className:Ljava/lang/String;

.field final fileName:Ljava/lang/String;

.field final lineNumber:I

.field final methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 62
    .local v0, dataVersion:I
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 0. Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    .line 69
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "[unknown source]"

    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    .line 58
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 75
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 79
    return-void
.end method
