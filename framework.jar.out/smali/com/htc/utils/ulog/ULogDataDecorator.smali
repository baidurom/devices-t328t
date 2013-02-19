.class abstract Lcom/htc/utils/ulog/ULogDataDecorator;
.super Ljava/lang/Object;
.source "ULogDataDecorator.java"

# interfaces
.implements Lcom/htc/utils/ulog/ULogData;


# instance fields
.field protected mULogData:Lcom/htc/utils/ulog/ULogData;


# direct methods
.method public constructor <init>(Lcom/htc/utils/ulog/ULogData;)V
    .locals 0
    .parameter "ulogData"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    .line 12
    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->addRef()V

    .line 18
    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v0}, Lcom/htc/utils/ulog/ULogData;->recycle()V

    .line 24
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
