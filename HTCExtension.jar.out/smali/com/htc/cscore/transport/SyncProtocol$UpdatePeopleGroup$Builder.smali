.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38136
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38131
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$72100()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38210
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38211
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 38214
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 3

    .prologue
    .line 38139
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;-><init>()V

    .line 38140
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 38141
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 38202
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38203
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 38205
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 3

    .prologue
    .line 38222
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    if-nez v1, :cond_0

    .line 38223
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38226
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 38227
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 38228
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 38157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    if-nez v0, :cond_0

    .line 38158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38161
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 38162
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 38348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72302(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Z)Z

    .line 38349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 38350
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 38170
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

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
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 38187
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 38179
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 38305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public hasPeopleGroup()Z
    .locals 1

    .prologue
    .line 38298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 38149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 38131
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 38195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 38245
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 38250
    :goto_0
    return-object p0

    .line 38246
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38247
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    .line 38249
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 38265
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 38266
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 38271
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38273
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 38274
    :goto_1
    return-object p0

    .line 38268
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 38279
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    .line 38280
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->hasPeopleGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 38283
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 38284
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    goto :goto_0

    .line 38266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x371a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 38236
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    if-eqz v0, :cond_0

    .line 38237
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object p0

    .line 38240
    .end local p0
    :goto_0
    return-object p0

    .line 38239
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
    .line 38131
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38131
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

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
    .line 38131
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

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
    .line 38131
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38131
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

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
    .line 38131
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72400(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 38335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72400(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 38340
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72302(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Z)Z

    .line 38341
    return-object p0

    .line 38338
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    goto :goto_0
.end method

.method public setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 38324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72302(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Z)Z

    .line 38325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 38326
    return-object p0
.end method

.method public setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38312
    if-nez p1, :cond_0

    .line 38313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38315
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72302(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Z)Z

    .line 38316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 38317
    return-object p0
.end method
