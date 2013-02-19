.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28054
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28049
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28128
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 28132
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 28057
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;-><init>()V

    .line 28058
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 28059
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 28120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 28123
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 3

    .prologue
    .line 28140
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-nez v1, :cond_0

    .line 28141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28144
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 28145
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 28146
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-nez v0, :cond_0

    .line 28076
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28079
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 28080
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEventDate()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 28292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 28294
    return-object p0
.end method

.method public clearEventName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 28331
    return-object p0
.end method

.method public clearEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 28368
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28429
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28490
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;I)I

    .line 28524
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 28556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 28558
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 28088
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 28105
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 28097
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEventDate()J
    .locals 2

    .prologue
    .line 28276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28310
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1

    .prologue
    .line 28347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 28506
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEventDate()Z
    .locals 1

    .prologue
    .line 28269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v0

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .prologue
    .line 28303
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v0

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 28340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 28377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 28438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 28499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 28533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 28067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 28049
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 28113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 28163
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 28186
    :goto_0
    return-object p0

    .line 28164
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28165
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28167
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28168
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28170
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28171
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28173
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28174
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28176
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28177
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28179
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28180
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28182
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28183
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 28185
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28197
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 28201
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 28202
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 28207
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 28209
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 28210
    :goto_1
    return-object p0

    .line 28204
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 28215
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28219
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28223
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28227
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 28228
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v4

    .line 28229
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    if-nez v4, :cond_1

    .line 28230
    const/16 v5, 0x3de

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 28232
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28237
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 28238
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 28239
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 28241
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 28242
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28246
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 28247
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->hasMyProfileId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28248
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 28250
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 28251
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 28255
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto/16 :goto_0

    .line 28202
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x184a -> :sswitch_2
        0x1ba8 -> :sswitch_3
        0x1ef0 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2d3a -> :sswitch_6
        0x2eb0 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 28154
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-eqz v0, :cond_0

    .line 28155
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object p0

    .line 28158
    .end local p0
    :goto_0
    return-object p0

    .line 28157
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
    .line 28049
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28049
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 28049
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 28049
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28049
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 28049
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 28414
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28419
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28420
    return-object p0

    .line 28417
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 28475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28480
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28481
    return-object p0

    .line 28478
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 28285
    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28317
    if-nez p1, :cond_0

    .line 28318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28320
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28321
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 28322
    return-object p0
.end method

.method public setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28354
    if-nez p1, :cond_0

    .line 28355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28357
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 28359
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 28403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28404
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28405
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28391
    if-nez p1, :cond_0

    .line 28392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28394
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28396
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 28464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28466
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28452
    if-nez p1, :cond_0

    .line 28453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28455
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28456
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28457
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;I)I

    .line 28515
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 28548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 28549
    return-object p0
.end method
