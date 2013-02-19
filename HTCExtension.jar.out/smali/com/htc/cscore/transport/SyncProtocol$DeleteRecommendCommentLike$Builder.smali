.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51297
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$97500()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 51371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 51375
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 51300
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;-><init>()V

    .line 51301
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 51302
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 51363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 51366
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 3

    .prologue
    .line 51383
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-nez v1, :cond_0

    .line 51384
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51387
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 51388
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 51389
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 51318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-nez v0, :cond_0

    .line 51319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51322
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 51323
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 51494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97702(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 51496
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 51531
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 51533
    return-object p0
.end method

.method public clearIsLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98202(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51567
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 51331
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 51348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 51340
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 51549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 51468
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 51505
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 51542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 51310
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 51292
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 51356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 51406
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 51417
    :goto_0
    return-object p0

    .line 51407
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51408
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 51410
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51411
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 51413
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51414
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 51416
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51428
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 51432
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 51433
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 51438
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51440
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 51441
    :goto_1
    return-object p0

    .line 51435
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 51446
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 51450
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 51454
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 51433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3128 -> :sswitch_1
        0x318a -> :sswitch_2
        0x3c52 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 51397
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 51398
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object p0

    .line 51401
    .end local p0
    :goto_0
    return-object p0

    .line 51400
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51292
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51292
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51292
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51482
    if-nez p1, :cond_0

    .line 51483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51485
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97702(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 51487
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51519
    if-nez p1, :cond_0

    .line 51520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51522
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 51524
    return-object p0
.end method

.method public setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98202(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 51558
    return-object p0
.end method
