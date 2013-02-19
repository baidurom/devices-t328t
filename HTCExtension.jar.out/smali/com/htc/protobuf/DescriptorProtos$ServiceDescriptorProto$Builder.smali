.class public final Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5975
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5970
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6045
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6046
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6049
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 5978
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>()V

    .line 5979
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 5980
    return-object v0
.end method


# virtual methods
.method public addAllMethod(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 6259
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6260
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6262
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6263
    return-object p0
.end method

.method public addMethod(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6247
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6248
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6250
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6251
    return-object p0
.end method

.method public addMethod(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6233
    if-nez p1, :cond_0

    .line 6234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6236
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6237
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6239
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6240
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 6037
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6038
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6040
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 3

    .prologue
    .line 6057
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    if-nez v1, :cond_0

    .line 6058
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6061
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6062
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6065
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 6066
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 6067
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 5992
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_0

    .line 5993
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5996
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 5997
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMethod()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 6270
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6271
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 6182
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9302(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6183
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9402(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 6184
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 6330
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9502(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6331
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 6332
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 6005
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

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
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 6022
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6014
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(I)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 6207
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 6200
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    return v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6193
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6163
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 6287
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6156
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 6280
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 5984
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6030
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

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
    .line 5970
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5970
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

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
    .line 5970
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6109
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 6113
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6114
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6119
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6121
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 6122
    :goto_1
    return-object p0

    .line 6116
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6127
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    goto :goto_0

    .line 6131
    :sswitch_2
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    .line 6132
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6133
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->addMethod(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    goto :goto_0

    .line 6137
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    .line 6138
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    .line 6141
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6142
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    goto :goto_0

    .line 6114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6084
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6098
    :goto_0
    return-object p0

    .line 6085
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6086
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    .line 6088
    :cond_1
    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6089
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6090
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 6092
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6094
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6095
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    .line 6097
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6075
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_0

    .line 6076
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object p0

    .line 6079
    .end local p0
    :goto_0
    return-object p0

    .line 6078
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
    .line 5970
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5970
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

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
    .line 5970
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6315
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9600(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6317
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9600(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 6322
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9502(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6323
    return-object p0

    .line 6320
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    goto :goto_0
.end method

.method public setMethod(ILcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6225
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6226
    return-object p0
.end method

.method public setMethod(ILcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6214
    if-nez p2, :cond_0

    .line 6215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6217
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6218
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6170
    if-nez p1, :cond_0

    .line 6171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6173
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9302(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6174
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9402(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 6175
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6306
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9502(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6307
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 6308
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6294
    if-nez p1, :cond_0

    .line 6295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6297
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9502(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z

    .line 6298
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 6299
    return-object p0
.end method
