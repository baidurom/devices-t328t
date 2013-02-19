.class public Lcom/htc/socialnetwork/tmo/TmoMediaClient;
.super Lcom/htc/socialnetwork/SocialNetworkClient;
.source "TmoMediaClient.java"


# static fields
.field public static final SERVICE_NAME_T_MOBILE:Ljava/lang/String; = "tmobile"

.field public static final TMO_DB_ACCOUNT_URI:Ljava/lang/String; = "content://tmomedia/accounts"

.field public static final TMO_MEDIA_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.tmo.mediauploader"


# instance fields
.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "api_key"
    .parameter "secret"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->mUsername:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->mPassword:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pid"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 639
    return-void
.end method

.method public addToAlbum(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "aid"
    .parameter "pidlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method protected checkLogin()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public createAlbum(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 103
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAlbum(Ljava/util/HashMap;ZI)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter "isPublic"
    .parameter "photoAmount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 92
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public doAuth()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public doAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->mUsername:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->mPassword:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 1
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findAlbumList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findEventById(J)Lcom/htc/socialnetwork/Event;
    .locals 1
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0
    .parameter "uid"
    .parameter
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 204
    .local p2, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    return-void
.end method

.method protected findFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 230
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method protected findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 242
    .local p2, invites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected findFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findFriendsWithContactData(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findGroupInviteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findPhotoList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 1
    .parameter "uid"
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 388
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 415
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    return-void
.end method

.method protected findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 1
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    const-string v0, "com.htc.tmo.mediauploader"

    return-object v0
.end method

.method public getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePartName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 470
    const-string v0, ""

    return-object v0
.end method

.method public getLoginURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUser()Lcom/htc/socialnetwork/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lcom/htc/socialnetwork/User;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/User;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    .line 499
    .local v0, user:Lcom/htc/socialnetwork/User;
    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    .line 500
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 501
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/User;->setProfileUrl(Ljava/lang/String;)V

    .line 502
    return-object v0
.end method

.method public getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 658
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "aid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "userId"
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 545
    const-string v0, ""

    return-object v0
.end method

.method public getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 556
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 572
    const-string v0, "ok"

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/TmoMediaClient;->getDataHelper()Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->getUploadUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 614
    return-void
.end method

.method public setPhotoFavorite(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pid"
    .parameter "like"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 649
    return-void
.end method

.method protected updateStatus(Ljava/lang/String;)Z
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method
