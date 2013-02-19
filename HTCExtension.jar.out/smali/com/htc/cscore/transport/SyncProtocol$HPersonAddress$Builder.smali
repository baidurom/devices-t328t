.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41031
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41026
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$76500()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41105
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 41109
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 3

    .prologue
    .line 41034
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;-><init>()V

    .line 41035
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 41036
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 41097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41098
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 41100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 3

    .prologue
    .line 41117
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-nez v1, :cond_0

    .line 41118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41121
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 41122
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 41123
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41052
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-nez v0, :cond_0

    .line 41053
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41056
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 41057
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41307
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 41309
    return-object p0
.end method

.method public clearCity()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41346
    return-object p0
.end method

.method public clearCountry()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41382
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41383
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41442
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41443
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41444
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41503
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41504
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41505
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41537
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;I)I

    .line 41539
    return-object p0
.end method

.method public clearRegion()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41574
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41576
    return-object p0
.end method

.method public clearState()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41611
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41612
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41613
    return-object p0
.end method

.method public clearStreet1()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41649
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41650
    return-object p0
.end method

.method public clearStreet2()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41686
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41687
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 3

    .prologue
    .line 41719
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;J)J

    .line 41721
    return-object p0
.end method

.method public clearZipCode()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41756
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$79002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41758
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 41065
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1

    .prologue
    .line 41288
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 41082
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 41074
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41460
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 41521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41555
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41592
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41629
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 41703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41737
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAddressType()Z
    .locals 1

    .prologue
    .line 41281
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 41318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v0

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 41355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 41392
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 41453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 41514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 41548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 41585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v0

    return v0
.end method

.method public hasStreet1()Z
    .locals 1

    .prologue
    .line 41622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v0

    return v0
.end method

.method public hasStreet2()Z
    .locals 1

    .prologue
    .line 41659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 41696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasZipCode()Z
    .locals 1

    .prologue
    .line 41730
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 41044
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 41026
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 41090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 41140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 41178
    :goto_0
    return-object p0

    .line 41141
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41142
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41144
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41145
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41147
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41148
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41150
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41151
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41153
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41154
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41156
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41157
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41159
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41160
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41162
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41163
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41165
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41166
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41168
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41169
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41171
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41172
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41174
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41175
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 41177
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41189
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 41193
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41194
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 41199
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41201
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 41202
    :goto_1
    return-object p0

    .line 41196
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 41207
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41211
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41215
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41219
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41223
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41227
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41228
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41229
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41231
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41232
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41236
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41237
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41238
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41240
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41241
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 41245
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 41249
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 41253
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 41257
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41258
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v4

    .line 41259
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    if-nez v4, :cond_3

    .line 41260
    const/16 v5, 0x631

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41262
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 41267
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 41194
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69a -> :sswitch_1
        0xd32 -> :sswitch_2
        0xe32 -> :sswitch_3
        0x1088 -> :sswitch_4
        0x1fe2 -> :sswitch_5
        0x2512 -> :sswitch_6
        0x2892 -> :sswitch_7
        0x2b82 -> :sswitch_8
        0x2d1a -> :sswitch_9
        0x2eb0 -> :sswitch_a
        0x3188 -> :sswitch_b
        0x3cc2 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 41131
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-eqz v0, :cond_0

    .line 41132
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object p0

    .line 41135
    .end local p0
    :goto_0
    return-object p0

    .line 41134
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
    .line 41026
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41026
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 41026
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 41026
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41026
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 41026
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41434
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41435
    return-object p0

    .line 41432
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77600(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77600(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41495
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41496
    return-object p0

    .line 41493
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41295
    if-nez p1, :cond_0

    .line 41296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41298
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41299
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 41300
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41332
    if-nez p1, :cond_0

    .line 41333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41335
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41337
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41369
    if-nez p1, :cond_0

    .line 41370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41372
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41374
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41420
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41406
    if-nez p1, :cond_0

    .line 41407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41409
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41411
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41480
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41481
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41467
    if-nez p1, :cond_0

    .line 41468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41470
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41472
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;I)I

    .line 41530
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41562
    if-nez p1, :cond_0

    .line 41563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41565
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41567
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41599
    if-nez p1, :cond_0

    .line 41600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41602
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41604
    return-object p0
.end method

.method public setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41636
    if-nez p1, :cond_0

    .line 41637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41639
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41641
    return-object p0
.end method

.method public setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41673
    if-nez p1, :cond_0

    .line 41674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41676
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41677
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41678
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41710
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;J)J

    .line 41712
    return-object p0
.end method

.method public setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41744
    if-nez p1, :cond_0

    .line 41745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41747
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 41748
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$79002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 41749
    return-object p0
.end method
