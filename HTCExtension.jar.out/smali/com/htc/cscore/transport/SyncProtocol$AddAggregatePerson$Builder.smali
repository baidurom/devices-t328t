.class public final Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2205
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2284
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2288
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 2213
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;-><init>()V

    .line 2214
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 2215
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2279
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 3

    .prologue
    .line 2296
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    if-nez v1, :cond_0

    .line 2297
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 2301
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 2302
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    if-nez v0, :cond_0

    .line 2232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2235
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 2236
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4102(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Z)Z

    .line 2423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 2424
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 2244
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

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
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 2261
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2253
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public hasPerson()Z
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2319
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2324
    :goto_0
    return-object p0

    .line 2320
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2321
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergePerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    .line 2323
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2335
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2339
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2340
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2345
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2347
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2348
    :goto_1
    return-object p0

    .line 2342
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2353
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    .line 2354
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->hasPerson()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2355
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 2357
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2358
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    goto :goto_0

    .line 2340
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1c2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2310
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    if-eqz v0, :cond_0

    .line 2311
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object p0

    .line 2314
    .end local p0
    :goto_0
    return-object p0

    .line 2313
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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2205
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2205
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4200(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4200(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 2414
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4102(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Z)Z

    .line 2415
    return-object p0

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    goto :goto_0
.end method

.method public setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4102(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Z)Z

    .line 2399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 2400
    return-object p0
.end method

.method public setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2386
    if-nez p1, :cond_0

    .line 2387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4102(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Z)Z

    .line 2390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 2391
    return-object p0
.end method
