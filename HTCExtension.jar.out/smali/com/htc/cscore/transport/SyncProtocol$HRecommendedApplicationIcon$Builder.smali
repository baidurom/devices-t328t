.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56029
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56024
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$106600()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56103
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 56107
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 3

    .prologue
    .line 56032
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;-><init>()V

    .line 56033
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 56034
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 56095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 56098
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 3

    .prologue
    .line 56115
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-nez v1, :cond_0

    .line 56116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56119
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 56120
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 56121
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-nez v0, :cond_0

    .line 56051
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56054
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 56055
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56258
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 56259
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56295
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 56296
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56357
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56392
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 56394
    return-object p0
.end method

.method public clearPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56455
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 3

    .prologue
    .line 56487
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;J)J

    .line 56489
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 56063
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 56238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 56080
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 56072
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 56312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 56410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 56471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 56231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 56268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 56305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 56366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPhoneAppId()Z
    .locals 1

    .prologue
    .line 56403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 56464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 56042
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 56024
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 56088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 56138
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 56158
    :goto_0
    return-object p0

    .line 56139
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56140
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56142
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56143
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56145
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56146
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56148
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56149
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56151
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56152
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergePhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56154
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56155
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 56157
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 56173
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 56174
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 56179
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56181
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 56182
    :goto_1
    return-object p0

    .line 56176
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 56187
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56191
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56195
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56199
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56203
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 56204
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 56207
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 56208
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56212
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 56213
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->hasPhoneAppId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 56216
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 56217
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 56174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1e72 -> :sswitch_3
        0x223a -> :sswitch_4
        0x2892 -> :sswitch_5
        0x29ea -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 56129
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-eqz v0, :cond_0

    .line 56130
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object p0

    .line 56133
    .end local p0
    :goto_0
    return-object p0

    .line 56132
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
    .line 56024
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56024
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 56024
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 56024
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56024
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 56024
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 56342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56347
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56348
    return-object p0

    .line 56345
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107700(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 56440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107700(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56445
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56446
    return-object p0

    .line 56443
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56245
    if-nez p1, :cond_0

    .line 56246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56248
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 56250
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56282
    if-nez p1, :cond_0

    .line 56283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56285
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 56287
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 56331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56332
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56333
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56319
    if-nez p1, :cond_0

    .line 56320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56322
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56323
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56324
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56380
    if-nez p1, :cond_0

    .line 56381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56383
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 56385
    return-object p0
.end method

.method public setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 56429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56431
    return-object p0
.end method

.method public setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56417
    if-nez p1, :cond_0

    .line 56418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56420
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56421
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56422
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 56478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 56479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;J)J

    .line 56480
    return-object p0
.end method
