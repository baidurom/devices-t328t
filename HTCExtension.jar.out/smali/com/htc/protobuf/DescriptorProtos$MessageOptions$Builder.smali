.class public final Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8087
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8081
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12700()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8157
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8158
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8161
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 3

    .prologue
    .line 8090
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>()V

    .line 8091
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 8092
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 8398
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8399
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8401
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8402
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8386
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8387
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8389
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8390
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8372
    if-nez p1, :cond_0

    .line 8373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8375
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8376
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8378
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8379
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 8149
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8150
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8152
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 3

    .prologue
    .line 8169
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-nez v1, :cond_0

    .line 8170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8173
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 8174
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8177
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 8178
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 8179
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 8104
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    .line 8105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8108
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 8109
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessageSetWireFormat()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8287
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8288
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8289
    return-object p0
.end method

.method public clearNoStandardDescriptorAccessor()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8321
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8322
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8323
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 8409
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8410
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 8117
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 8134
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8126
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 8271
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 8305
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 8346
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 8339
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

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
    .line 8332
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 8264
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    return v0
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 8298
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 8096
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8081
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8142
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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
    .line 8081
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8081
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 8081
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8222
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 8226
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8227
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 8232
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8234
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 8235
    :goto_1
    return-object p0

    .line 8229
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 8240
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 8244
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 8248
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 8249
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 8250
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 8227
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1f3a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 8196
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8211
    :goto_0
    return-object p0

    .line 8197
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8198
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 8200
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8201
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 8203
    :cond_2
    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8204
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8205
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 8207
    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8209
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 8210
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8187
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    .line 8188
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    .line 8191
    .end local p0
    :goto_0
    return-object p0

    .line 8190
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
    .line 8081
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8081
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 8081
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8278
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8279
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8280
    return-object p0
.end method

.method public setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8312
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8313
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 8314
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 8364
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8365
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8353
    if-nez p2, :cond_0

    .line 8354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8356
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8357
    return-object p0
.end method
