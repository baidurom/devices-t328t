.class public final Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 937
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>()V

    .line 938
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 939
    return-object v0
.end method


# virtual methods
.method public addAllDependency(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1309
    return-object p0
.end method

.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1479
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1483
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1653
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1657
    return-object p0
.end method

.method public addAllMessageType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1392
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1396
    return-object p0
.end method

.method public addAllService(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1566
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1570
    return-object p0
.end method

.method public addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1290
    if-nez p1, :cond_0

    .line 1291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1453
    if-nez p1, :cond_0

    .line 1454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1627
    if-nez p1, :cond_0

    .line 1628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1366
    if-nez p1, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 3

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1024
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1028
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1029
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1032
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 1033
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1036
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 1037
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1040
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1041
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1042
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 956
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDependency()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1317
    return-object p0
.end method

.method public clearEnumType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1491
    return-object p0
.end method

.method public clearExtension()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1665
    return-object p0
.end method

.method public clearMessageType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1404
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1211
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1725
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1726
    return-object p0
.end method

.method public clearPackage()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1248
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    return-object p0
.end method

.method public clearService()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1578
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 981
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v0

    return v0
.end method

.method public getDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 973
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    return v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v0

    return v0
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
    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1115
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1116
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1121
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1123
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1124
    :goto_1
    return-object p0

    .line 1118
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1129
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1133
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1137
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1141
    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    .line 1142
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1143
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1147
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    .line 1148
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1149
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1153
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    .line 1154
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1155
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1159
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 1160
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1161
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 1165
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_8
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    .line 1166
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 1169
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1170
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto/16 :goto_0

    .line 1116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1059
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1100
    :goto_0
    return-object p0

    .line 1060
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 1063
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 1066
    :cond_2
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1073
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1074
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1076
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1078
    :cond_6
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1079
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1080
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1082
    :cond_7
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1084
    :cond_8
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1085
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1086
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1088
    :cond_9
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1090
    :cond_a
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1091
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1092
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1094
    :cond_b
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    :cond_c
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1097
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 1099
    :cond_d
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1050
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    .line 1051
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p0

    .line 1054
    .end local p0
    :goto_0
    return-object p0

    .line 1053
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1716
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1717
    return-object p0

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    goto :goto_0
.end method

.method public setDependency(ILjava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1279
    if-nez p2, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1283
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1446
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1434
    if-nez p2, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1438
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1620
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1608
    if-nez p2, :cond_0

    .line 1609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1612
    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1359
    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1347
    if-nez p2, :cond_0

    .line 1348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1351
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1198
    if-nez p1, :cond_0

    .line 1199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1202
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1701
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1702
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1688
    if-nez p1, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1692
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1693
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1235
    if-nez p1, :cond_0

    .line 1236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1239
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1240
    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1533
    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1521
    if-nez p2, :cond_0

    .line 1522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    return-object p0
.end method
