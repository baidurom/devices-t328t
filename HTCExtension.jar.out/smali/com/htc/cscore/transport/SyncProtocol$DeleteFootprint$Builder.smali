.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11353
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11348
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21700()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 11431
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 3

    .prologue
    .line 11356
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;-><init>()V

    .line 11357
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 11358
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 11419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11422
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 3

    .prologue
    .line 11439
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    if-nez v1, :cond_0

    .line 11440
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11443
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 11444
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 11445
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2

    .prologue
    .line 11374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    if-nez v0, :cond_0

    .line 11375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11378
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 11379
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprintId()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2

    .prologue
    .line 11572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$21902(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11573
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11574
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 3

    .prologue
    .line 11606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22102(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11607
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22202(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;J)J

    .line 11608
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2

    .prologue
    .line 11387
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

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
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 11404
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11396
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 11529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 11590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFootprintId()Z
    .locals 1

    .prologue
    .line 11522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 11583
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 11366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22000(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11559
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22000(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11564
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$21902(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11565
    return-object p0

    .line 11562
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11462
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11470
    :goto_0
    return-object p0

    .line 11463
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11464
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    .line 11466
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11467
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    .line 11469
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11481
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 11485
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11486
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 11491
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11493
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 11494
    :goto_1
    return-object p0

    .line 11488
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 11499
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 11500
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->hasFootprintId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11501
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 11503
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 11504
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    goto :goto_0

    .line 11508
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    goto :goto_0

    .line 11486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2652 -> :sswitch_1
        0x3990 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11453
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    if-eqz v0, :cond_0

    .line 11454
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object p0

    .line 11457
    .end local p0
    :goto_0
    return-object p0

    .line 11456
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
    .line 11348
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11348
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

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
    .line 11348
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

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
    .line 11348
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11348
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

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
    .line 11348
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 11548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$21902(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11550
    return-object p0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11536
    if-nez p1, :cond_0

    .line 11537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11539
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$21902(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11541
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11597
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22102(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z

    .line 11598
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->access$22202(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;J)J

    .line 11599
    return-object p0
.end method
