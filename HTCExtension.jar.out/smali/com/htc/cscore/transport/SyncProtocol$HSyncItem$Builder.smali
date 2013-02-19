.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58853
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58848
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$112200()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58927
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 58931
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 3

    .prologue
    .line 58856
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;-><init>()V

    .line 58857
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 58858
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 58919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 58922
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 3

    .prologue
    .line 58939
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-nez v1, :cond_0

    .line 58940
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58943
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 58944
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 58945
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 58874
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-nez v0, :cond_0

    .line 58875
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58878
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 58879
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 59067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 59069
    return-object p0
.end method

.method public clearSyncItemType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59098
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I

    .line 59099
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 3

    .prologue
    .line 59127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J

    .line 59129
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 58887
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 58904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 58896
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 59032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getSyncItemType()I
    .locals 1

    .prologue
    .line 59085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 59115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 59025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasSyncItemType()Z
    .locals 1

    .prologue
    .line 59078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 59108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 58866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 58848
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 58912
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 58962
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 58973
    :goto_0
    return-object p0

    .line 58963
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58964
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 58966
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58967
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 58969
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58970
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 58972
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58984
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 58988
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 58989
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 58994
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58996
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 58997
    :goto_1
    return-object p0

    .line 58991
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 59002
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 59006
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 59010
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 59011
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59012
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 59014
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 59015
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 58989
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1cc0 -> :sswitch_2
        0x2892 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 58953
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-eqz v0, :cond_0

    .line 58954
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object p0

    .line 58957
    .end local p0
    :goto_0
    return-object p0

    .line 58956
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
    .line 58848
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58848
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 58848
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 58848
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58848
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 58848
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 59052
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 59054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 59059
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59060
    return-object p0

    .line 59057
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 59047
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59048
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 59049
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 59035
    if-nez p1, :cond_0

    .line 59036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59038
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59039
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 59040
    return-object p0
.end method

.method public setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 59088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I

    .line 59090
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 59118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 59119
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J

    .line 59120
    return-object p0
.end method
