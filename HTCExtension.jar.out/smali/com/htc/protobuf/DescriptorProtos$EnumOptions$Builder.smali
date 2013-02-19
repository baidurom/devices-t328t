.class public final Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9468
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9462
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15100()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9538
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9539
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9542
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 3

    .prologue
    .line 9471
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>()V

    .line 9472
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 9473
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 9697
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9698
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9700
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9701
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9685
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9686
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9688
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9689
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9671
    if-nez p1, :cond_0

    .line 9672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9674
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9675
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9677
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9678
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 9530
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9531
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9533
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 3

    .prologue
    .line 9550
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    if-nez v1, :cond_0

    .line 9551
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9554
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 9555
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9558
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 9559
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 9560
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .prologue
    .line 9485
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    .line 9486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9489
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 9490
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .prologue
    .line 9708
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9709
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .prologue
    .line 9498
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

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
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 9515
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9507
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 9645
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 9638
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionCount()I

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
    .line 9631
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 9477
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 9462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9523
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

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
    .line 9462
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9462
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

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
    .line 9462
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9597
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 9601
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9602
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 9607
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9609
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 9610
    :goto_1
    return-object p0

    .line 9604
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 9615
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 9616
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 9617
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    goto :goto_0

    .line 9602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9577
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 9586
    :goto_0
    return-object p0

    .line 9578
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9579
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9580
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 9582
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9584
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 9585
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 9568
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 9569
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p0

    .line 9572
    .end local p0
    :goto_0
    return-object p0

    .line 9571
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
    .line 9462
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9462
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

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
    .line 9462
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9663
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9664
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9652
    if-nez p2, :cond_0

    .line 9653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9655
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9656
    return-object p0
.end method
