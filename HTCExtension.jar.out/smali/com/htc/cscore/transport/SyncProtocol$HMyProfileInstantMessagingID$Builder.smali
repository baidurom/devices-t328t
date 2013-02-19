.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29971
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29966
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$56400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30045
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 30049
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 3

    .prologue
    .line 29974
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;-><init>()V

    .line 29975
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 29976
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 30037
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30038
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 30040
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 3

    .prologue
    .line 30057
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-nez v1, :cond_0

    .line 30058
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30061
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 30062
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 30063
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 29992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-nez v0, :cond_0

    .line 29993
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29996
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 29997
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 30223
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30225
    return-object p0
.end method

.method public clearInstantMessagingID()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 30260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Ljava/lang/String;)Ljava/lang/String;

    .line 30262
    return-object p0
.end method

.method public clearInstantMessagingType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30295
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 30296
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 30355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30357
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 30391
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 3

    .prologue
    .line 30423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30424
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;J)J

    .line 30425
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 30005
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 30022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getInstantMessagingID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstantMessagingType()I
    .locals 1

    .prologue
    .line 30278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v0

    return v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 30373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 30173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasInstantMessagingID()Z
    .locals 1

    .prologue
    .line 30234
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v0

    return v0
.end method

.method public hasInstantMessagingType()Z
    .locals 1

    .prologue
    .line 30271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 30305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 30366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 30400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 29984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 29966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 30030
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 30080
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 30100
    :goto_0
    return-object p0

    .line 30081
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30082
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30084
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30085
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30087
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30088
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30090
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30091
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30093
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30094
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30096
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30097
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 30099
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30111
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 30115
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30116
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 30121
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30123
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 30124
    :goto_1
    return-object p0

    .line 30118
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 30129
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30133
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30137
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30138
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30139
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30141
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30142
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30146
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30147
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30150
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30151
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30155
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30159
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 30116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x2872 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3198 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 30071
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-eqz v0, :cond_0

    .line 30072
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object p0

    .line 30075
    .end local p0
    :goto_0
    return-object p0

    .line 30074
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
    .line 29966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29966
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 29966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 29966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29966
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 29966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30215
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30216
    return-object p0

    .line 30213
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30347
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30348
    return-object p0

    .line 30345
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30199
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30200
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30201
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30187
    if-nez p1, :cond_0

    .line 30188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30190
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30192
    return-object p0
.end method

.method public setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30248
    if-nez p1, :cond_0

    .line 30249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30251
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Ljava/lang/String;)Ljava/lang/String;

    .line 30253
    return-object p0
.end method

.method public setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 30287
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30332
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30333
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30319
    if-nez p1, :cond_0

    .line 30320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30322
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30323
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30324
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 30382
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30414
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 30415
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;J)J

    .line 30416
    return-object p0
.end method
