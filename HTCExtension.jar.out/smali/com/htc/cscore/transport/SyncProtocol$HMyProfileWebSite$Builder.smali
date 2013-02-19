.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33331
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33326
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$63200()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 33409
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 3

    .prologue
    .line 33334
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;-><init>()V

    .line 33335
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 33336
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 33397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 33400
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 3

    .prologue
    .line 33417
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-nez v1, :cond_0

    .line 33418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33421
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 33422
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 33423
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 33352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-nez v0, :cond_0

    .line 33353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33356
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 33357
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 33576
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33578
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 33637
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33638
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33639
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33671
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33672
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;I)I

    .line 33673
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 3

    .prologue
    .line 33705
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;J)J

    .line 33707
    return-object p0
.end method

.method public clearWebSite()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 33742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33743
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Ljava/lang/String;)Ljava/lang/String;

    .line 33744
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 33365
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 33382
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33374
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 33533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 33594
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 33655
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 33689
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 33526
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 33587
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 33648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 33682
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasWebSite()Z
    .locals 1

    .prologue
    .line 33716
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 33344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 33326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 33390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 33440
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 33457
    :goto_0
    return-object p0

    .line 33441
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33442
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 33444
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33445
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 33447
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33448
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 33450
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33451
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 33453
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33454
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 33456
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33468
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 33472
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33473
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 33478
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33480
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 33481
    :goto_1
    return-object p0

    .line 33475
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 33486
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 33490
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 33494
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 33495
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 33498
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 33499
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 33503
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 33504
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33505
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 33507
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 33508
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 33512
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 33473
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1d5a -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33431
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-eqz v0, :cond_0

    .line 33432
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object p0

    .line 33435
    .end local p0
    :goto_0
    return-object p0

    .line 33434
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
    .line 33326
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33326
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 33326
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 33326
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33326
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 33326
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33561
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 33563
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33568
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33569
    return-object p0

    .line 33566
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 33624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33629
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33630
    return-object p0

    .line 33627
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 33552
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33554
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33540
    if-nez p1, :cond_0

    .line 33541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33543
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33545
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 33613
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33615
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33601
    if-nez p1, :cond_0

    .line 33602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33604
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 33606
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33663
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;I)I

    .line 33664
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;J)J

    .line 33698
    return-object p0
.end method

.method public setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33730
    if-nez p1, :cond_0

    .line 33731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33733
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 33734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Ljava/lang/String;)Ljava/lang/String;

    .line 33735
    return-object p0
.end method
