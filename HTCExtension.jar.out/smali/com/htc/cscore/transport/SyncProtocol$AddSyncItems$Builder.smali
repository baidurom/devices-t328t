.class public final Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64718
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$125400(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64713
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$125500()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64792
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64793
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 64796
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 3

    .prologue
    .line 64721
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;-><init>()V

    .line 64722
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 64723
    return-object v0
.end method


# virtual methods
.method public addAllSyncList(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;"
        }
    .end annotation

    .prologue
    .line 64942
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64943
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64945
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 64946
    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 64930
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64931
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64933
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64934
    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 64920
    if-nez p1, :cond_0

    .line 64921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64923
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64926
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64927
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    .prologue
    .line 64784
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64785
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 64787
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 3

    .prologue
    .line 64804
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    if-nez v1, :cond_0

    .line 64805
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64808
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 64809
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64812
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 64813
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 64814
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2

    .prologue
    .line 64739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    if-nez v0, :cond_0

    .line 64740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64743
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 64744
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSyncList()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2

    .prologue
    .line 64953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64954
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2

    .prologue
    .line 64752
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

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
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    .prologue
    .line 64769
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 64761
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 64894
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getSyncListCount()I
    .locals 1

    .prologue
    .line 64887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getSyncListCount()I

    move-result v0

    return v0
.end method

.method public getSyncListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64880
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    .prologue
    .line 64731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 64713
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 64777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 64831
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 64839
    :goto_0
    return-object p0

    .line 64832
    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125702(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;Ljava/util/List;)Ljava/util/List;

    .line 64836
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64838
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64850
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 64854
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 64855
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 64860
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64862
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 64863
    :goto_1
    return-object p0

    .line 64857
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 64868
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    .line 64869
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 64870
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    goto :goto_0

    .line 64855
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x162 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 64822
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    if-eqz v0, :cond_0

    .line 64823
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object p0

    .line 64826
    .end local p0
    :goto_0
    return-object p0

    .line 64825
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
    .line 64713
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64713
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

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
    .line 64713
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

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
    .line 64713
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64713
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

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
    .line 64713
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 64912
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64913
    return-object p0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 64901
    if-nez p2, :cond_0

    .line 64902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64904
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->access$125700(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64905
    return-object p0
.end method
