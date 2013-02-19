.class public final Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35060
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35055
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$66800()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35134
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 35138
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 35063
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;-><init>()V

    .line 35064
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35065
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 35126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 35129
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 3

    .prologue
    .line 35146
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-nez v1, :cond_0

    .line 35147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35150
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35151
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35152
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35081
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-nez v0, :cond_0

    .line 35082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35085
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35086
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35302
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    .line 35303
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35364
    return-object p0
.end method

.method public clearIsDefault()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67402(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67502(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35398
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35433
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67602(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67702(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 35435
    return-object p0
.end method

.method public clearPersonCount()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35467
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67802(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35468
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67902(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;I)I

    .line 35469
    return-object p0
.end method

.method public clearRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35530
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 35562
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35563
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;J)J

    .line 35564
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35094
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    .locals 1

    .prologue
    .line 35282
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 35111
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 35103
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 35319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 35380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35414
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonCount()I
    .locals 1

    .prologue
    .line 35451
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v0

    return v0
.end method

.method public getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 35485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 35546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 35275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 35312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 35373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 35407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPersonCount()Z
    .locals 1

    .prologue
    .line 35444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v0

    return v0
.end method

.method public hasRollupGroupId()Z
    .locals 1

    .prologue
    .line 35478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 35539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 35073
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 35055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 35119
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 35169
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 35192
    :goto_0
    return-object p0

    .line 35170
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35171
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35173
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35174
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35176
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35177
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35179
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35180
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35182
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35183
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35185
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35186
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35188
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35189
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35191
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 35207
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 35208
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 35213
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 35215
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 35216
    :goto_1
    return-object p0

    .line 35210
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 35221
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 35222
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v4

    .line 35223
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    if-nez v4, :cond_1

    .line 35224
    const/16 v5, 0x8f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 35226
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35231
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35235
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35239
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35243
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 35244
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35245
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 35247
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 35248
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35252
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 35256
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 35257
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->hasRollupGroupId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 35258
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 35260
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 35261
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto/16 :goto_0

    .line 35208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x478 -> :sswitch_1
        0xee2 -> :sswitch_2
        0x1088 -> :sswitch_3
        0x1238 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2a80 -> :sswitch_6
        0x348a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 35160
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-eqz v0, :cond_0

    .line 35161
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object p0

    .line 35164
    .end local p0
    :goto_0
    return-object p0

    .line 35163
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
    .line 35055
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35055
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 35055
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 35055
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35055
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 35055
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67300(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 35349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67300(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35354
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35355
    return-object p0

    .line 35352
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68100(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 35515
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68100(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35520
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35521
    return-object p0

    .line 35518
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35289
    if-nez p1, :cond_0

    .line 35290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35292
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    .line 35294
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 35338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35339
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35340
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35326
    if-nez p1, :cond_0

    .line 35327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35329
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35331
    return-object p0
.end method

.method public setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67402(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67502(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35389
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35421
    if-nez p1, :cond_0

    .line 35422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35424
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67602(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35425
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67702(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 35426
    return-object p0
.end method

.method public setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35458
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67802(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67902(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;I)I

    .line 35460
    return-object p0
.end method

.method public setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 35504
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35505
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35506
    return-object p0
.end method

.method public setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35492
    if-nez p1, :cond_0

    .line 35493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35495
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35496
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 35497
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 35554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;J)J

    .line 35555
    return-object p0
.end method
