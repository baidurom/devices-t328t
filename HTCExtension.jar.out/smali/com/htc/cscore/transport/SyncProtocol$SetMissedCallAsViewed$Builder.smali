.class public final Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$132100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$132200()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 3

    .prologue
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;-><init>()V

    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCall()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132402(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132502(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

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
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public hasMissedCall()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 1
    .parameter "other"

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

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

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->hasMissedCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2912 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 1
    .parameter "other"

    .prologue
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132500(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132500(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132502(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132402(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132502(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    goto :goto_0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132402(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132502(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object p0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    .locals 2
    .parameter "value"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132402(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->access$132502(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object p0
.end method
