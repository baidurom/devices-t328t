.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61679
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61674
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$115100()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61753
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 61757
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 61682
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;-><init>()V

    .line 61683
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 61684
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 61745
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61746
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 61748
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 3

    .prologue
    .line 61765
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-nez v1, :cond_0

    .line 61766
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61769
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 61770
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 61771
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 61700
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-nez v0, :cond_0

    .line 61701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61704
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 61705
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62285
    return-object p0
.end method

.method public clearAlternateNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62321
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62322
    return-object p0
.end method

.method public clearAreaCode()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62359
    return-object p0
.end method

.method public clearBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62420
    return-object p0
.end method

.method public clearCallForwardPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62493
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62494
    return-object p0
.end method

.method public clearCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62555
    return-object p0
.end method

.method public clearCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62456
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 62457
    return-object p0
.end method

.method public clearCountryCode()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62592
    return-object p0
.end method

.method public clearCurrentLocationLatitude()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 62624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62625
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 62626
    return-object p0
.end method

.method public clearCurrentLocationLongitude()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 62658
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 62660
    return-object p0
.end method

.method public clearDeviceVersion()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62695
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62697
    return-object p0
.end method

.method public clearForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 62734
    return-object p0
.end method

.method public clearHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62793
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62794
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62795
    return-object p0
.end method

.method public clearHandsetLocale()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62830
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62831
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62832
    return-object p0
.end method

.method public clearIDD()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62929
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62930
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 62891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62893
    return-object p0
.end method

.method public clearIsCDMA()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62962
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62964
    return-object p0
.end method

.method public clearIsLocationTrackingEnabled()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62998
    return-object p0
.end method

.method public clearIsVerified()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63030
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63032
    return-object p0
.end method

.method public clearLastConnectedTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63065
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63066
    return-object p0
.end method

.method public clearLastKnownLocation()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63098
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63100
    return-object p0
.end method

.method public clearLastSeenAtTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63132
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63133
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63134
    return-object p0
.end method

.method public clearLockHandsetMessage()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63206
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63207
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63208
    return-object p0
.end method

.method public clearLockHandsetPin()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63243
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63245
    return-object p0
.end method

.method public clearLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63171
    return-object p0
.end method

.method public clearMMSMaxSize()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63487
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63488
    return-object p0
.end method

.method public clearMessageForwardEmailAddress()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63281
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63282
    return-object p0
.end method

.method public clearMessageForwardPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63317
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63319
    return-object p0
.end method

.method public clearMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63380
    return-object p0
.end method

.method public clearMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63415
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63417
    return-object p0
.end method

.method public clearMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63454
    return-object p0
.end method

.method public clearMusicVendor()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63522
    return-object p0
.end method

.method public clearNDD()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63559
    return-object p0
.end method

.method public clearNewVoicemailCount()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63592
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63593
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63625
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63626
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63627
    return-object p0
.end method

.method public clearPhoneNumberString()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63663
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63664
    return-object p0
.end method

.method public clearPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63724
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63725
    return-object p0
.end method

.method public clearRecommendsAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63758
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63759
    return-object p0
.end method

.method public clearRecommendsAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63792
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63793
    return-object p0
.end method

.method public clearRemoteDataWipeEraseSDState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63826
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63827
    return-object p0
.end method

.method public clearRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63864
    return-object p0
.end method

.method public clearResyncId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63925
    return-object p0
.end method

.method public clearResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 63960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63961
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 63962
    return-object p0
.end method

.method public clearResyncStateDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 63994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63995
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63996
    return-object p0
.end method

.method public clearTimeOffsetFromUtc()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 64028
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 64029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 64030
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 64062
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 64063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 64064
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 61713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 62240
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 62375
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 62510
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 62436
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocationLatitude()D
    .locals 2

    .prologue
    .line 62608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentLocationLongitude()D
    .locals 2

    .prologue
    .line 62642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 61730
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 61722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 62713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 62750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 62848
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsCDMA()Z
    .locals 1

    .prologue
    .line 62946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v0

    return v0
.end method

.method public getIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 62980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsVerified()Z
    .locals 1

    .prologue
    .line 63014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v0

    return v0
.end method

.method public getLastConnectedTimestamp()J
    .locals 2

    .prologue
    .line 63048
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastKnownLocation()J
    .locals 2

    .prologue
    .line 63082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSeenAtTimestamp()J
    .locals 2

    .prologue
    .line 63116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockHandsetMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockHandsetPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 63150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMMSMaxSize()I
    .locals 1

    .prologue
    .line 63470
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v0

    return v0
.end method

.method public getMessageForwardEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 63335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 63396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 63433
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMusicVendor()I
    .locals 1

    .prologue
    .line 63504
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v0

    return v0
.end method

.method public getNDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewVoicemailCount()I
    .locals 1

    .prologue
    .line 63575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v0

    return v0
.end method

.method public getPhoneNumber()J
    .locals 2

    .prologue
    .line 63609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneNumberString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 63680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendsAppCommentLastViewDate()J
    .locals 2

    .prologue
    .line 63741
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecommendsAppLastViewDate()J
    .locals 2

    .prologue
    .line 63775
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 63809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v0

    return v0
.end method

.method public getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 63843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 63880
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1

    .prologue
    .line 63941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v0

    return-object v0
.end method

.method public getResyncStateDate()J
    .locals 2

    .prologue
    .line 63978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOffsetFromUtc()J
    .locals 2

    .prologue
    .line 64012
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 64046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 62233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    return v0
.end method

.method public hasAlternateNumber()Z
    .locals 1

    .prologue
    .line 62294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v0

    return v0
.end method

.method public hasAreaCode()Z
    .locals 1

    .prologue
    .line 62331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v0

    return v0
.end method

.method public hasBindRequestId()Z
    .locals 1

    .prologue
    .line 62368
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 62466
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardRegionId()Z
    .locals 1

    .prologue
    .line 62503
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardingState()Z
    .locals 1

    .prologue
    .line 62429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v0

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 62564
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocationLatitude()Z
    .locals 1

    .prologue
    .line 62601
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocationLongitude()Z
    .locals 1

    .prologue
    .line 62635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v0

    return v0
.end method

.method public hasDeviceVersion()Z
    .locals 1

    .prologue
    .line 62669
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v0

    return v0
.end method

.method public hasForceRingState()Z
    .locals 1

    .prologue
    .line 62706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v0

    return v0
.end method

.method public hasHandsetDeviceId()Z
    .locals 1

    .prologue
    .line 62743
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasHandsetLocale()Z
    .locals 1

    .prologue
    .line 62804
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v0

    return v0
.end method

.method public hasIDD()Z
    .locals 1

    .prologue
    .line 62902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 62841
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsCDMA()Z
    .locals 1

    .prologue
    .line 62939
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v0

    return v0
.end method

.method public hasIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 62973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public hasIsVerified()Z
    .locals 1

    .prologue
    .line 63007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v0

    return v0
.end method

.method public hasLastConnectedTimestamp()Z
    .locals 1

    .prologue
    .line 63041
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasLastKnownLocation()Z
    .locals 1

    .prologue
    .line 63075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v0

    return v0
.end method

.method public hasLastSeenAtTimestamp()Z
    .locals 1

    .prologue
    .line 63109
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasLockHandsetMessage()Z
    .locals 1

    .prologue
    .line 63180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v0

    return v0
.end method

.method public hasLockHandsetPin()Z
    .locals 1

    .prologue
    .line 63217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v0

    return v0
.end method

.method public hasLockedHandsetState()Z
    .locals 1

    .prologue
    .line 63143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v0

    return v0
.end method

.method public hasMMSMaxSize()Z
    .locals 1

    .prologue
    .line 63463
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardEmailAddress()Z
    .locals 1

    .prologue
    .line 63254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 63291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardPhoneRegionId()Z
    .locals 1

    .prologue
    .line 63328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardStateEmail()Z
    .locals 1

    .prologue
    .line 63389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardStatePhone()Z
    .locals 1

    .prologue
    .line 63426
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v0

    return v0
.end method

.method public hasMusicVendor()Z
    .locals 1

    .prologue
    .line 63497
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v0

    return v0
.end method

.method public hasNDD()Z
    .locals 1

    .prologue
    .line 63531
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v0

    return v0
.end method

.method public hasNewVoicemailCount()Z
    .locals 1

    .prologue
    .line 63568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 63602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberString()Z
    .locals 1

    .prologue
    .line 63636
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v0

    return v0
.end method

.method public hasPhysicalDeviceModelId()Z
    .locals 1

    .prologue
    .line 63673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    return v0
.end method

.method public hasRecommendsAppCommentLastViewDate()Z
    .locals 1

    .prologue
    .line 63734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasRecommendsAppLastViewDate()Z
    .locals 1

    .prologue
    .line 63768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 63802
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v0

    return v0
.end method

.method public hasRemoteDataWipeState()Z
    .locals 1

    .prologue
    .line 63836
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v0

    return v0
.end method

.method public hasResyncId()Z
    .locals 1

    .prologue
    .line 63873
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    return v0
.end method

.method public hasResyncState()Z
    .locals 1

    .prologue
    .line 63934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v0

    return v0
.end method

.method public hasResyncStateDate()Z
    .locals 1

    .prologue
    .line 63971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v0

    return v0
.end method

.method public hasTimeOffsetFromUtc()Z
    .locals 1

    .prologue
    .line 64005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 64039
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 61692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 61674
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 61738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62275
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62276
    return-object p0

    .line 62273
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62405
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62410
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62411
    return-object p0

    .line 62408
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62545
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62546
    return-object p0

    .line 62543
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 61788
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 61928
    :goto_0
    return-object p0

    .line 61789
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61790
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61792
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61793
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61795
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61796
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61798
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61799
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61801
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61802
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61804
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61805
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61807
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61808
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61810
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61811
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61813
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61814
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61816
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61817
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61819
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61820
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61822
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61823
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61825
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61826
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61828
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61829
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61831
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61832
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61834
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61835
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61837
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61838
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61840
    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61841
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61843
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61844
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61846
    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61847
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61849
    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 61850
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61852
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61853
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61855
    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61856
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61858
    :cond_17
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61859
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61861
    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 61862
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61864
    :cond_19
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 61865
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61867
    :cond_1a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 61868
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61870
    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61871
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61873
    :cond_1c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61874
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61876
    :cond_1d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 61877
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61879
    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61880
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61882
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61883
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61885
    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 61886
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61888
    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 61889
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61891
    :cond_22
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 61892
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61894
    :cond_23
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 61895
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61897
    :cond_24
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 61898
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergePhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61900
    :cond_25
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 61901
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61903
    :cond_26
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 61904
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61906
    :cond_27
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 61907
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61909
    :cond_28
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 61910
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61912
    :cond_29
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 61913
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61915
    :cond_2a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 61916
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61918
    :cond_2b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 61919
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61921
    :cond_2c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 61922
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61924
    :cond_2d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 61925
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 61927
    :cond_2e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 61943
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 61944
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 61949
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61951
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 61952
    :goto_1
    return-object p0

    .line 61946
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 61957
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61961
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61965
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61969
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61973
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61977
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61981
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61985
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61989
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 61993
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 61994
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 61995
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_1

    .line 61996
    const/16 v5, 0x1b1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 61998
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 62003
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 62007
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62011
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62012
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v4

    .line 62013
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    if-nez v4, :cond_2

    .line 62014
    const/16 v5, 0x1ea

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62016
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62021
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62025
    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62029
    :sswitch_10
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62030
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasHandsetDeviceId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62031
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62033
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62034
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62038
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62039
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasMessageForwardPhoneRegionId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62040
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62042
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62043
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62047
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62051
    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62055
    :sswitch_14
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62059
    :sswitch_15
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62060
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 62061
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_5

    .line 62062
    const/16 v5, 0x367

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62064
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62069
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_16
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62073
    :sswitch_17
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62077
    :sswitch_18
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62078
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasCallForwardRegionId()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62079
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62081
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62082
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62086
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_19
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62090
    :sswitch_1a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62094
    :sswitch_1b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62095
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasAccountId()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 62096
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62098
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62099
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62103
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62107
    :sswitch_1d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62111
    :sswitch_1e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62115
    :sswitch_1f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62119
    :sswitch_20
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62120
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasBindRequestId()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 62121
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62123
    :cond_8
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62124
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62128
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_21
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62129
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 62130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62132
    :cond_9
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62133
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62137
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_22
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62138
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 62139
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_a

    .line 62140
    const/16 v5, 0x577

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62142
    :cond_a
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62147
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_23
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62148
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 62149
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_b

    .line 62150
    const/16 v5, 0x597

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62152
    :cond_b
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62157
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_24
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62161
    :sswitch_25
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62165
    :sswitch_26
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62169
    :sswitch_27
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62170
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 62171
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_c

    .line 62172
    const/16 v5, 0x655

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62174
    :cond_c
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62179
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_28
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62180
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasResyncId()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 62181
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62183
    :cond_d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62184
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62188
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_29
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 62189
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasPhysicalDeviceModelId()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 62190
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 62192
    :cond_e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 62193
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62197
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 62198
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 62199
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_f

    .line 62200
    const/16 v5, 0x702

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 62202
    :cond_f
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62207
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_2b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62211
    :sswitch_2c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62215
    :sswitch_2d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 62219
    :sswitch_2e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 61944
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x90 -> :sswitch_1
        0x132 -> :sswitch_2
        0x2b8 -> :sswitch_3
        0x738 -> :sswitch_4
        0x8f9 -> :sswitch_5
        0xb2a -> :sswitch_6
        0xb38 -> :sswitch_7
        0xb9a -> :sswitch_8
        0xc58 -> :sswitch_9
        0xd88 -> :sswitch_a
        0xeda -> :sswitch_b
        0xf1a -> :sswitch_c
        0xf50 -> :sswitch_d
        0x1088 -> :sswitch_e
        0x132a -> :sswitch_f
        0x1512 -> :sswitch_10
        0x18da -> :sswitch_11
        0x18e0 -> :sswitch_12
        0x19e8 -> :sswitch_13
        0x1ae8 -> :sswitch_14
        0x1b38 -> :sswitch_15
        0x1c60 -> :sswitch_16
        0x1e92 -> :sswitch_17
        0x1ef2 -> :sswitch_18
        0x1f62 -> :sswitch_19
        0x2158 -> :sswitch_1a
        0x221a -> :sswitch_1b
        0x2230 -> :sswitch_1c
        0x241a -> :sswitch_1d
        0x24b8 -> :sswitch_1e
        0x261a -> :sswitch_1f
        0x26ba -> :sswitch_20
        0x2892 -> :sswitch_21
        0x2bb8 -> :sswitch_22
        0x2cb8 -> :sswitch_23
        0x2d28 -> :sswitch_24
        0x2e52 -> :sswitch_25
        0x2e68 -> :sswitch_26
        0x32a8 -> :sswitch_27
        0x3752 -> :sswitch_28
        0x3762 -> :sswitch_29
        0x3810 -> :sswitch_2a
        0x3880 -> :sswitch_2b
        0x3bc2 -> :sswitch_2c
        0x3e11 -> :sswitch_2d
        0x3f8a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 61779
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-eqz v0, :cond_0

    .line 61780
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object p0

    .line 61783
    .end local p0
    :goto_0
    return-object p0

    .line 61782
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
    .line 61674
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61674
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 61674
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 61674
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61674
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 61674
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62778
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62785
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62786
    return-object p0

    .line 62783
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118200(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62878
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118200(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62883
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62884
    return-object p0

    .line 62881
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 63365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63370
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63371
    return-object p0

    .line 63368
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63708
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 63710
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63715
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63716
    return-object p0

    .line 63713
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 63910
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63915
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63916
    return-object p0

    .line 63913
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 62259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62261
    return-object p0
.end method

.method public setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62247
    if-nez p1, :cond_0

    .line 62248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62250
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62252
    return-object p0
.end method

.method public setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62308
    if-nez p1, :cond_0

    .line 62309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62311
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62313
    return-object p0
.end method

.method public setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62345
    if-nez p1, :cond_0

    .line 62346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62348
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62350
    return-object p0
.end method

.method public setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 62394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62396
    return-object p0
.end method

.method public setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62382
    if-nez p1, :cond_0

    .line 62383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62385
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62387
    return-object p0
.end method

.method public setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62480
    if-nez p1, :cond_0

    .line 62481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62483
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62484
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62485
    return-object p0
.end method

.method public setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 62529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62531
    return-object p0
.end method

.method public setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62517
    if-nez p1, :cond_0

    .line 62518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62520
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62522
    return-object p0
.end method

.method public setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62443
    if-nez p1, :cond_0

    .line 62444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62446
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62447
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 62448
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62578
    if-nez p1, :cond_0

    .line 62579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62581
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62582
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62583
    return-object p0
.end method

.method public setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62615
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62616
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 62617
    return-object p0
.end method

.method public setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62649
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62650
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 62651
    return-object p0
.end method

.method public setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62683
    if-nez p1, :cond_0

    .line 62684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62686
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62687
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62688
    return-object p0
.end method

.method public setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62720
    if-nez p1, :cond_0

    .line 62721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62723
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62724
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 62725
    return-object p0
.end method

.method public setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 62769
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62771
    return-object p0
.end method

.method public setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62757
    if-nez p1, :cond_0

    .line 62758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62760
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62761
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62762
    return-object p0
.end method

.method public setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62818
    if-nez p1, :cond_0

    .line 62819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62821
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62822
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62823
    return-object p0
.end method

.method public setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62916
    if-nez p1, :cond_0

    .line 62917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62919
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 62921
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 62867
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62868
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62869
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62855
    if-nez p1, :cond_0

    .line 62856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62858
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62859
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 62860
    return-object p0
.end method

.method public setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62955
    return-object p0
.end method

.method public setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 62987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 62989
    return-object p0
.end method

.method public setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63021
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63023
    return-object p0
.end method

.method public setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63055
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63056
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63057
    return-object p0
.end method

.method public setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63091
    return-object p0
.end method

.method public setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63123
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63124
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63125
    return-object p0
.end method

.method public setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63194
    if-nez p1, :cond_0

    .line 63195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63197
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63199
    return-object p0
.end method

.method public setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63231
    if-nez p1, :cond_0

    .line 63232
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63234
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63236
    return-object p0
.end method

.method public setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63157
    if-nez p1, :cond_0

    .line 63158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63160
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63161
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63162
    return-object p0
.end method

.method public setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63477
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63479
    return-object p0
.end method

.method public setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63268
    if-nez p1, :cond_0

    .line 63269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63271
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63272
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63273
    return-object p0
.end method

.method public setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63305
    if-nez p1, :cond_0

    .line 63306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63308
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63309
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63310
    return-object p0
.end method

.method public setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 63354
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63356
    return-object p0
.end method

.method public setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63342
    if-nez p1, :cond_0

    .line 63343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63345
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63346
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63347
    return-object p0
.end method

.method public setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63403
    if-nez p1, :cond_0

    .line 63404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63406
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63408
    return-object p0
.end method

.method public setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63440
    if-nez p1, :cond_0

    .line 63441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63443
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63445
    return-object p0
.end method

.method public setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63513
    return-object p0
.end method

.method public setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63545
    if-nez p1, :cond_0

    .line 63546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63548
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63550
    return-object p0
.end method

.method public setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63582
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63583
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 63584
    return-object p0
.end method

.method public setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63616
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63617
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63618
    return-object p0
.end method

.method public setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63650
    if-nez p1, :cond_0

    .line 63651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63653
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63654
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 63655
    return-object p0
.end method

.method public setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 63699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63700
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63701
    return-object p0
.end method

.method public setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63687
    if-nez p1, :cond_0

    .line 63688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63690
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63692
    return-object p0
.end method

.method public setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63748
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63750
    return-object p0
.end method

.method public setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63782
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63783
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63784
    return-object p0
.end method

.method public setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63818
    return-object p0
.end method

.method public setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63850
    if-nez p1, :cond_0

    .line 63851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63853
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63854
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 63855
    return-object p0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 63899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63900
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63901
    return-object p0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63887
    if-nez p1, :cond_0

    .line 63888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63890
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 63892
    return-object p0
.end method

.method public setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63948
    if-nez p1, :cond_0

    .line 63949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63951
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 63953
    return-object p0
.end method

.method public setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 63985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 63986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 63987
    return-object p0
.end method

.method public setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 64019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 64020
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 64021
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 64053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 64054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 64055
    return-object p0
.end method
