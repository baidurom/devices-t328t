.class public final Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11966
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11961
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18400()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12036
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12037
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12040
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 11969
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    .line 11970
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 11971
    return-object v0
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    .prologue
    .line 12229
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12230
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12232
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12233
    return-object p0
.end method

.method public addName(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12217
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12218
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12220
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12221
    return-object p0
.end method

.method public addName(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12203
    if-nez p1, :cond_0

    .line 12204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12206
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12207
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12209
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12210
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 12028
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12029
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12031
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 3

    .prologue
    .line 12048
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_0

    .line 12049
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12052
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 12053
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12056
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 12057
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 12058
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 11983
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_0

    .line 11984
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11987
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 11988
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDoubleValue()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 12378
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19302(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12379
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19402(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;D)D

    .line 12380
    return-object p0
.end method

.method public clearIdentifierValue()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 12276
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18702(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12277
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18802(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)Ljava/lang/String;

    .line 12278
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 12240
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12241
    return-object p0
.end method

.method public clearNegativeIntValue()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 12344
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12345
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 12346
    return-object p0
.end method

.method public clearPositiveIntValue()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 12310
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12311
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 12312
    return-object p0
.end method

.method public clearStringValue()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 12415
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19502(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12416
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 12417
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 11996
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 12013
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12005
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 12362
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12257
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "index"

    .prologue
    .line 12177
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getName(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public getNameCount()I
    .locals 1

    .prologue
    .line 12170
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12163
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .prologue
    .line 12328
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .prologue
    .line 12294
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 12396
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .prologue
    .line 12355
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    return v0
.end method

.method public hasIdentifierValue()Z
    .locals 1

    .prologue
    .line 12250
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    return v0
.end method

.method public hasNegativeIntValue()Z
    .locals 1

    .prologue
    .line 12321
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    return v0
.end method

.method public hasPositiveIntValue()Z
    .locals 1

    .prologue
    .line 12287
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 12389
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 11975
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11961
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12021
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

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
    .line 11961
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11961
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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
    .line 11961
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12109
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 12113
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12114
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 12119
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12121
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 12122
    :goto_1
    return-object p0

    .line 12116
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 12127
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    .line 12128
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12129
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->addName(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12133
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setIdentifierValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12137
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12141
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12145
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12149
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 12114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 12075
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12098
    :goto_0
    return-object p0

    .line 12076
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12077
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12078
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 12080
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12082
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12083
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setIdentifierValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 12085
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12086
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 12088
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12089
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 12091
    :cond_5
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12092
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 12094
    :cond_6
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12095
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 12097
    :cond_7
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12066
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    .line 12067
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p0

    .line 12070
    .end local p0
    :goto_0
    return-object p0

    .line 12069
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
    .line 11961
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11961
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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
    .line 11961
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDoubleValue(D)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12369
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19302(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12370
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D
    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19402(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;D)D

    .line 12371
    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12264
    if-nez p1, :cond_0

    .line 12265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12267
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18702(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12268
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18802(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)Ljava/lang/String;

    .line 12269
    return-object p0
.end method

.method public setName(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12195
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12196
    return-object p0
.end method

.method public setName(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12184
    if-nez p2, :cond_0

    .line 12185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12187
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12188
    return-object p0
.end method

.method public setNegativeIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12335
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12336
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J
    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 12337
    return-object p0
.end method

.method public setPositiveIntValue(J)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12301
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$18902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12302
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J
    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 12303
    return-object p0
.end method

.method public setStringValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12403
    if-nez p1, :cond_0

    .line 12404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12406
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19502(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 12407
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->access$19602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 12408
    return-object p0
.end method
