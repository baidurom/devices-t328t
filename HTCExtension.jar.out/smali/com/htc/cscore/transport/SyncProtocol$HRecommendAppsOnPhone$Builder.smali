.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47750
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47745
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$90500()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 47828
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 3

    .prologue
    .line 47753
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;-><init>()V

    .line 47754
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 47755
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 47816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 47819
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 3

    .prologue
    .line 47836
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-nez v1, :cond_0

    .line 47837
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47840
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 47841
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 47842
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 47771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-nez v0, :cond_0

    .line 47772
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47775
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 47776
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 47985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 47986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 47987
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 48022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48024
    return-object p0
.end method

.method public clearAppURL()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 48059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48061
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 48120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 48122
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 48157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48159
    return-object p0
.end method

.method public clearRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 48218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48219
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 48220
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 3

    .prologue
    .line 48252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$92002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;J)J

    .line 48254
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 47784
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48040
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 47801
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47793
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 48077
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 48175
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 48236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 47959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 47996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 48033
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 48070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 48131
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasRecommendedApplicationIcon()Z
    .locals 1

    .prologue
    .line 48168
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 48229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 47763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 47809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 47859
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47882
    :goto_0
    return-object p0

    .line 47860
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47861
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47863
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47864
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47866
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47867
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47869
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47870
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47872
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47873
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47875
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47876
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47878
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47879
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 47881
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47893
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 47897
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 47898
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 47903
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47905
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 47906
    :goto_1
    return-object p0

    .line 47900
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 47911
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47915
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47919
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47923
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    .line 47924
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->hasRecommendedApplicationIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47925
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 47927
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 47928
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47932
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47936
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 47937
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 47940
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 47941
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47945
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 47898
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1242 -> :sswitch_3
        0x161a -> :sswitch_4
        0x1c4a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x3afa -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 47850
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    .line 47851
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object p0

    .line 47854
    .end local p0
    :goto_0
    return-object p0

    .line 47853
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
    .line 47745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47745
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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
    .line 47745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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
    .line 47745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47745
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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
    .line 47745
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48107
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 48112
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48113
    return-object p0

    .line 48110
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48203
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91800(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91800(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 48210
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48211
    return-object p0

    .line 48208
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47973
    if-nez p1, :cond_0

    .line 47974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47976
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 47977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 47978
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48010
    if-nez p1, :cond_0

    .line 48011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48013
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48015
    return-object p0
.end method

.method public setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48047
    if-nez p1, :cond_0

    .line 48048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48050
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48052
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 48096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 48098
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48084
    if-nez p1, :cond_0

    .line 48085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48087
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 48089
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48145
    if-nez p1, :cond_0

    .line 48146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48148
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 48150
    return-object p0
.end method

.method public setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 48194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 48196
    return-object p0
.end method

.method public setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48182
    if-nez p1, :cond_0

    .line 48183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48185
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48186
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 48187
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48243
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    .line 48244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$92002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;J)J

    .line 48245
    return-object p0
.end method
