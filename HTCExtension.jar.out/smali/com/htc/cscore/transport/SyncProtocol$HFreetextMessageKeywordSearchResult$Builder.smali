.class public final Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15659
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15654
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29800()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15733
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 15737
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 3

    .prologue
    .line 15662
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;-><init>()V

    .line 15663
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 15664
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 15725
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 15728
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 3

    .prologue
    .line 15745
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    if-nez v1, :cond_0

    .line 15746
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15749
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 15750
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 15751
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2

    .prologue
    .line 15680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    if-nez v0, :cond_0

    .line 15681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15684
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 15685
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2

    .prologue
    .line 15890
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15892
    return-object p0
.end method

.method public clearKEY()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2

    .prologue
    .line 15951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15953
    return-object p0
.end method

.method public clearRANK()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30402(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30502(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;I)I

    .line 15987
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2

    .prologue
    .line 15693
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 15710
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 15702
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 15847
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 15908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getRANK()I
    .locals 1

    .prologue
    .line 15969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 15840
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasKEY()Z
    .locals 1

    .prologue
    .line 15901
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v0

    return v0
.end method

.method public hasRANK()Z
    .locals 1

    .prologue
    .line 15962
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 15672
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 15654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 15718
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 15768
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 15779
    :goto_0
    return-object p0

    .line 15769
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15770
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    .line 15772
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15773
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeKEY(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    .line 15775
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15776
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setRANK(I)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    .line 15778
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15790
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 15794
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15795
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 15800
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15802
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 15803
    :goto_1
    return-object p0

    .line 15797
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 15808
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 15809
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->hasKEY()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15810
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 15812
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15813
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setKEY(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    goto :goto_0

    .line 15817
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setRANK(I)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    goto :goto_0

    .line 15821
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 15822
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15823
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 15825
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15826
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    goto :goto_0

    .line 15795
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12e2 -> :sswitch_1
        0x19e8 -> :sswitch_2
        0x2892 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 15759
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    if-eqz v0, :cond_0

    .line 15760
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object p0

    .line 15763
    .end local p0
    :goto_0
    return-object p0

    .line 15762
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
    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15654
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15654
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15875
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30100(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15877
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30100(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15882
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15883
    return-object p0

    .line 15880
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeKEY(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30300(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15938
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30300(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15943
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15944
    return-object p0

    .line 15941
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15867
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15868
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15854
    if-nez p1, :cond_0

    .line 15855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15857
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15858
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15859
    return-object p0
.end method

.method public setKEY(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15927
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15929
    return-object p0
.end method

.method public setKEY(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15915
    if-nez p1, :cond_0

    .line 15916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15918
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15920
    return-object p0
.end method

.method public setRANK(I)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30402(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z

    .line 15977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->access$30502(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;I)I

    .line 15978
    return-object p0
.end method
