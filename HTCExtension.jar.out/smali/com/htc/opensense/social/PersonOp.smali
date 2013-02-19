.class public Lcom/htc/opensense/social/PersonOp;
.super Lcom/htc/opensense/social/DataOp;
.source "PersonOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Person;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field asyncManager:Lcom/htc/opensense/social/AsyncManager;

.field mPerson:Lcom/htc/opensense/social/data/Person;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/htc/opensense/social/PersonOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/PersonOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Person;)V
    .locals 0
    .parameter "service"
    .parameter "person"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 55
    iput-object p2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    .line 57
    return-void
.end method

.method public static readFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/PersonOp;
    .locals 3
    .parameter "intent"

    .prologue
    .line 169
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 171
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataFromIntent(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Person;

    .line 173
    .local v0, person:Lcom/htc/opensense/social/data/Person;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 174
    new-instance v2, Lcom/htc/opensense/social/PersonOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/PersonOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Person;)V

    .line 176
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
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 189
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 194
    .local v3, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 195
    .local v0, data:Landroid/os/Parcelable;
    new-instance v5, Lcom/htc/opensense/social/PersonOp;

    check-cast v0, Lcom/htc/opensense/social/data/Person;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-direct {v5, v4, v0}, Lcom/htc/opensense/social/PersonOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Person;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/PersonOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 421
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/PersonOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/PersonOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/PersonOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 398
    sget-object v0, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/PersonOp;

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
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/PersonOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

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
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    sget-object v0, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFeed(Ljava/lang/String;)Z
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

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    const-string v6, "DataService"

    const-string v7, "feed content is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return v5

    .line 142
    :cond_0
    const/4 v3, 0x0

    .line 143
    .local v3, feed:Lcom/htc/opensense/social/data/Feed;
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 144
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 146
    .local v4, result:Z
    const-string v7, "add feed type"

    const/16 v8, 0x101

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v7, "add feed content"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v8, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v8, v8, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v7, v8, v0, v2}, Lcom/htc/opensense/social/ISocialService;->addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 156
    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    .line 158
    :goto_2
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    move v5, v4

    .line 159
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v6, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 153
    const-string v7, "DataService"

    const-string v8, "add feed error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move v4, v6

    .line 156
    goto :goto_2
.end method

.method public addGetAlbumsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getAlbumsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public addGetFeedsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getFeedsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public addGetFrinedsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PersonOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getFriendsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public getAlbumsOf()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 90
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v0, 0x0

    .line 92
    .local v0, albumList:[Lcom/htc/opensense/social/data/Album;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/htc/opensense/social/ISocialService;->getAlbumsOf(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 98
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v0, v4}, Lcom/htc/opensense/social/AlbumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 95
    const-string v3, "DataService"

    const-string v4, "get albums error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Person;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    return-object v0
.end method

.method public getEvent(I)Ljava/util/List;
    .locals 1
    .parameter "end_time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvent(J)Ljava/util/List;
    .locals 10
    .parameter "end_time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 298
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 299
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 302
    .local v8, events:[Lcom/htc/opensense/social/data/Event;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    const-string v1, "get event by user id"

    iget-object v2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getEvent(Ljava/lang/String;Ljava/lang/String;J[JLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Event;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 308
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 310
    if-eqz v8, :cond_0

    .line 311
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    .line 304
    :catch_0
    move-exception v7

    .line 305
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 306
    const-string v0, "DataService"

    const-string v1, "get event error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    move-object v0, v9

    .line 313
    goto :goto_1
.end method

.method public getEvent([J)Ljava/util/List;
    .locals 9
    .parameter "event_ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 331
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 334
    .local v8, events:[Lcom/htc/opensense/social/data/Event;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    const-string v1, "get event by event id"

    iget-object v2, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    const-wide/16 v3, -0x1

    move-object v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getEvent(Ljava/lang/String;Ljava/lang/String;J[JLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Event;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 340
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 342
    if-eqz v8, :cond_0

    .line 343
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 345
    :goto_1
    return-object v0

    .line 336
    :catch_0
    move-exception v7

    .line 337
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 338
    const-string v0, "DataService"

    const-string v1, "get event error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFeedsOf(Z)Ljava/util/List;
    .locals 5
    .parameter "onlyUserFeed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 112
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 114
    .local v2, feedList:[Lcom/htc/opensense/social/data/Feed;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, p1, v1}, Lcom/htc/opensense/social/ISocialService;->getFeedsOf(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 121
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v3, v2}, Lcom/htc/opensense/social/FeedOp;->convertToFeedServiceList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Feed;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 118
    const-string v3, "DataService"

    const-string v4, "get albums error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFriends()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 71
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 73
    .local v2, friendList:[Lcom/htc/opensense/social/data/Person;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->getFriendList(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 79
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v2, v4}, Lcom/htc/opensense/social/PersonOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 76
    const-string v3, "DataService"

    const-string v4, "get friend error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getInfo()Lcom/htc/opensense/social/data/Person;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 257
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 260
    .local v2, person:Lcom/htc/opensense/social/data/Person;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->getInfo(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 265
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 267
    if-nez v2, :cond_0

    .line 268
    const/4 v2, 0x0

    .line 271
    .end local v2           #person:Lcom/htc/opensense/social/data/Person;
    :cond_0
    return-object v2

    .line 261
    .restart local v2       #person:Lcom/htc/opensense/social/data/Person;
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 263
    const-string v3, "DataService"

    const-string v4, "get information error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMediaTagOf(IIII)Ljava/util/List;
    .locals 9
    .parameter "maxNum"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 233
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 235
    .local v8, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getMediaTagOf(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 240
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 241
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v8, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public getRecentMedia(IIII)Ljava/util/List;
    .locals 9
    .parameter "maxNum"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 218
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 220
    .local v8, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/PersonOp;->mPerson:Lcom/htc/opensense/social/data/Person;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getRecentMedia(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 225
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 226
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v8, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 222
    :catch_0
    move-exception v7

    .line 223
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method
