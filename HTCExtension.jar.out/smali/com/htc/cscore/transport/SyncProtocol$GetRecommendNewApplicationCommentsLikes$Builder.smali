.class public final Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53089
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53084
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$101200()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53163
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 53167
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 3

    .prologue
    .line 53092
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;-><init>()V

    .line 53093
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53094
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 53155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 53158
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 3

    .prologue
    .line 53175
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    if-nez v1, :cond_0

    .line 53176
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53179
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53180
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53181
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    .line 53110
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    if-nez v0, :cond_0

    .line 53111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53114
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53115
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCount()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$102002(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->count_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$102102(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I

    .line 53397
    return-object p0
.end method

.method public clearSortBy()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    .line 53293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101402(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortBy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortBy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101502(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Ljava/lang/String;)Ljava/lang/String;

    .line 53295
    return-object p0
.end method

.method public clearSortDescending()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101602(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortDescending_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101702(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53329
    return-object p0
.end method

.method public clearStart()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101802(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->start_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101902(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I

    .line 53363
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2

    .prologue
    .line 53123
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

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
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 53140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 53132
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 53311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortDescending()Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 53345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getStart()I

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 53372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 53267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy()Z

    move-result v0

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 53304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 53338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 53102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 53084
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 53148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 53198
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 53212
    :goto_0
    return-object p0

    .line 53199
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53200
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    .line 53202
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53203
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortDescending()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    .line 53205
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53206
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    .line 53208
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53209
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    .line 53211
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 53227
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 53228
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 53233
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53235
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 53236
    :goto_1
    return-object p0

    .line 53230
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 53241
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    goto :goto_0

    .line 53245
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    goto :goto_0

    .line 53249
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    goto :goto_0

    .line 53253
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    goto :goto_0

    .line 53228
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x270 -> :sswitch_1
        0x71a -> :sswitch_2
        0x2b60 -> :sswitch_3
        0x2e60 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 53189
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    if-eqz v0, :cond_0

    .line 53190
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object p0

    .line 53193
    .end local p0
    :goto_0
    return-object p0

    .line 53192
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
    .line 53084
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53084
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

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
    .line 53084
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

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
    .line 53084
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53084
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

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
    .line 53084
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$102002(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->count_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$102102(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I

    .line 53388
    return-object p0
.end method

.method public setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53281
    if-nez p1, :cond_0

    .line 53282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53284
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101402(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortBy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101502(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Ljava/lang/String;)Ljava/lang/String;

    .line 53286
    return-object p0
.end method

.method public setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101602(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortDescending_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101702(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53320
    return-object p0
.end method

.method public setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101802(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z

    .line 53353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->start_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->access$101902(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I

    .line 53354
    return-object p0
.end method
