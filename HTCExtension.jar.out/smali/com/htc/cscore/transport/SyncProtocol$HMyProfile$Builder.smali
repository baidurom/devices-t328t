.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22804
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22799
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 22882
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    .prologue
    .line 22807
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;-><init>()V

    .line 22808
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 22809
    return-object v0
.end method


# virtual methods
.method public addAllMyProfileAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 23523
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23526
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23527
    return-object p0
.end method

.method public addAllMyProfileEmailAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 23644
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23645
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23647
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23648
    return-object p0
.end method

.method public addAllMyProfileEvents(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 23765
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23766
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23768
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23769
    return-object p0
.end method

.method public addAllMyProfileInstantMessagingIDs(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 23947
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23950
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23951
    return-object p0
.end method

.method public addAllMyProfileNotes(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 24068
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24071
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24072
    return-object p0
.end method

.method public addAllMyProfileOrganizations(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 24189
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24190
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24192
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24193
    return-object p0
.end method

.method public addAllMyProfilePhoneNumbers(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 24310
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24313
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24314
    return-object p0
.end method

.method public addAllMyProfileWebSites(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 24431
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24432
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24434
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24435
    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23514
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23515
    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23497
    if-nez p1, :cond_0

    .line 23498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23500
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23501
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23503
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23504
    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23632
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23633
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23635
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23636
    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23618
    if-nez p1, :cond_0

    .line 23619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23621
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23624
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23625
    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23753
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23756
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23757
    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23739
    if-nez p1, :cond_0

    .line 23740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23742
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23743
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23745
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23746
    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23938
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23939
    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23921
    if-nez p1, :cond_0

    .line 23922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23924
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23925
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23927
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23928
    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24056
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24059
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24060
    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24042
    if-nez p1, :cond_0

    .line 24043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24045
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24048
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24049
    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24180
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24181
    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24163
    if-nez p1, :cond_0

    .line 24164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24166
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24169
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24170
    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24299
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24301
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24302
    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24284
    if-nez p1, :cond_0

    .line 24285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24287
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24288
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24290
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24291
    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24422
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24423
    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24405
    if-nez p1, :cond_0

    .line 24406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24408
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24411
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24412
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 22870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 22873
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 3

    .prologue
    .line 22890
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v1, :cond_0

    .line 22891
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22894
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 22895
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22898
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 22899
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22902
    :cond_2
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 22903
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22906
    :cond_3
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 22907
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22910
    :cond_4
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 22911
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22914
    :cond_5
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_6

    .line 22915
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22918
    :cond_6
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_7

    .line 22919
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22922
    :cond_7
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_8

    .line 22923
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22926
    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 22927
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 22928
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 22825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v0, :cond_0

    .line 22826
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22829
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 22830
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFamilyName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23239
    return-object p0
.end method

.method public clearFirstName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23276
    return-object p0
.end method

.method public clearGivenName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23313
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23374
    return-object p0
.end method

.method public clearLastName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23411
    return-object p0
.end method

.method public clearMiddleName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23446
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23447
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23448
    return-object p0
.end method

.method public clearMyProfileAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23535
    return-object p0
.end method

.method public clearMyProfileAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23569
    return-object p0
.end method

.method public clearMyProfileEmailAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23655
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23656
    return-object p0
.end method

.method public clearMyProfileEmailAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23688
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23689
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23690
    return-object p0
.end method

.method public clearMyProfileEvents()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23776
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23777
    return-object p0
.end method

.method public clearMyProfileEventsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23811
    return-object p0
.end method

.method public clearMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 23872
    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDs()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 23958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23959
    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23993
    return-object p0
.end method

.method public clearMyProfileNotes()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 24079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24080
    return-object p0
.end method

.method public clearMyProfileNotesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24114
    return-object p0
.end method

.method public clearMyProfileOrganizations()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 24200
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24201
    return-object p0
.end method

.method public clearMyProfileOrganizationsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24234
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24235
    return-object p0
.end method

.method public clearMyProfilePhoneNumbers()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 24321
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24322
    return-object p0
.end method

.method public clearMyProfilePhoneNumbersUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24354
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24356
    return-object p0
.end method

.method public clearMyProfileWebSites()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 24442
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 24443
    return-object p0
.end method

.method public clearMyProfileWebSitesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24477
    return-object p0
.end method

.method public clearNameSuffix()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 24512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 24514
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    .prologue
    .line 24546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    .line 24548
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 22838
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 22855
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 22847
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23255
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 23329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 23471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddressesCount()I
    .locals 1

    .prologue
    .line 23464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddressesUpdated()Z
    .locals 1

    .prologue
    .line 23551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 23592
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEmailAddressesCount()I
    .locals 1

    .prologue
    .line 23585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 23672
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 23713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEventsCount()I
    .locals 1

    .prologue
    .line 23706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEventsUpdated()Z
    .locals 1

    .prologue
    .line 23793
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 23827
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "index"

    .prologue
    .line 23895
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsCount()I
    .locals 1

    .prologue
    .line 23888
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileInstantMessagingIDsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    .prologue
    .line 23975
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "index"

    .prologue
    .line 24016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileNotesCount()I
    .locals 1

    .prologue
    .line 24009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileNotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileNotesUpdated()Z
    .locals 1

    .prologue
    .line 24096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "index"

    .prologue
    .line 24137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileOrganizationsCount()I
    .locals 1

    .prologue
    .line 24130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24123
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileOrganizationsUpdated()Z
    .locals 1

    .prologue
    .line 24217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 24258
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfilePhoneNumbersCount()I
    .locals 1

    .prologue
    .line 24251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersCount()I

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfilePhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 24338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "index"

    .prologue
    .line 24379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileWebSitesCount()I
    .locals 1

    .prologue
    .line 24372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileWebSitesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileWebSitesUpdated()Z
    .locals 1

    .prologue
    .line 24459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public getNameSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24493
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 24530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFamilyName()Z
    .locals 1

    .prologue
    .line 23211
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 23248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    .prologue
    .line 23285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 23322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 23383
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    return v0
.end method

.method public hasMiddleName()Z
    .locals 1

    .prologue
    .line 23420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileAddressesUpdated()Z
    .locals 1

    .prologue
    .line 23544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 23665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEventsUpdated()Z
    .locals 1

    .prologue
    .line 23786
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileImage()Z
    .locals 1

    .prologue
    .line 23820
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    .prologue
    .line 23968
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileNotesUpdated()Z
    .locals 1

    .prologue
    .line 24089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileOrganizationsUpdated()Z
    .locals 1

    .prologue
    .line 24210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfilePhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 24331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileWebSitesUpdated()Z
    .locals 1

    .prologue
    .line 24452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    .prologue
    .line 24486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 24523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 22817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 22799
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 22863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 22945
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 23046
    :goto_0
    return-object p0

    .line 22946
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22947
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22949
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22950
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22952
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22953
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22955
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22956
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22958
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22959
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22961
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22962
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22964
    :cond_6
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22965
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22968
    :cond_7
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22970
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22971
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22973
    :cond_9
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 22974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22975
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22977
    :cond_a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22979
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22980
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22982
    :cond_c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 22983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22986
    :cond_d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22988
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22989
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22991
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 22992
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 22994
    :cond_10
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 22995
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 22998
    :cond_11
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23000
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 23001
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23003
    :cond_13
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 23004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23007
    :cond_14
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23009
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 23010
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23012
    :cond_16
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 23013
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 23014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23016
    :cond_17
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23018
    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 23019
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23021
    :cond_19
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 23022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 23023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23025
    :cond_1a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23027
    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23028
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23030
    :cond_1c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 23031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 23032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 23034
    :cond_1d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23036
    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 23037
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23039
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 23040
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23042
    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23043
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 23045
    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23057
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 23061
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23062
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 23067
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23069
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 23070
    :goto_1
    return-object p0

    .line 23064
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 23075
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    .line 23076
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23077
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23081
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    .line 23082
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23083
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23087
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    .line 23088
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23089
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23093
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23097
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    .line 23098
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23099
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23103
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23107
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23111
    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    .line 23112
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23113
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 23117
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23121
    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    .line 23122
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23123
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23127
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23131
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23135
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23139
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23143
    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23147
    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23151
    :sswitch_11
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23155
    :sswitch_12
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 23156
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23157
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 23159
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23160
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23164
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23168
    :sswitch_14
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    .line 23169
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23170
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23174
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    :sswitch_15
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    .line 23175
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasMyProfileImage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 23178
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23179
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23183
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    :sswitch_16
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23187
    :sswitch_17
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23191
    :sswitch_18
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23195
    :sswitch_19
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    .line 23196
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23197
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 23062
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15a -> :sswitch_1
        0x17a -> :sswitch_2
        0x30a -> :sswitch_3
        0x782 -> :sswitch_4
        0x8b2 -> :sswitch_5
        0x8e0 -> :sswitch_6
        0xc60 -> :sswitch_7
        0x102a -> :sswitch_8
        0x1088 -> :sswitch_9
        0x11c2 -> :sswitch_a
        0x1302 -> :sswitch_b
        0x14a2 -> :sswitch_c
        0x14b2 -> :sswitch_d
        0x1cd0 -> :sswitch_e
        0x2072 -> :sswitch_f
        0x27b8 -> :sswitch_10
        0x2858 -> :sswitch_11
        0x2892 -> :sswitch_12
        0x2b18 -> :sswitch_13
        0x2f1a -> :sswitch_14
        0x2f92 -> :sswitch_15
        0x31b0 -> :sswitch_16
        0x38da -> :sswitch_17
        0x3bb8 -> :sswitch_18
        0x3df2 -> :sswitch_19
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 22936
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    .line 22937
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object p0

    .line 22940
    .end local p0
    :goto_0
    return-object p0

    .line 22939
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
    .line 22799
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22799
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 22799
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 22799
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22799
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 22799
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23364
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23365
    return-object p0

    .line 23362
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23857
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 23862
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23863
    return-object p0

    .line 23860
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    goto :goto_0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23225
    if-nez p1, :cond_0

    .line 23226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23228
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23230
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23262
    if-nez p1, :cond_0

    .line 23263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23265
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23267
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23299
    if-nez p1, :cond_0

    .line 23300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23302
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23303
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23304
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23350
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23336
    if-nez p1, :cond_0

    .line 23337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23339
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23341
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23397
    if-nez p1, :cond_0

    .line 23398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23400
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23402
    return-object p0
.end method

.method public setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23434
    if-nez p1, :cond_0

    .line 23435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23437
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 23439
    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23490
    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23478
    if-nez p2, :cond_0

    .line 23479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23481
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23482
    return-object p0
.end method

.method public setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23559
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23560
    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23610
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23611
    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23599
    if-nez p2, :cond_0

    .line 23600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23602
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23603
    return-object p0
.end method

.method public setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23681
    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23732
    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23720
    if-nez p2, :cond_0

    .line 23721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23723
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23724
    return-object p0
.end method

.method public setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23802
    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23846
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23847
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 23848
    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23834
    if-nez p1, :cond_0

    .line 23835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23837
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 23839
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23914
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23902
    if-nez p2, :cond_0

    .line 23903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23905
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23906
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 23984
    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24035
    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24023
    if-nez p2, :cond_0

    .line 24024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24026
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24027
    return-object p0
.end method

.method public setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24103
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24105
    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24156
    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24144
    if-nez p2, :cond_0

    .line 24145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24147
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24148
    return-object p0
.end method

.method public setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24225
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24226
    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24277
    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24265
    if-nez p2, :cond_0

    .line 24266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24268
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24269
    return-object p0
.end method

.method public setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24346
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24347
    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24398
    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24386
    if-nez p2, :cond_0

    .line 24387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24389
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24390
    return-object p0
.end method

.method public setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24466
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24467
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24468
    return-object p0
.end method

.method public setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24500
    if-nez p1, :cond_0

    .line 24501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24503
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24504
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 24505
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24537
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 24538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    .line 24539
    return-object p0
.end method
