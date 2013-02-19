.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48723
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48718
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$92400()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48797
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 48801
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 48726
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;-><init>()V

    .line 48727
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 48728
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 48789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48790
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 48792
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 3

    .prologue
    .line 48809
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-nez v1, :cond_0

    .line 48810
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48813
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 48814
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 48815
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 48744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-nez v0, :cond_0

    .line 48745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48748
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 48749
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 48960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 48961
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 48962
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 48997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 48998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 48999
    return-object p0
.end method

.method public clearComment()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 49034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49035
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 49036
    return-object p0
.end method

.method public clearCommentCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 49068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49070
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 49129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 49131
    return-object p0
.end method

.method public clearIsLike()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49163
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49165
    return-object p0
.end method

.method public clearLikeCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 49197
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49199
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 49231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49233
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 48757
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCreateDate()J
    .locals 2

    .prologue
    .line 49052
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 48774
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 48766
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 49086
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 49147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v0

    return v0
.end method

.method public getLikeCreateDate()J
    .locals 2

    .prologue
    .line 49181
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 49215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 48934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 48971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 49008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v0

    return v0
.end method

.method public hasCommentCreateDate()Z
    .locals 1

    .prologue
    .line 49045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 49079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 49140
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v0

    return v0
.end method

.method public hasLikeCreateDate()Z
    .locals 1

    .prologue
    .line 49174
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 49208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 48736
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 48718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 48782
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 48832
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 48858
    :goto_0
    return-object p0

    .line 48833
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48834
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48836
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48837
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48839
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48840
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48842
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48843
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48845
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48846
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48848
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48849
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48851
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48852
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48854
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48855
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 48857
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48869
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 48873
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48874
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 48879
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48881
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 48882
    :goto_1
    return-object p0

    .line 48876
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 48887
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48891
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48895
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48899
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 48900
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48901
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 48903
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 48904
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48908
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48912
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48916
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48920
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 48874
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1242 -> :sswitch_2
        0x1f50 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2a00 -> :sswitch_5
        0x2a22 -> :sswitch_6
        0x3538 -> :sswitch_7
        0x3afa -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 48823
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 48824
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object p0

    .line 48827
    .end local p0
    :goto_0
    return-object p0

    .line 48826
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
    .line 48718
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48718
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 48718
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 48718
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48718
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 48718
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49114
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 49121
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49122
    return-object p0

    .line 49119
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48948
    if-nez p1, :cond_0

    .line 48949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48951
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 48952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 48953
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48985
    if-nez p1, :cond_0

    .line 48986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48988
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 48989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 48990
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49022
    if-nez p1, :cond_0

    .line 49023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49025
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49026
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 49027
    return-object p0
.end method

.method public setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49061
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 49105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 49107
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49093
    if-nez p1, :cond_0

    .line 49094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49096
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 49098
    return-object p0
.end method

.method public setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49156
    return-object p0
.end method

.method public setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49188
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49190
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 49223
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 49224
    return-object p0
.end method
