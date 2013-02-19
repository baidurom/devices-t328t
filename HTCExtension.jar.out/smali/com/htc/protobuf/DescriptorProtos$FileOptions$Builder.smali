.class public final Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7379
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7373
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7449
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7450
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7453
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .prologue
    .line 7382
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    .line 7383
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 7384
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 7787
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7788
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7790
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7791
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7775
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7776
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7778
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7779
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7761
    if-nez p1, :cond_0

    .line 7762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7764
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7765
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7767
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7768
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7441
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7442
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7444
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 3

    .prologue
    .line 7461
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_0

    .line 7462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7465
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 7466
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7469
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 7470
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 7471
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7396
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    .line 7397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7400
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 7401
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearJavaMultipleFiles()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7673
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7674
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7675
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7639
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7640
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 7641
    return-object p0
.end method

.method public clearJavaPackage()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7602
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7603
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 7604
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7710
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7711
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 7712
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7798
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7799
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 7409
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7426
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7418
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 7657
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7620
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7583
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 7691
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 7735
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 7728
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7721
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 7650
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .prologue
    .line 7613
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .prologue
    .line 7576
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .prologue
    .line 7684
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7388
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7434
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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
    .line 7373
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7373
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 7373
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7520
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 7524
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 7525
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 7530
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7532
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 7533
    :goto_1
    return-object p0

    .line 7527
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 7538
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 7542
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 7546
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7547
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v4

    .line 7548
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v4, :cond_1

    .line 7549
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 7551
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 7556
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 7560
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    .line 7561
    .local v1, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 7562
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 7525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x1f3a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7488
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7509
    :goto_0
    return-object p0

    .line 7489
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7490
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 7492
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7493
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 7495
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7496
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 7498
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7499
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 7501
    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7502
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7503
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 7505
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7507
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 7508
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7479
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 7480
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    .line 7483
    .end local p0
    :goto_0
    return-object p0

    .line 7482
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

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
    .line 7373
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7373
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 7373
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7664
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7665
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7666
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7627
    if-nez p1, :cond_0

    .line 7628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7630
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7631
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 7632
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7590
    if-nez p1, :cond_0

    .line 7591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7593
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7594
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 7595
    return-object p0
.end method

.method public setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7698
    if-nez p1, :cond_0

    .line 7699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7701
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 7702
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 7703
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7753
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7754
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7742
    if-nez p2, :cond_0

    .line 7743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7745
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7746
    return-object p0
.end method
