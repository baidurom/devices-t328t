.class public final Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10422
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10416
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16300()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10492
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10493
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10496
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 3

    .prologue
    .line 10425
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>()V

    .line 10426
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 10427
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 10651
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10652
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10654
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10655
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 10639
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10640
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10642
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10643
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 10625
    if-nez p1, :cond_0

    .line 10626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10628
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10629
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10631
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10632
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 10484
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10485
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10487
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 3

    .prologue
    .line 10504
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v1, :cond_0

    .line 10505
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10508
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 10509
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10512
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 10513
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 10514
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .prologue
    .line 10439
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_0

    .line 10440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10443
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 10444
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .prologue
    .line 10662
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10663
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .prologue
    .line 10452
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 10469
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10461
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 10599
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 10592
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

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
    .line 10585
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 10431
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10416
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10477
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

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
    .line 10416
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10416
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 10416
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10551
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 10555
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10556
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 10561
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10563
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 10564
    :goto_1
    return-object p0

    .line 10558
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 10569
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 10570
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 10571
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    goto :goto_0

    .line 10556
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 10531
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10540
    :goto_0
    return-object p0

    .line 10532
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10533
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10534
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    .line 10536
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10538
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 10539
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10522
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    .line 10523
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p0

    .line 10526
    .end local p0
    :goto_0
    return-object p0

    .line 10525
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
    .line 10416
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10416
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 10416
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10617
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10618
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10606
    if-nez p2, :cond_0

    .line 10607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10609
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10610
    return-object p0
.end method
