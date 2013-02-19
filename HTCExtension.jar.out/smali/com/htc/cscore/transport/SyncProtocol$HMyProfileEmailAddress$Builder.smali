.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27145
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27140
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27219
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27220
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 27223
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 3

    .prologue
    .line 27148
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;-><init>()V

    .line 27149
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 27150
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 27211
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 27214
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 3

    .prologue
    .line 27231
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-nez v1, :cond_0

    .line 27232
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27235
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 27236
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 27237
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-nez v0, :cond_0

    .line 27167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27170
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 27171
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmailAddress()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$50902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27381
    return-object p0
.end method

.method public clearEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    .line 27418
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27477
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27479
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27540
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27573
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;I)I

    .line 27574
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 3

    .prologue
    .line 27606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27607
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$52002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;J)J

    .line 27608
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27179
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 27196
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 27188
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    .locals 1

    .prologue
    .line 27397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 27556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 27590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 27353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v0

    return v0
.end method

.method public hasEmailAddressType()Z
    .locals 1

    .prologue
    .line 27390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 27427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 27488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 27549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 27583
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 27158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 27140
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 27204
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 27254
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 27274
    :goto_0
    return-object p0

    .line 27255
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27256
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27258
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27259
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27261
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27262
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27264
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27265
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27267
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27268
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27270
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27271
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 27273
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27285
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 27289
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 27290
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 27295
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27297
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 27298
    :goto_1
    return-object p0

    .line 27292
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 27303
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27307
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 27308
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v4

    .line 27309
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    if-nez v4, :cond_1

    .line 27310
    const/16 v5, 0x246

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 27312
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27317
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27318
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27321
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27322
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27326
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27327
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->hasMyProfileId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 27328
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27330
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27331
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27335
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27339
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 27290
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1230 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3ac2 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 27245
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-eqz v0, :cond_0

    .line 27246
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object p0

    .line 27249
    .end local p0
    :goto_0
    return-object p0

    .line 27248
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
    .line 27140
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27140
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 27140
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 27140
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27140
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 27140
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27469
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27470
    return-object p0

    .line 27467
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27530
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27531
    return-object p0

    .line 27528
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27367
    if-nez p1, :cond_0

    .line 27368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27370
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$50902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27371
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27372
    return-object p0
.end method

.method public setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27404
    if-nez p1, :cond_0

    .line 27405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27407
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27408
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    .line 27409
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 27453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27455
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27441
    if-nez p1, :cond_0

    .line 27442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27444
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27446
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 27514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27515
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27516
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27502
    if-nez p1, :cond_0

    .line 27503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27505
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27506
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27507
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27563
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27564
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;I)I

    .line 27565
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27597
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 27598
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$52002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;J)J

    .line 27599
    return-object p0
.end method
