.class public final Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;-><init>()V

    .line 215
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 216
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 298
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 299
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 237
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->access$502(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;Z)Z

    .line 387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->value_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->access$602(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 388
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

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
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 316
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 321
    :goto_0
    return-object p0

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 336
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 337
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 342
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 345
    :goto_1
    return-object p0

    .line 339
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 350
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    goto :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 307
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    if-eqz v0, :cond_0

    .line 308
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object p0

    .line 311
    .end local p0
    :goto_0
    return-object p0

    .line 310
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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->access$502(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;Z)Z

    .line 378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->value_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->access$602(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 379
    return-object p0
.end method
