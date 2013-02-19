.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17971
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17966
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33100()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18045
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 18049
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 17974
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;-><init>()V

    .line 17975
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 17976
    return-object v0
.end method


# virtual methods
.method public addAllMessageAttachments(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 18496
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18497
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18499
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18500
    return-object p0
.end method

.method public addAllMessageRecipients(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 18617
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18618
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18620
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18621
    return-object p0
.end method

.method public addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18484
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18487
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18488
    return-object p0
.end method

.method public addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18470
    if-nez p1, :cond_0

    .line 18471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18473
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18474
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18476
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18477
    return-object p0
.end method

.method public addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18608
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18609
    return-object p0
.end method

.method public addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18591
    if-nez p1, :cond_0

    .line 18592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18594
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18595
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18597
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18598
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 18037
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18038
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 18040
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 3

    .prologue
    .line 18057
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-nez v1, :cond_0

    .line 18058
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18061
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 18062
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18065
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 18066
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18069
    :cond_2
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 18070
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 18071
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 17992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-nez v0, :cond_0

    .line 17993
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17996
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 17997
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBody()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 18292
    return-object p0
.end method

.method public clearCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 18324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 18326
    return-object p0
.end method

.method public clearHasViewed()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18360
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18421
    return-object p0
.end method

.method public clearMessageAttachments()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18507
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18508
    return-object p0
.end method

.method public clearMessageAttachmentsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18542
    return-object p0
.end method

.method public clearMessageRecipients()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18628
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18629
    return-object p0
.end method

.method public clearMessageRecipientsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18661
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18663
    return-object p0
.end method

.method public clearMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18698
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 18700
    return-object p0
.end method

.method public clearPudData()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 18761
    return-object p0
.end method

.method public clearStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18797
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 18798
    return-object p0
.end method

.method public clearSubject()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 18835
    return-object p0
.end method

.method public clearThreadId()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18894
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18895
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18896
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 18928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18929
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 18930
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 18005
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 18308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 18022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHasViewed()Z
    .locals 1

    .prologue
    .line 18342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v0

    return v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18376
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachments(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 18444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachments(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachmentsCount()I
    .locals 1

    .prologue
    .line 18437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsCount()I

    move-result v0

    return v0
.end method

.method public getMessageAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachmentsUpdated()Z
    .locals 1

    .prologue
    .line 18524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMessageRecipients(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1
    .parameter "index"

    .prologue
    .line 18565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipients(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public getMessageRecipientsCount()I
    .locals 1

    .prologue
    .line 18558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsCount()I

    move-result v0

    return v0
.end method

.method public getMessageRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageRecipientsUpdated()Z
    .locals 1

    .prologue
    .line 18645
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1

    .prologue
    .line 18679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v0

    return-object v0
.end method

.method public getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 18716
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1

    .prologue
    .line 18777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18814
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18851
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 18912
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 18264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 18301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasHasViewed()Z
    .locals 1

    .prologue
    .line 18335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 18369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessageAttachmentsUpdated()Z
    .locals 1

    .prologue
    .line 18517
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMessageRecipientsUpdated()Z
    .locals 1

    .prologue
    .line 18638
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 18672
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public hasPudData()Z
    .locals 1

    .prologue
    .line 18709
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 18770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 18807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v0

    return v0
.end method

.method public hasThreadId()Z
    .locals 1

    .prologue
    .line 18844
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 18905
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 17984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 17966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 18030
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 18088
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 18138
    :goto_0
    return-object p0

    .line 18089
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18090
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18092
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18093
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18095
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18096
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18098
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18099
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18101
    :cond_4
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18103
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18105
    :cond_5
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18107
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18108
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18110
    :cond_7
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 18114
    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18116
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18117
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18119
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18120
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18122
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18123
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergePudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18125
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18126
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18128
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18129
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18131
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18132
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18134
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 18135
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 18137
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18149
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 18153
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 18154
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 18159
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 18161
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 18162
    :goto_1
    return-object p0

    .line 18156
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 18167
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 18168
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v4

    .line 18169
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    if-nez v4, :cond_1

    .line 18170
    const/16 v5, 0x16f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 18172
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18177
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18181
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18185
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18189
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18193
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v1

    .line 18194
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18195
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18199
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    .line 18200
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasPudData()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18201
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 18203
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18204
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 18208
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18212
    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 18213
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 18216
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18217
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18221
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 18222
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasThreadId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 18225
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18226
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18230
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v1

    .line 18231
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18232
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18236
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18240
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 18241
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v4

    .line 18242
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    if-nez v4, :cond_5

    .line 18243
    const/16 v5, 0x692

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 18245
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18250
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 18154
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb78 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1362 -> :sswitch_3
        0x15b0 -> :sswitch_4
        0x1ce8 -> :sswitch_5
        0x1e62 -> :sswitch_6
        0x202a -> :sswitch_7
        0x25a0 -> :sswitch_8
        0x2892 -> :sswitch_9
        0x2bd2 -> :sswitch_a
        0x2c7a -> :sswitch_b
        0x3158 -> :sswitch_c
        0x3490 -> :sswitch_d
        0x3b42 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 18079
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-eqz v0, :cond_0

    .line 18080
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object p0

    .line 18083
    .end local p0
    :goto_0
    return-object p0

    .line 18082
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
    .line 17966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17966
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 17966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 17966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17966
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 17966
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18404
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34200(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34200(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18411
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18412
    return-object p0

    .line 18409
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35000(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18746
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35000(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 18751
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18752
    return-object p0

    .line 18749
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    goto :goto_0
.end method

.method public mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35600(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35600(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18886
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18887
    return-object p0

    .line 18884
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18278
    if-nez p1, :cond_0

    .line 18279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18281
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18282
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 18283
    return-object p0
.end method

.method public setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 18317
    return-object p0
.end method

.method public setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18350
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18351
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18397
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18383
    if-nez p1, :cond_0

    .line 18384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18386
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18388
    return-object p0
.end method

.method public setMessageAttachments(ILcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18463
    return-object p0
.end method

.method public setMessageAttachments(ILcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18451
    if-nez p2, :cond_0

    .line 18452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18454
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18455
    return-object p0
.end method

.method public setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18531
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18533
    return-object p0
.end method

.method public setMessageRecipients(ILcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18583
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18584
    return-object p0
.end method

.method public setMessageRecipients(ILcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18572
    if-nez p2, :cond_0

    .line 18573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18575
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18576
    return-object p0
.end method

.method public setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18652
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18653
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18654
    return-object p0
.end method

.method public setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18686
    if-nez p1, :cond_0

    .line 18687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18689
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18690
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 18691
    return-object p0
.end method

.method public setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18735
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18736
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 18737
    return-object p0
.end method

.method public setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18723
    if-nez p1, :cond_0

    .line 18724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18726
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18727
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 18728
    return-object p0
.end method

.method public setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18784
    if-nez p1, :cond_0

    .line 18785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18787
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18788
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 18789
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18821
    if-nez p1, :cond_0

    .line 18822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18824
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 18826
    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18872
    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18858
    if-nez p1, :cond_0

    .line 18859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18861
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18863
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 18920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 18921
    return-object p0
.end method
