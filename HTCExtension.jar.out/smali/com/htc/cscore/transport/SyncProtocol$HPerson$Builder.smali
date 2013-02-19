.class public final Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39208
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39203
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$72800()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39282
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 39286
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 3

    .prologue
    .line 39211
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;-><init>()V

    .line 39212
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .line 39213
    return-object v0
.end method


# virtual methods
.method public addAllPersonAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    .prologue
    .line 39914
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39915
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39917
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 39918
    return-object p0
.end method

.method public addAllPersonEmailAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    .prologue
    .line 40035
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40036
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40038
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40039
    return-object p0
.end method

.method public addAllPersonPhoneNumbers(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    .prologue
    .line 40217
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40220
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40221
    return-object p0
.end method

.method public addAllPersonSettings(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    .prologue
    .line 40338
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40339
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40341
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40342
    return-object p0
.end method

.method public addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39903
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39905
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39906
    return-object p0
.end method

.method public addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39888
    if-nez p1, :cond_0

    .line 39889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39891
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39894
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39895
    return-object p0
.end method

.method public addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 40023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40024
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40026
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40027
    return-object p0
.end method

.method public addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40009
    if-nez p1, :cond_0

    .line 40010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40012
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40013
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40015
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40016
    return-object p0
.end method

.method public addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 40205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40206
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40208
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40209
    return-object p0
.end method

.method public addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40191
    if-nez p1, :cond_0

    .line 40192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40194
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40197
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40198
    return-object p0
.end method

.method public addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 40326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40329
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40330
    return-object p0
.end method

.method public addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40312
    if-nez p1, :cond_0

    .line 40313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40315
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40318
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40319
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    .prologue
    .line 39274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 39277
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 3

    .prologue
    .line 39294
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-nez v1, :cond_0

    .line 39295
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39298
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 39299
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39302
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 39303
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39306
    :cond_2
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 39307
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39310
    :cond_3
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 39311
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39314
    :cond_4
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .line 39315
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .line 39316
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-nez v0, :cond_0

    .line 39230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39233
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .line 39234
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 39569
    return-object p0
.end method

.method public clearAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39628
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39629
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39630
    return-object p0
.end method

.method public clearCompanyName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39667
    return-object p0
.end method

.method public clearFirstName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39702
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39704
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39765
    return-object p0
.end method

.method public clearLastName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39802
    return-object p0
.end method

.method public clearNotes()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39837
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39839
    return-object p0
.end method

.method public clearPersonAddresses()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39925
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39926
    return-object p0
.end method

.method public clearPersonAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39960
    return-object p0
.end method

.method public clearPersonEmailAddresses()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 40046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40047
    return-object p0
.end method

.method public clearPersonEmailAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40081
    return-object p0
.end method

.method public clearPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 40140
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40141
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 40142
    return-object p0
.end method

.method public clearPersonPhoneNumbers()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 40228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40229
    return-object p0
.end method

.method public clearPersonPhoneNumbersUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40262
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40263
    return-object p0
.end method

.method public clearPersonSettings()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 40349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 40350
    return-object p0
.end method

.method public clearPersonSettingsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40382
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40383
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40384
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 3

    .prologue
    .line 40416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;J)J

    .line 40418
    return-object p0
.end method

.method public clearTitle()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 40453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 40455
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    .prologue
    .line 39242
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    .prologue
    .line 39548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 39585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39646
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    .prologue
    .line 39259
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 39251
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 39720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39781
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 39862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddressesCount()I
    .locals 1

    .prologue
    .line 39855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesCount()I

    move-result v0

    return v0
.end method

.method public getPersonAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39848
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddressesUpdated()Z
    .locals 1

    .prologue
    .line 39942
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 39983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPersonEmailAddressesCount()I
    .locals 1

    .prologue
    .line 39976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesCount()I

    move-result v0

    return v0
.end method

.method public getPersonEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 40063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 40097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 40165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbersCount()I
    .locals 1

    .prologue
    .line 40158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersCount()I

    move-result v0

    return v0
.end method

.method public getPersonPhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 40245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonSettings(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "index"

    .prologue
    .line 40286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettings(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPersonSettingsCount()I
    .locals 1

    .prologue
    .line 40279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsCount()I

    move-result v0

    return v0
.end method

.method public getPersonSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40272
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonSettingsUpdated()Z
    .locals 1

    .prologue
    .line 40366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 40400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 39541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method public hasAggregatedPersonId()Z
    .locals 1

    .prologue
    .line 39578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    return v0
.end method

.method public hasCompanyName()Z
    .locals 1

    .prologue
    .line 39639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v0

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 39676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 39713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 39774
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v0

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    .prologue
    .line 39811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v0

    return v0
.end method

.method public hasPersonAddressesUpdated()Z
    .locals 1

    .prologue
    .line 39935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 40056
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 40090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    return v0
.end method

.method public hasPersonPhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 40238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonSettingsUpdated()Z
    .locals 1

    .prologue
    .line 40359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 40393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 40427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    .prologue
    .line 39221
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 39203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 39267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39613
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73700(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39615
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73700(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39620
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39621
    return-object p0

    .line 39618
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 39333
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39401
    :goto_0
    return-object p0

    .line 39334
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39335
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39337
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39338
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39340
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39341
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39343
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39344
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39346
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39347
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39349
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39350
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39352
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39353
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39355
    :cond_7
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 39356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39359
    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39361
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39362
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39364
    :cond_a
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 39365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39368
    :cond_b
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39370
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39371
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39373
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39374
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39376
    :cond_e
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 39377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39380
    :cond_f
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39382
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39383
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39385
    :cond_11
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 39386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 39387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    .line 39389
    :cond_12
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39391
    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 39392
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39394
    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 39395
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39397
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 39398
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    .line 39400
    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39412
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 39416
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 39417
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 39422
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39424
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 39425
    :goto_1
    return-object p0

    .line 39419
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 39430
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 39431
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v4

    .line 39432
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    if-nez v4, :cond_1

    .line 39433
    const/16 v5, 0x8f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 39435
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39440
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v1

    .line 39441
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39442
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39446
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v1

    .line 39447
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39448
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39452
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    .line 39453
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasPersonImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39454
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 39456
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39457
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39461
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39465
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    .line 39469
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39473
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39477
    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v1

    .line 39478
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39479
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39483
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39487
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39491
    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 39492
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 39493
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 39495
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39496
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39500
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v1

    .line 39501
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39502
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39506
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39510
    :sswitch_f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 39511
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasAggregatedPersonId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39512
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 39514
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39515
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39519
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39523
    :sswitch_11
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39527
    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    .line 39417
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x478 -> :sswitch_1
        0x6d2 -> :sswitch_2
        0x87a -> :sswitch_3
        0xe6a -> :sswitch_4
        0x1088 -> :sswitch_5
        0x1420 -> :sswitch_6
        0x14a2 -> :sswitch_7
        0x14b2 -> :sswitch_8
        0x229a -> :sswitch_9
        0x23f2 -> :sswitch_a
        0x2472 -> :sswitch_b
        0x2892 -> :sswitch_c
        0x2b02 -> :sswitch_d
        0x2c52 -> :sswitch_e
        0x2cea -> :sswitch_f
        0x2d60 -> :sswitch_10
        0x37e0 -> :sswitch_11
        0x3a00 -> :sswitch_12
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 39324
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-eqz v0, :cond_0

    .line 39325
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object p0

    .line 39328
    .end local p0
    :goto_0
    return-object p0

    .line 39327
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
    .line 39203
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39203
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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
    .line 39203
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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
    .line 39203
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39203
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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
    .line 39203
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39748
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39755
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39756
    return-object p0

    .line 39753
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 40127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 40132
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40133
    return-object p0

    .line 40130
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    goto :goto_0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39555
    if-nez p1, :cond_0

    .line 39556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39558
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39559
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 39560
    return-object p0
.end method

.method public setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39604
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39606
    return-object p0
.end method

.method public setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39592
    if-nez p1, :cond_0

    .line 39593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39595
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39596
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39597
    return-object p0
.end method

.method public setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39653
    if-nez p1, :cond_0

    .line 39654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39656
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39657
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39658
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39690
    if-nez p1, :cond_0

    .line 39691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39693
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39694
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39695
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39740
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39741
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39727
    if-nez p1, :cond_0

    .line 39728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39730
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39732
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39788
    if-nez p1, :cond_0

    .line 39789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39791
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39792
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39793
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39825
    if-nez p1, :cond_0

    .line 39826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39828
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39829
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 39830
    return-object p0
.end method

.method public setPersonAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39880
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39881
    return-object p0
.end method

.method public setPersonAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39869
    if-nez p2, :cond_0

    .line 39870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39872
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39873
    return-object p0
.end method

.method public setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39949
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 39951
    return-object p0
.end method

.method public setPersonEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40001
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40002
    return-object p0
.end method

.method public setPersonEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39990
    if-nez p2, :cond_0

    .line 39991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39993
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39994
    return-object p0
.end method

.method public setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40071
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40072
    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 40116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 40118
    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40104
    if-nez p1, :cond_0

    .line 40105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40107
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 40109
    return-object p0
.end method

.method public setPersonPhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40184
    return-object p0
.end method

.method public setPersonPhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40172
    if-nez p2, :cond_0

    .line 40173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40175
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40176
    return-object p0
.end method

.method public setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40254
    return-object p0
.end method

.method public setPersonSettings(ILcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40305
    return-object p0
.end method

.method public setPersonSettings(ILcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40293
    if-nez p2, :cond_0

    .line 40294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40296
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40297
    return-object p0
.end method

.method public setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40375
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40408
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;J)J

    .line 40409
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 40441
    if-nez p1, :cond_0

    .line 40442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40444
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    .line 40445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    .line 40446
    return-object p0
.end method
