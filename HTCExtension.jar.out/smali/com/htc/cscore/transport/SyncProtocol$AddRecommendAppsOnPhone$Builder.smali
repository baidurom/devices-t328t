.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49452
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49447
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$94500()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49527
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 49530
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 3

    .prologue
    .line 49455
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;-><init>()V

    .line 49456
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 49457
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49518
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49519
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 49521
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 3

    .prologue
    .line 49538
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    if-nez v1, :cond_0

    .line 49539
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49542
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 49543
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 49544
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 49473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    if-nez v0, :cond_0

    .line 49474
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49477
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 49478
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 49664
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Z)Z

    .line 49665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 49666
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 49486
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

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
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49621
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49503
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49495
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAppsOnPhone()Z
    .locals 1

    .prologue
    .line 49614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 49447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 49511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49649
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94800(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49651
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94800(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 49656
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Z)Z

    .line 49657
    return-object p0

    .line 49654
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 49561
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 49566
    :goto_0
    return-object p0

    .line 49562
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49563
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    .line 49565
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 49581
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49582
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 49587
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49589
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 49590
    :goto_1
    return-object p0

    .line 49584
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 49595
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    .line 49596
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->hasAppsOnPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49597
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 49599
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 49600
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->setAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 49582
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2b2a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 49552
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    .line 49553
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object p0

    .line 49556
    .end local p0
    :goto_0
    return-object p0

    .line 49555
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
    .line 49447
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49447
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

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
    .line 49447
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

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
    .line 49447
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49447
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

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
    .line 49447
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 49640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Z)Z

    .line 49641
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 49642
    return-object p0
.end method

.method public setAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49628
    if-nez p1, :cond_0

    .line 49629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49631
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Z)Z

    .line 49632
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 49633
    return-object p0
.end method
