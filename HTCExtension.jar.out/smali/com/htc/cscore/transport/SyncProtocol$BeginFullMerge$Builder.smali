.class public final Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65173
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$126000(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 65168
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$126100()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 65247
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 65251
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 3

    .prologue
    .line 65176
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;-><init>()V

    .line 65177
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 65178
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    .prologue
    .line 65239
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65240
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 65242
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 3

    .prologue
    .line 65259
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    if-nez v1, :cond_0

    .line 65260
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65263
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 65264
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 65265
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2

    .prologue
    .line 65194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    if-nez v0, :cond_0

    .line 65195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65198
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 65199
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResyncId()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2

    .prologue
    .line 65385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126302(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Z)Z

    .line 65386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126402(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 65387
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2

    .prologue
    .line 65207
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

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
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    .prologue
    .line 65224
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 65216
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 65342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public hasResyncId()Z
    .locals 1

    .prologue
    .line 65335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    .prologue
    .line 65186
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 65168
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 65232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 65282
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 65287
    :goto_0
    return-object p0

    .line 65283
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65284
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    .line 65286
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65298
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 65302
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 65303
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 65308
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65310
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 65311
    :goto_1
    return-object p0

    .line 65305
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 65316
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 65317
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->hasResyncId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65318
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 65320
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 65321
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    goto :goto_0

    .line 65303
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3c22 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 65273
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    if-eqz v0, :cond_0

    .line 65274
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object p0

    .line 65277
    .end local p0
    :goto_0
    return-object p0

    .line 65276
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
    .line 65168
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65168
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

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
    .line 65168
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

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
    .line 65168
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65168
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

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
    .line 65168
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 65370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126400(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 65372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126400(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126402(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 65377
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126302(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Z)Z

    .line 65378
    return-object p0

    .line 65375
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126402(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 65361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126302(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Z)Z

    .line 65362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126402(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 65363
    return-object p0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 65349
    if-nez p1, :cond_0

    .line 65350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65352
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126302(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Z)Z

    .line 65353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->access$126402(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 65354
    return-object p0
.end method
