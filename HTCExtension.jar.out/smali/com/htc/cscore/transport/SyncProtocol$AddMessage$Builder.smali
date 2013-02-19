.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19149
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19144
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36200()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 19227
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 3

    .prologue
    .line 19152
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;-><init>()V

    .line 19153
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 19154
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 19215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 19218
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 3

    .prologue
    .line 19235
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    if-nez v1, :cond_0

    .line 19236
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19239
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 19240
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 19241
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2

    .prologue
    .line 19170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    if-nez v0, :cond_0

    .line 19171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19174
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 19175
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2

    .prologue
    .line 19361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36402(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Z)Z

    .line 19362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 19363
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2

    .prologue
    .line 19183
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

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
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 19200
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 19192
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 19318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 19311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 19162
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 19144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 19208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 19258
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 19263
    :goto_0
    return-object p0

    .line 19259
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19260
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    .line 19262
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19274
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 19278
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19279
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 19284
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19286
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 19287
    :goto_1
    return-object p0

    .line 19281
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 19292
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    .line 19293
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->hasMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19294
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 19296
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19297
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    goto :goto_0

    .line 19279
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1d5a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 19249
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    if-eqz v0, :cond_0

    .line 19250
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object p0

    .line 19253
    .end local p0
    :goto_0
    return-object p0

    .line 19252
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
    .line 19144
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19144
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

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
    .line 19144
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

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
    .line 19144
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19144
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

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
    .line 19144
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19346
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36500(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36500(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 19353
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36402(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Z)Z

    .line 19354
    return-object p0

    .line 19351
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    goto :goto_0
.end method

.method public setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19337
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36402(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Z)Z

    .line 19338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 19339
    return-object p0
.end method

.method public setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19325
    if-nez p1, :cond_0

    .line 19326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19328
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36402(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Z)Z

    .line 19329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 19330
    return-object p0
.end method
