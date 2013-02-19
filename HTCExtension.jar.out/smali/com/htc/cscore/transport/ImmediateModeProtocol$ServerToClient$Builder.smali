.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 3

    .prologue
    .line 474
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;-><init>()V

    .line 475
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 476
    return-object v0
.end method


# virtual methods
.method public addAllQueuesWithData(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;)",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 865
    return-object p0
.end method

.method public addQueuesWithData(Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 3

    .prologue
    .line 557
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-nez v1, :cond_0

    .line 558
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 562
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    iget-object v2, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 566
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 567
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 497
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMaximumInterval()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1002(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 770
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1102(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 771
    return-object p0
.end method

.method public clearMinimumInterval()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 735
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$802(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 736
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$902(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 737
    return-object p0
.end method

.method public clearQueuesWithData()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 873
    return-object p0
.end method

.method public clearServerTime()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1202(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 804
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1302(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;J)J

    .line 805
    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 702
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 703
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 505
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumInterval()I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v0

    return v0
.end method

.method public getMinimumInterval()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v0

    return v0
.end method

.method public getQueuesWithData(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1
    .parameter "index"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithData(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getQueuesWithDataCount()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithDataCount()I

    move-result v0

    return v0
.end method

.method public getQueuesWithDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hasMaximumInterval()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v0

    return v0
.end method

.method public hasMinimumInterval()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v0

    return v0
.end method

.method public hasServerTime()Z
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 584
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 604
    :goto_0
    return-object p0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 591
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 594
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 595
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 597
    :cond_4
    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 598
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 603
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 619
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 620
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 625
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 627
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 628
    :goto_1
    return-object p0

    .line 622
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 633
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 634
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v3

    .line 635
    .local v3, value:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    if-nez v3, :cond_1

    .line 636
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 638
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 643
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 647
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 651
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 655
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 656
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    move-result-object v3

    .line 657
    .local v3, value:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    if-nez v3, :cond_2

    .line 658
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->addQueuesWithData(Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 575
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-eqz v0, :cond_0

    .line 576
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object p0

    .line 579
    .end local p0
    :goto_0
    return-object p0

    .line 578
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
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1002(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 761
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1102(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 762
    return-object p0
.end method

.method public setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$802(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 727
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$902(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 728
    return-object p0
.end method

.method public setQueuesWithData(ILcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 835
    if-nez p2, :cond_0

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 839
    return-object p0
.end method

.method public setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1202(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 795
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1302(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;J)J

    .line 796
    return-object p0
.end method

.method public setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 693
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 694
    return-object p0
.end method
