.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50378
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50373
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$96100()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50452
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 50456
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 3

    .prologue
    .line 50381
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;-><init>()V

    .line 50382
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 50383
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 50444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 50447
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 3

    .prologue
    .line 50464
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-nez v1, :cond_0

    .line 50465
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50468
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 50469
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 50470
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 50399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-nez v0, :cond_0

    .line 50400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50403
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 50404
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 50590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 50591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 50592
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 50412
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 50429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 50421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 50547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public hasWishlist()Z
    .locals 1

    .prologue
    .line 50540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 50391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 50373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 50437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 50487
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 50492
    :goto_0
    return-object p0

    .line 50488
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50489
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    .line 50491
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50503
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 50507
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 50508
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 50513
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50515
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 50516
    :goto_1
    return-object p0

    .line 50510
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 50521
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    .line 50522
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->hasWishlist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50523
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 50525
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 50526
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    goto :goto_0

    .line 50508
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x367a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 50478
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-eqz v0, :cond_0

    .line 50479
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object p0

    .line 50482
    .end local p0
    :goto_0
    return-object p0

    .line 50481
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
    .line 50373
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50373
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 50373
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 50373
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50373
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 50373
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 50575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 50577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 50582
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 50583
    return-object p0

    .line 50580
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    goto :goto_0
.end method

.method public setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 50566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 50567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 50568
    return-object p0
.end method

.method public setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 50554
    if-nez p1, :cond_0

    .line 50555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50557
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 50558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 50559
    return-object p0
.end method
