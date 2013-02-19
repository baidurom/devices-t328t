.class public final Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53750
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53745
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102500()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 53828
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 53753
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;-><init>()V

    .line 53754
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53755
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 53819
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 3

    .prologue
    .line 53836
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v1, :cond_0

    .line 53837
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53840
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53841
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53842
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 53771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v0, :cond_0

    .line 53772
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53775
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53776
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 54005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54006
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 54007
    return-object p0
.end method

.method public clearCount()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 54146
    return-object p0
.end method

.method public clearKeywords()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 53968
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 53969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 53970
    return-object p0
.end method

.method public clearSortBy()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 54042
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54043
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 54044
    return-object p0
.end method

.method public clearSortDescending()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54076
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54077
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54078
    return-object p0
.end method

.method public clearStart()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54110
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 54112
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 53784
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53801
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 53793
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53949
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 54060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 54094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 53979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 54121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasKeywords()Z
    .locals 1

    .prologue
    .line 53942
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 54016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 54053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 54087
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 53745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 53809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 53859
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 53879
    :goto_0
    return-object p0

    .line 53860
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53861
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53863
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53864
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53866
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53867
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53869
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53870
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53872
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53873
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53875
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53876
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 53878
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53890
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 53894
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 53895
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 53900
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53902
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 53903
    :goto_1
    return-object p0

    .line 53897
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 53908
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53912
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53916
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53920
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53924
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53928
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 53895
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x270 -> :sswitch_1
        0x71a -> :sswitch_2
        0x2b60 -> :sswitch_3
        0x2e60 -> :sswitch_4
        0x318a -> :sswitch_5
        0x333a -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 53850
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 53851
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object p0

    .line 53854
    .end local p0
    :goto_0
    return-object p0

    .line 53853
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
    .line 53745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53745
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 53745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 53745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53745
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 53745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53993
    if-nez p1, :cond_0

    .line 53994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53996
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 53997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 53998
    return-object p0
.end method

.method public setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 54135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 54137
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53956
    if-nez p1, :cond_0

    .line 53957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53959
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 53960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 53961
    return-object p0
.end method

.method public setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 54030
    if-nez p1, :cond_0

    .line 54031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54033
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 54035
    return-object p0
.end method

.method public setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 54067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54069
    return-object p0
.end method

.method public setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 54101
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 54102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 54103
    return-object p0
.end method
