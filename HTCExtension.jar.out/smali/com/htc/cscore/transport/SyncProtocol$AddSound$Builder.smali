.class public final Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58228
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58223
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$111500()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58302
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58303
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 58306
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 3

    .prologue
    .line 58231
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;-><init>()V

    .line 58232
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 58233
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 58294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58295
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 58297
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 3

    .prologue
    .line 58314
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    if-nez v1, :cond_0

    .line 58315
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58318
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 58319
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 58320
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2

    .prologue
    .line 58249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    if-nez v0, :cond_0

    .line 58250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58253
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 58254
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2

    .prologue
    .line 58440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111702(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Z)Z

    .line 58441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58442
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2

    .prologue
    .line 58262
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

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
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 58279
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 58271
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 58397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 58390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 58241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 58223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 58287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 58337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 58342
    :goto_0
    return-object p0

    .line 58338
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58339
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeSound(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    .line 58341
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58353
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 58357
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 58358
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 58363
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58365
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 58366
    :goto_1
    return-object p0

    .line 58360
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 58371
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    .line 58372
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->hasSound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58373
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 58375
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 58376
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->setSound(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    goto :goto_0

    .line 58358
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xeea -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 58328
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    if-eqz v0, :cond_0

    .line 58329
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object p0

    .line 58332
    .end local p0
    :goto_0
    return-object p0

    .line 58331
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
    .line 58223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58223
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

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
    .line 58223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

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
    .line 58223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58223
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

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
    .line 58223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSound(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 58425
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111800(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 58427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111800(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58432
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111702(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Z)Z

    .line 58433
    return-object p0

    .line 58430
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    goto :goto_0
.end method

.method public setSound(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 58416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111702(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Z)Z

    .line 58417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58418
    return-object p0
.end method

.method public setSound(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 58404
    if-nez p1, :cond_0

    .line 58405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58407
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111702(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Z)Z

    .line 58408
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58409
    return-object p0
.end method
