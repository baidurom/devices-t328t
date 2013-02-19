.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2513
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2508
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2591
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 3

    .prologue
    .line 2516
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;-><init>()V

    .line 2517
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .line 2518
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2582
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 3

    .prologue
    .line 2599
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    if-nez v1, :cond_0

    .line 2600
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .line 2604
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .line 2605
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    if-nez v0, :cond_0

    .line 2535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .line 2539
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2799
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 2800
    return-object p0
.end method

.method public clearLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4402(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2738
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 2739
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2

    .prologue
    .line 2547
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

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
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1

    .prologue
    .line 2564
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2556
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public hasKeepAlive()Z
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v0

    return v0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2622
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2630
    :goto_0
    return-object p0

    .line 2623
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2624
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeLoc(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    .line 2626
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2627
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeKeepAlive(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    .line 2629
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2645
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2646
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2651
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2653
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2654
    :goto_1
    return-object p0

    .line 2648
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2659
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    .line 2660
    .local v0, subBuilder:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->hasLoc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2661
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    .line 2663
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2664
    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->setLoc(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    goto :goto_0

    .line 2668
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    .line 2669
    .local v0, subBuilder:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->hasKeepAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2670
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    .line 2672
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2673
    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->setKeepAlive(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    goto :goto_0

    .line 2646
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2613
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    if-eqz v0, :cond_0

    .line 2614
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object p0

    .line 2617
    .end local p0
    :goto_0
    return-object p0

    .line 2616
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
    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2508
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

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
    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

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
    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2508
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

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
    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeKeepAlive(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4700(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4700(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 2790
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2791
    return-object p0

    .line 2788
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    goto :goto_0
.end method

.method public mergeLoc(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 2729
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4402(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2730
    return-object p0

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    goto :goto_0
.end method

.method public setKeepAlive(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2775
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 2776
    return-object p0
.end method

.method public setKeepAlive(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2762
    if-nez p1, :cond_0

    .line 2763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2766
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 2767
    return-object p0
.end method

.method public setLoc(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4402(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2714
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 2715
    return-object p0
.end method

.method public setLoc(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2701
    if-nez p1, :cond_0

    .line 2702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2704
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4402(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z

    .line 2705
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 2706
    return-object p0
.end method
