.class public final Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12260
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12255
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23300()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12334
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12338
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 3

    .prologue
    .line 12263
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;-><init>()V

    .line 12264
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 12265
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 12326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12329
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 3

    .prologue
    .line 12346
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-nez v1, :cond_0

    .line 12347
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12350
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 12351
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 12352
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 12281
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-nez v0, :cond_0

    .line 12282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12285
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 12286
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 12472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 12473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 12474
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 12294
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 12311
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12303
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 12429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 12422
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 12273
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23600(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23600(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 12464
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 12465
    return-object p0

    .line 12462
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12369
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12374
    :goto_0
    return-object p0

    .line 12370
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12371
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    .line 12373
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12385
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 12389
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12390
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 12395
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12397
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 12398
    :goto_1
    return-object p0

    .line 12392
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 12403
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    .line 12404
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    .line 12407
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12408
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    goto :goto_0

    .line 12390
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12360
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-eqz v0, :cond_0

    .line 12361
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object p0

    .line 12364
    .end local p0
    :goto_0
    return-object p0

    .line 12363
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
    .line 12255
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12255
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 12255
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 12255
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12255
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 12255
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 12449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 12450
    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12436
    if-nez p1, :cond_0

    .line 12437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12439
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 12440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 12441
    return-object p0
.end method
