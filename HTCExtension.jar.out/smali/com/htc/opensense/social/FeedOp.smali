.class public Lcom/htc/opensense/social/FeedOp;
.super Lcom/htc/opensense/social/DataOp;
.source "FeedOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Feed;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Feed;",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEED:Ljava/lang/String; = "feed"

.field public static final LOG_TAG:Ljava/lang/String; = "FeedService"


# instance fields
.field private final mFeed:Lcom/htc/opensense/social/data/Feed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/htc/opensense/social/FeedOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/FeedOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V
    .locals 0
    .parameter "service"
    .parameter "feed"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 56
    iput-object p2, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    .line 57
    return-void
.end method

.method public static convertToFeedServiceList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Feed;)Ljava/util/List;
    .locals 6
    .parameter "service"
    .parameter "feeds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/ISocialService;",
            "[",
            "Lcom/htc/opensense/social/data/Feed;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/social/data/Feed;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 85
    .local v1, feed:Lcom/htc/opensense/social/data/Feed;
    new-instance v5, Lcom/htc/opensense/social/FeedOp;

    invoke-direct {v5, p0, v1}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0           #arr$:[Lcom/htc/opensense/social/data/Feed;
    .end local v1           #feed:Lcom/htc/opensense/social/data/Feed;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public static readFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/FeedOp;
    .locals 3
    .parameter "intent"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 101
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataFromIntent(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Feed;

    .line 102
    .local v0, feed:Lcom/htc/opensense/social/data/Feed;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 103
    new-instance v2, Lcom/htc/opensense/social/FeedOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    .line 105
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 117
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 122
    .local v2, feedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 123
    .local v0, data:Landroid/os/Parcelable;
    new-instance v5, Lcom/htc/opensense/social/FeedOp;

    check-cast v0, Lcom/htc/opensense/social/data/Feed;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-direct {v5, v4, v0}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v2           #feedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/FeedOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 156
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/FeedOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/FeedOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/FeedOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 138
    sget-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/FeedOp;

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/FeedOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)Z
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    const-string v6, "FeedService"

    const-string v7, "comment content is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return v5

    .line 232
    :cond_0
    const/4 v3, 0x0

    .line 233
    .local v3, feed:Lcom/htc/opensense/social/data/Feed;
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 234
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 236
    .local v4, result:Z
    const-string v7, "add feed type"

    const/16 v8, 0x102

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v7, "add feed content"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v8, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    iget-object v8, v8, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    invoke-interface {v7, v8, v0, v2}, Lcom/htc/opensense/social/ISocialService;->addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 246
    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    .line 248
    :goto_2
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    move v5, v4

    .line 249
    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v6, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 243
    const-string v7, "FeedService"

    const-string v8, "add feed error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move v4, v6

    .line 246
    goto :goto_2
.end method

.method public deleteComment(Ljava/lang/String;)V
    .locals 5
    .parameter "comment_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "FeedService"

    const-string v3, "comment id is null or empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 273
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    const-string v3, "remove comment"

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/htc/opensense/social/ISocialService;->deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 277
    const-string v2, "FeedService"

    const-string v3, "add feed error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getComments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 200
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v0, 0x0

    .line 202
    .local v0, attach:[Lcom/htc/opensense/social/data/Attachment;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/htc/opensense/social/ISocialService;->getFeedComments(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;

    move-result-object v0

    .line 203
    const-string v4, "FeedService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getComments]attach count:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 211
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    const-class v4, Lcom/htc/opensense/social/data/Comment;

    invoke-static {v3, v0, v4}, Lcom/htc/opensense/social/FeedOp;->convertToAttachmentList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Attachment;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 203
    :cond_0
    :try_start_1
    array-length v3, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 207
    const-string v3, "FeedService"

    const-string v4, "get comment error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/opensense/social/FeedOp;->getData()Lcom/htc/opensense/social/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Feed;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    return-object v0
.end method

.method public setLike(Ljava/lang/Boolean;)Z
    .locals 7
    .parameter "like"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 179
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 180
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v3, 0x0

    .line 181
    .local v3, result:Z
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    iget-boolean v5, v5, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 183
    .local v2, newLike:Z
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v6, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    iget-object v6, v6, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    invoke-interface {v5, v6, v2, v1}, Lcom/htc/opensense/social/ISocialService;->setFeedLike(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 188
    :goto_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 189
    return v3

    .line 181
    .end local v2           #newLike:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 184
    .restart local v2       #newLike:Z
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v4, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 186
    const-string v4, "FeedService"

    const-string v5, "set like error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
