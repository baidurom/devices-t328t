.class public Lcom/htc/opensense/social/AsyncManager;
.super Ljava/lang/Object;
.source "AsyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/AsyncManager$AsyncTask;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SocialServiceManager"

.field static serviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/htc/opensense/social/AsyncManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

.field private cName:Landroid/content/ComponentName;

.field final getAlbumsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/AsyncManager$AsyncTask",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field final getFeedsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/AsyncManager$AsyncTask",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field final getFriendsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/AsyncManager$AsyncTask",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field public needRegisterCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/IServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field socialService:Lcom/htc/opensense/social/ISocialService;

.field waitingForbind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/htc/opensense/social/ISocialService;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "service"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->operationList:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/AsyncManager;->waitingForbind:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->needRegisterCallbacks:Ljava/util/List;

    .line 184
    new-instance v0, Lcom/htc/opensense/social/AsyncManager$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/AsyncManager$1;-><init>(Lcom/htc/opensense/social/AsyncManager;)V

    iput-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->getFriendsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    .line 190
    new-instance v0, Lcom/htc/opensense/social/AsyncManager$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/AsyncManager$2;-><init>(Lcom/htc/opensense/social/AsyncManager;)V

    iput-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->getAlbumsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    .line 195
    new-instance v0, Lcom/htc/opensense/social/AsyncManager$3;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/AsyncManager$3;-><init>(Lcom/htc/opensense/social/AsyncManager;)V

    iput-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->getFeedsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p3, p0, Lcom/htc/opensense/social/AsyncManager;->socialService:Lcom/htc/opensense/social/ISocialService;

    .line 95
    iput-object p1, p0, Lcom/htc/opensense/social/AsyncManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/htc/opensense/social/AsyncManager;->cName:Landroid/content/ComponentName;

    .line 97
    invoke-virtual {p0}, Lcom/htc/opensense/social/AsyncManager;->bindServiceWithLock()V

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;
    .locals 5
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v2, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    monitor-enter v2

    .line 57
    :try_start_0
    const-string v1, "SocialServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v1, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/AsyncManager;

    .line 60
    .local v0, connection:Lcom/htc/opensense/social/AsyncManager;
    monitor-exit v2

    return-object v0

    .line 62
    .end local v0           #connection:Lcom/htc/opensense/social/AsyncManager;
    :cond_0
    new-instance v1, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v3, Lcom/htc/opensense/social/ErrorCode;->GENERAL:Lcom/htc/opensense/social/ErrorCode;

    const-string v4, "Callback not set yet"

    invoke-direct {v1, v3, v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V

    throw v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/social/IServiceCallback;Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/AsyncManager;
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "callback"
    .parameter "service"

    .prologue
    .line 73
    sget-object v4, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    monitor-enter v4

    .line 75
    :try_start_0
    invoke-interface {p3}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, binder:Landroid/os/IBinder;
    sget-object v3, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    sget-object v3, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/AsyncManager;

    .line 79
    :cond_0
    const-string v3, "SupportGallery"

    invoke-static {p0, p1, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;

    move-result-object v1

    .line 81
    .local v1, component:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    if-eqz v1, :cond_1

    .line 82
    new-instance v2, Lcom/htc/opensense/social/AsyncManager;

    iget-object v3, v1, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    invoke-direct {v2, p0, v3, p3}, Lcom/htc/opensense/social/AsyncManager;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/htc/opensense/social/ISocialService;)V

    .line 83
    .local v2, connection:Lcom/htc/opensense/social/AsyncManager;
    const-string v3, "SocialServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v3, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v4

    .line 87
    .end local v2           #connection:Lcom/htc/opensense/social/AsyncManager;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v4

    goto :goto_0

    .line 88
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #component:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V
    .locals 1
    .parameter "task"
    .parameter "uid"

    .prologue
    .line 206
    new-instance v0, Lcom/htc/opensense/social/AsyncManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/opensense/social/AsyncManager$4;-><init>(Lcom/htc/opensense/social/AsyncManager;Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 215
    .local v0, newTask:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/AsyncManager;->startExecute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public bindServiceWithLock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iput-boolean v2, p0, Lcom/htc/opensense/social/AsyncManager;->waitingForbind:Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.opensense.social.AsyncTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->cName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 111
    return-void
.end method

.method public binderDied()V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 258
    sget-object v0, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-static {p2}, Lcom/htc/opensense/social/IAsyncSocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/IAsyncSocialService;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/social/AsyncManager;->needRegisterCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/IServiceCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget-object v5, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/IServiceCallback;

    invoke-interface {v5, v4}, Lcom/htc/opensense/social/IAsyncSocialService;->registerCallback(Lcom/htc/opensense/social/IServiceCallback;)V

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    .end local v1           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/IServiceCallback;>;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/opensense/social/AsyncManager;->waitingForbind:Z

    .line 132
    iget-object v4, p0, Lcom/htc/opensense/social/AsyncManager;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 133
    .local v2, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 135
    .local v3, op:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 138
    .end local v2           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v3           #op:Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 146
    sget-object v0, Lcom/htc/opensense/social/AsyncManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public registerCallback(Lcom/htc/opensense/social/IServiceCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/IAsyncSocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v1, p1}, Lcom/htc/opensense/social/IAsyncSocialService;->registerCallback(Lcom/htc/opensense/social/IServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 236
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 231
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->needRegisterCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-boolean v1, p0, Lcom/htc/opensense/social/AsyncManager;->waitingForbind:Z

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/htc/opensense/social/AsyncManager;->bindServiceWithLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startExecute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/IAsyncSocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    .line 173
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/social/AsyncManager;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-boolean v0, p0, Lcom/htc/opensense/social/AsyncManager;->waitingForbind:Z

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/htc/opensense/social/AsyncManager;->bindServiceWithLock()V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unRegisterCallback(Lcom/htc/opensense/social/IServiceCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 243
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v1, p1}, Lcom/htc/opensense/social/IAsyncSocialService;->unRegisterCallback(Lcom/htc/opensense/social/IServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 250
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SocialServiceManager"

    const-string v2, "remote error error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 249
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
