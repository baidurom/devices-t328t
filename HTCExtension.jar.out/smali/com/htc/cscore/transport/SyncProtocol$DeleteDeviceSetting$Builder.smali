.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$138400()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 3

    .prologue
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;-><init>()V

    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138602(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138802(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138902(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

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
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDeviceSettingId()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceSettingId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138700(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138700(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138602(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2
    .parameter "other"

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeDeviceSettingId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->hasDeviceSettingId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->setDeviceSettingId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    goto :goto_0

    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2aca -> :sswitch_1
        0x3990 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object p0

    .end local p0
    :goto_0
    return-object p0

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceSettingId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138602(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setDeviceSettingId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138602(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138802(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->access$138902(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;J)J

    return-object p0
.end method
