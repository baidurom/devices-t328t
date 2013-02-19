.class public final Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 1314
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;-><init>()V

    .line 1315
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 1316
    return-object v0
.end method


# virtual methods
.method public addAllPersons(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;"
        }
    .end annotation

    .prologue
    .line 1877
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPerson;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1881
    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1851
    if-nez p1, :cond_0

    .line 1852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1857
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 3

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v1, :cond_0

    .line 1398
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 1406
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 1407
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 1337
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1606
    return-object p0
.end method

.method public clearCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1667
    return-object p0
.end method

.method public clearDisplayName()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    .line 1704
    return-object p0
.end method

.method public clearFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1740
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    .line 1741
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1802
    return-object p0
.end method

.method public clearPersons()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1889
    return-object p0
.end method

.method public clearPersonsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1922
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1923
    return-object p0
.end method

.method public clearSendToVoiceMail()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1957
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    .line 1991
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1345
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 1362
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "index"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getPersonsCount()I
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsCount()I

    move-result v0

    return v0
.end method

.method public getPersonsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonsUpdated()Z
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public getSendToVoiceMail()Z
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasCustomRingtoneId()Z
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasFriendStatus()Z
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonsUpdated()Z
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasSendToVoiceMail()Z
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2100(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2100(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1596
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1597
    return-object p0

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2300(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2300(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1657
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1658
    return-object p0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1424
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1456
    :goto_0
    return-object p0

    .line 1425
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1428
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1431
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1432
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1434
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1435
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1437
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1438
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1440
    :cond_5
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1444
    :cond_6
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1446
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1447
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1449
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1450
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1452
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1453
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 1455
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 1471
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1472
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 1477
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1479
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1480
    :goto_1
    return-object p0

    .line 1474
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1485
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1489
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 1490
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasCustomRingtoneId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 1493
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1494
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1498
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1502
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v1

    .line 1503
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1504
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1508
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    .line 1509
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1510
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 1512
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1513
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1517
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1521
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 1522
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1523
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 1525
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1526
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1530
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1531
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v4

    .line 1532
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    if-nez v4, :cond_4

    .line 1533
    const/16 v5, 0x72f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 1535
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1540
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1472
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc50 -> :sswitch_1
        0xed2 -> :sswitch_2
        0x1088 -> :sswitch_3
        0x14ca -> :sswitch_4
        0x1eb2 -> :sswitch_5
        0x20fa -> :sswitch_6
        0x2892 -> :sswitch_7
        0x3978 -> :sswitch_8
        0x3a58 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1415
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    .line 1416
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object p0

    .line 1419
    .end local p0
    :goto_0
    return-object p0

    .line 1418
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
    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1792
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1793
    return-object p0

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1582
    return-object p0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1568
    if-nez p1, :cond_0

    .line 1569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1573
    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1643
    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1629
    if-nez p1, :cond_0

    .line 1630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1633
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1634
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1690
    if-nez p1, :cond_0

    .line 1691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1694
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    .line 1695
    return-object p0
.end method

.method public setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1727
    if-nez p1, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    .line 1732
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1778
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1764
    if-nez p1, :cond_0

    .line 1765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1769
    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1844
    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1832
    if-nez p2, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1836
    return-object p0
.end method

.method public setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1914
    return-object p0
.end method

.method public setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1948
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    .line 1982
    return-object p0
.end method
