.class public final Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$127800()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 3

    .prologue
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;-><init>()V

    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method


# virtual methods
.method public addAllMissedCallIds(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$UniqueId;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$UniqueId;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMissedCallIds(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMissedCallIds(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter "value"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCallIds()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128102(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128202(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

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
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCallIds(I)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getMissedCallIds(I)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCallIdsCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getMissedCallIdsCount()I

    move-result v0

    return v0
.end method

.method public getMissedCallIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter "other"

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->addMissedCallIds(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3990 -> :sswitch_1
        0x3e7a -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1
    .parameter "other"

    .prologue
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object p0

    .end local p0
    :goto_0
    return-object p0

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMissedCallIds(ILcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMissedCallIds(ILcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128102(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->access$128202(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;J)J

    return-object p0
.end method
