.class public final Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46425
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46420
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$88100()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46499
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46503
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 3

    .prologue
    .line 46428
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;-><init>()V

    .line 46429
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .line 46430
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1

    .prologue
    .line 46491
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 46494
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 3

    .prologue
    .line 46511
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    if-nez v1, :cond_0

    .line 46512
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46515
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .line 46516
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .line 46517
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2

    .prologue
    .line 46446
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    if-nez v0, :cond_0

    .line 46447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46450
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .line 46451
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2

    .prologue
    .line 46622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88302(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46623
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88402(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46624
    return-object p0
.end method

.method public clearAppURL()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2

    .prologue
    .line 46659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88502(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88602(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46661
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2

    .prologue
    .line 46696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88702(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88802(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46698
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2

    .prologue
    .line 46459
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

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
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1

    .prologue
    .line 46476
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46468
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46677
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 46596
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 46633
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 46670
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1

    .prologue
    .line 46438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 46420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 46484
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46534
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46545
    :goto_0
    return-object p0

    .line 46535
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46536
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    .line 46538
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46539
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    .line 46541
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46542
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    .line 46544
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46556
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 46560
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 46561
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 46566
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46568
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 46569
    :goto_1
    return-object p0

    .line 46563
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 46574
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    goto :goto_0

    .line 46578
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    goto :goto_0

    .line 46582
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    goto :goto_0

    .line 46561
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1c4a -> :sswitch_2
        0x3afa -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46525
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    if-eqz v0, :cond_0

    .line 46526
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object p0

    .line 46529
    .end local p0
    :goto_0
    return-object p0

    .line 46528
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
    .line 46420
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46420
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

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
    .line 46420
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

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
    .line 46420
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46420
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

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
    .line 46420
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46610
    if-nez p1, :cond_0

    .line 46611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46613
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88302(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88402(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46615
    return-object p0
.end method

.method public setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46647
    if-nez p1, :cond_0

    .line 46648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46650
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88502(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46651
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88602(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46652
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46684
    if-nez p1, :cond_0

    .line 46685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46687
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88702(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z

    .line 46688
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->access$88802(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 46689
    return-object p0
.end method
