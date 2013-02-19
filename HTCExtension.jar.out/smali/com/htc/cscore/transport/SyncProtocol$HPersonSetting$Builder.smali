.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44944
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44939
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$84900()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45018
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 45022
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 3

    .prologue
    .line 44947
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;-><init>()V

    .line 44948
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 44949
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    .prologue
    .line 45010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45011
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 45013
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 3

    .prologue
    .line 45030
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    if-nez v1, :cond_0

    .line 45031
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45034
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 45035
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 45036
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 44965
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    if-nez v0, :cond_0

    .line 44966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44969
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 44970
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 45209
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45211
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 45246
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45247
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 45248
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 45307
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85502(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45309
    return-object p0
.end method

.method public clearPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 45344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85702(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85802(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 45346
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85902(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86002(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;I)I

    .line 45380
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 3

    .prologue
    .line 45412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45413
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;J)J

    .line 45414
    return-object p0
.end method

.method public clearValue()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 45449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45450
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 45451
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2

    .prologue
    .line 44978
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

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
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    .prologue
    .line 44995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44987
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45227
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 1

    .prologue
    .line 45325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 45362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 45396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 45159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 45220
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 45257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPersonSettingType()Z
    .locals 1

    .prologue
    .line 45318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 45355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 45389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 45423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    .prologue
    .line 44957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 44939
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 45003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 45053
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 45076
    :goto_0
    return-object p0

    .line 45054
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45055
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45057
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45058
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45060
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45061
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45063
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45064
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setPersonSettingType(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45066
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45067
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45069
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45070
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45072
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45073
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    .line 45075
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45087
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 45091
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 45092
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 45097
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45099
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 45100
    :goto_1
    return-object p0

    .line 45094
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 45105
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45109
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45113
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 45114
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45115
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 45117
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45118
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45122
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 45123
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45124
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 45126
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45127
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45131
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45135
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto :goto_0

    .line 45139
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 45140
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    move-result-object v4

    .line 45141
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    if-nez v4, :cond_3

    .line 45142
    const/16 v5, 0x7e2

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 45144
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->setPersonSettingType(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    goto/16 :goto_0

    .line 45092
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x2512 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3c72 -> :sswitch_6
        0x3f10 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 45044
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    if-eqz v0, :cond_0

    .line 45045
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object p0

    .line 45048
    .end local p0
    :goto_0
    return-object p0

    .line 45047
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
    .line 44939
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44939
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

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
    .line 44939
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

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
    .line 44939
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44939
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

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
    .line 44939
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85200(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 45196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85200(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45201
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45202
    return-object p0

    .line 45199
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85600(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 45294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85600(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45299
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85502(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45300
    return-object p0

    .line 45297
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 45185
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45186
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45187
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45173
    if-nez p1, :cond_0

    .line 45174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45176
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45178
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45234
    if-nez p1, :cond_0

    .line 45235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45237
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 45239
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 45283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85502(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45285
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45271
    if-nez p1, :cond_0

    .line 45272
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45274
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85502(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45276
    return-object p0
.end method

.method public setPersonSettingType(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45332
    if-nez p1, :cond_0

    .line 45333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45335
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85702(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85802(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 45337
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$85902(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86002(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;I)I

    .line 45371
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45404
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;J)J

    .line 45405
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45437
    if-nez p1, :cond_0

    .line 45438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45440
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z

    .line 45441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->access$86402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 45442
    return-object p0
.end method
