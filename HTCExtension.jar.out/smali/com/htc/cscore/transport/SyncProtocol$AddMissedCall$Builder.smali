.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64283
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64278
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$124800()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64357
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 64361
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 3

    .prologue
    .line 64286
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;-><init>()V

    .line 64287
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 64288
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 64349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64350
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 64352
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 3

    .prologue
    .line 64369
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-nez v1, :cond_0

    .line 64370
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64373
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 64374
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 64375
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 64304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-nez v0, :cond_0

    .line 64305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64308
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 64309
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 64495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 64496
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 64497
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 64317
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 64334
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 64326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 64452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public hasMissedCall()Z
    .locals 1

    .prologue
    .line 64445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 64296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 64278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 64342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 64392
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 64397
    :goto_0
    return-object p0

    .line 64393
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64394
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    .line 64396
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64408
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 64412
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 64413
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 64418
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64420
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 64421
    :goto_1
    return-object p0

    .line 64415
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 64426
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    .line 64427
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->hasMissedCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64428
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 64430
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 64431
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    goto :goto_0

    .line 64413
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2912 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 64383
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-eqz v0, :cond_0

    .line 64384
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object p0

    .line 64387
    .end local p0
    :goto_0
    return-object p0

    .line 64386
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
    .line 64278
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64278
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 64278
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 64278
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64278
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 64278
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 64480
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125100(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 64482
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125100(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 64487
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 64488
    return-object p0

    .line 64485
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    goto :goto_0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 64471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 64472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 64473
    return-object p0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 64459
    if-nez p1, :cond_0

    .line 64460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64462
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 64463
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 64464
    return-object p0
.end method
