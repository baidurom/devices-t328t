.class public final Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34143
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34138
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$64700()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 34221
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 3

    .prologue
    .line 34146
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;-><init>()V

    .line 34147
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .line 34148
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    .prologue
    .line 34209
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 34212
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 3

    .prologue
    .line 34229
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    if-nez v1, :cond_0

    .line 34230
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34233
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .line 34234
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .line 34235
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    .line 34164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    if-nez v0, :cond_0

    .line 34165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34168
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .line 34169
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLastViewDashboards()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 3

    .prologue
    .line 34372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$64902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34374
    return-object p0
.end method

.method public clearLastViewFootprints()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 3

    .prologue
    .line 34406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34408
    return-object p0
.end method

.method public clearLastViewRecommends()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 3

    .prologue
    .line 34440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34442
    return-object p0
.end method

.method public clearNewDashboardCount()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34474
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65502(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65602(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34476
    return-object p0
.end method

.method public clearNewFootprintCount()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34508
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65702(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65802(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34510
    return-object p0
.end method

.method public clearNewMessagesCount()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34543
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34544
    return-object p0
.end method

.method public clearNewPeopleCount()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34576
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34578
    return-object p0
.end method

.method public clearNewRecommendsCount()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34610
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34611
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34612
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2

    .prologue
    .line 34177
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    .prologue
    .line 34194
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34186
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLastViewDashboards()J
    .locals 2

    .prologue
    .line 34356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastViewFootprints()J
    .locals 2

    .prologue
    .line 34390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastViewRecommends()J
    .locals 2

    .prologue
    .line 34424
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewDashboardCount()I
    .locals 1

    .prologue
    .line 34458
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v0

    return v0
.end method

.method public getNewFootprintCount()I
    .locals 1

    .prologue
    .line 34492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v0

    return v0
.end method

.method public getNewMessagesCount()I
    .locals 1

    .prologue
    .line 34526
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v0

    return v0
.end method

.method public getNewPeopleCount()I
    .locals 1

    .prologue
    .line 34560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v0

    return v0
.end method

.method public getNewRecommendsCount()I
    .locals 1

    .prologue
    .line 34594
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v0

    return v0
.end method

.method public hasLastViewDashboards()Z
    .locals 1

    .prologue
    .line 34349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v0

    return v0
.end method

.method public hasLastViewFootprints()Z
    .locals 1

    .prologue
    .line 34383
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v0

    return v0
.end method

.method public hasLastViewRecommends()Z
    .locals 1

    .prologue
    .line 34417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v0

    return v0
.end method

.method public hasNewDashboardCount()Z
    .locals 1

    .prologue
    .line 34451
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v0

    return v0
.end method

.method public hasNewFootprintCount()Z
    .locals 1

    .prologue
    .line 34485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v0

    return v0
.end method

.method public hasNewMessagesCount()Z
    .locals 1

    .prologue
    .line 34519
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v0

    return v0
.end method

.method public hasNewPeopleCount()Z
    .locals 1

    .prologue
    .line 34553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v0

    return v0
.end method

.method public hasNewRecommendsCount()Z
    .locals 1

    .prologue
    .line 34587
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    .prologue
    .line 34156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 34138
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 34202
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 34252
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 34278
    :goto_0
    return-object p0

    .line 34253
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34254
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewDashboards(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34256
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34257
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewFootprints(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34259
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34260
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewRecommends(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34262
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34263
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewDashboardCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34265
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34266
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34268
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34269
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewMessagesCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34271
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34272
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewPeopleCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34274
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34275
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewRecommendsCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    .line 34277
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34289
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 34293
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 34294
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 34299
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34301
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 34302
    :goto_1
    return-object p0

    .line 34296
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 34307
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewPeopleCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34311
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34315
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewRecommends(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34319
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewDashboards(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34323
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewMessagesCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34327
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setLastViewFootprints(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34331
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewRecommendsCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34335
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->setNewDashboardCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    goto :goto_0

    .line 34294
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x90 -> :sswitch_1
        0x758 -> :sswitch_2
        0x770 -> :sswitch_3
        0x858 -> :sswitch_4
        0x1eb8 -> :sswitch_5
        0x2070 -> :sswitch_6
        0x25e0 -> :sswitch_7
        0x32b8 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34243
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    if-eqz v0, :cond_0

    .line 34244
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object p0

    .line 34247
    .end local p0
    :goto_0
    return-object p0

    .line 34246
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
    .line 34138
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34138
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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
    .line 34138
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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
    .line 34138
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34138
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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
    .line 34138
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLastViewDashboards(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$64902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34365
    return-object p0
.end method

.method public setLastViewFootprints(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34399
    return-object p0
.end method

.method public setLastViewRecommends(J)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34432
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J

    .line 34433
    return-object p0
.end method

.method public setNewDashboardCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65502(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34466
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65602(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34467
    return-object p0
.end method

.method public setNewFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65702(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65802(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34501
    return-object p0
.end method

.method public setNewMessagesCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$65902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34535
    return-object p0
.end method

.method public setNewPeopleCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34569
    return-object p0
.end method

.method public setNewRecommendsCount(I)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34601
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z

    .line 34602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->access$66402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I

    .line 34603
    return-object p0
.end method
