.class public final Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5848
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5843
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5922
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5926
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 5851
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;-><init>()V

    .line 5852
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 5853
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 5914
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5915
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5917
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 3

    .prologue
    .line 5934
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-nez v1, :cond_0

    .line 5935
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5938
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 5939
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 5940
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 5869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-nez v0, :cond_0

    .line 5870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5873
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 5874
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6107
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6109
    return-object p0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6146
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6181
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6182
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 6183
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6219
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6220
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6281
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 6316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6317
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6318
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 6350
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6351
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;J)J

    .line 6352
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 5882
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 6064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 6162
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 5899
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5891
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6199
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 6236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 6334
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAggregatePersonId()Z
    .locals 1

    .prologue
    .line 6057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 6155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 6229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 6327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 5861
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10000(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10000(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6099
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6100
    return-object p0

    .line 6097
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5957
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5980
    :goto_0
    return-object p0

    .line 5958
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5959
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5961
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5962
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5964
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5965
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5967
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5968
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5970
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5971
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5973
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5974
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5976
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5977
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 5979
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 5995
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5996
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6001
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6003
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 6004
    :goto_1
    return-object p0

    .line 5998
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6009
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6013
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6017
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6021
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6025
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6029
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 6030
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6031
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 6033
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6034
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 6038
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 6039
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->hasAggregatePersonId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6040
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 6042
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6043
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 5996
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x3dea -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5948
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-eqz v0, :cond_0

    .line 5949
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object p0

    .line 5952
    .end local p0
    :goto_0
    return-object p0

    .line 5951
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
    .line 5843
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5843
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 5843
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 5843
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5843
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 5843
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10800(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10800(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6271
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6272
    return-object p0

    .line 6269
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6084
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6085
    return-object p0
.end method

.method public setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6071
    if-nez p1, :cond_0

    .line 6072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6074
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6076
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6132
    if-nez p1, :cond_0

    .line 6133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6135
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6137
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6169
    if-nez p1, :cond_0

    .line 6170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6172
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 6174
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6206
    if-nez p1, :cond_0

    .line 6207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6209
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6211
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6255
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6256
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6257
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6243
    if-nez p1, :cond_0

    .line 6244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6246
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6247
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6248
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6304
    if-nez p1, :cond_0

    .line 6305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6307
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 6309
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6341
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 6342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;J)J

    .line 6343
    return-object p0
.end method
