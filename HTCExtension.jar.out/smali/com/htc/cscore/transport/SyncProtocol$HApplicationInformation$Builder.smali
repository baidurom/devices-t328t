.class public final Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6777
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6772
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6852
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6855
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3

    .prologue
    .line 6780
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;-><init>()V

    .line 6781
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 6782
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 6843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6844
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6846
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 3

    .prologue
    .line 6863
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v1, :cond_0

    .line 6864
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6867
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 6868
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 6869
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 6798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v0, :cond_0

    .line 6799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6802
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 6803
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 7016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7017
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7018
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 7053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7055
    return-object p0
.end method

.method public clearComment()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 7090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7091
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7092
    return-object p0
.end method

.method public clearCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7124
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7126
    return-object p0
.end method

.method public clearFriendsCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7160
    return-object p0
.end method

.method public clearFriendsLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7193
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7194
    return-object p0
.end method

.method public clearLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7226
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7227
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7228
    return-object p0
.end method

.method public clearLiked()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7262
    return-object p0
.end method

.method public clearPopularCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7295
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7296
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 6811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7071
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 7108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 6828
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6820
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsCommentCount()I
    .locals 1

    .prologue
    .line 7142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    return v0
.end method

.method public getFriendsLikeCount()I
    .locals 1

    .prologue
    .line 7176
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 7210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    return v0
.end method

.method public getLiked()Z
    .locals 1

    .prologue
    .line 7244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    return v0
.end method

.method public getPopularCount()I
    .locals 1

    .prologue
    .line 7278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 6990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 7027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 7064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 7101
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsCommentCount()Z
    .locals 1

    .prologue
    .line 7135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsLikeCount()Z
    .locals 1

    .prologue
    .line 7169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLikeCount()Z
    .locals 1

    .prologue
    .line 7203
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLiked()Z
    .locals 1

    .prologue
    .line 7237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    return v0
.end method

.method public hasPopularCount()Z
    .locals 1

    .prologue
    .line 7271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 6790
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6836
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6886
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6915
    :goto_0
    return-object p0

    .line 6887
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6888
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6890
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6891
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6893
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6894
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6896
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6897
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6899
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6900
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6902
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6903
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6905
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6906
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6908
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6909
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6911
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6912
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 6914
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 6930
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6931
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6936
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6938
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 6939
    :goto_1
    return-object p0

    .line 6933
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6944
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6948
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6952
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6956
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6960
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6964
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6968
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6972
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6976
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 6931
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x220 -> :sswitch_1
        0x1242 -> :sswitch_2
        0x2198 -> :sswitch_3
        0x25f8 -> :sswitch_4
        0x26d0 -> :sswitch_5
        0x2a22 -> :sswitch_6
        0x2fe8 -> :sswitch_7
        0x30e8 -> :sswitch_8
        0x3afa -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6877
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    .line 6878
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object p0

    .line 6881
    .end local p0
    :goto_0
    return-object p0

    .line 6880
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
    .line 6772
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6772
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 6772
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 6772
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6772
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 6772
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7004
    if-nez p1, :cond_0

    .line 7005
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7007
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7009
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7041
    if-nez p1, :cond_0

    .line 7042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7044
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7046
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7078
    if-nez p1, :cond_0

    .line 7079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7081
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 7083
    return-object p0
.end method

.method public setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7117
    return-object p0
.end method

.method public setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7151
    return-object p0
.end method

.method public setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7185
    return-object p0
.end method

.method public setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7219
    return-object p0
.end method

.method public setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7253
    return-object p0
.end method

.method public setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 7286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 7287
    return-object p0
.end method
