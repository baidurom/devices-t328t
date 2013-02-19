.class public Lcom/android/server/felica/FelicaProxy;
.super Ljava/lang/Object;
.source "FelicaProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/felica/FelicaProxy$1;,
        Lcom/android/server/felica/FelicaProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FelicaProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mMutex:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mMutex:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/android/server/felica/FelicaProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/felica/FelicaProxy$Connection;-><init>(Lcom/android/server/felica/FelicaProxy;Lcom/android/server/felica/FelicaProxy$1;)V

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    .line 27
    iput-object p1, p0, Lcom/android/server/felica/FelicaProxy;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/felica/IFelica;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mIntent:Landroid/content/Intent;

    .line 29
    iget-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/felica/FelicaProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 32
    return-void
.end method

.method public static isServiceExist(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/server/felica/IFelica;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getLockState()I
    .locals 4

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, provider:Lcom/android/server/felica/IFelica;
    iget-object v3, p0, Lcom/android/server/felica/FelicaProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/felica/FelicaProxy$Connection;->getProvider()Lcom/android/server/felica/IFelica;

    move-result-object v1

    .line 105
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v1, :cond_0

    .line 108
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/felica/IFelica;->getLockState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 113
    :goto_0
    return v2

    .line 105
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FelicaProxy"

    const-string v3, "getLockState failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public lock()Z
    .locals 4

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, provider:Lcom/android/server/felica/IFelica;
    iget-object v3, p0, Lcom/android/server/felica/FelicaProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/felica/FelicaProxy$Connection;->getProvider()Lcom/android/server/felica/IFelica;

    move-result-object v1

    .line 75
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v1, :cond_0

    .line 78
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/felica/IFelica;->lock()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 83
    :goto_0
    return v2

    .line 75
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FelicaProxy"

    const-string v3, "lock failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/felica/FelicaProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 41
    new-instance v0, Lcom/android/server/felica/FelicaProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/felica/FelicaProxy$Connection;-><init>(Lcom/android/server/felica/FelicaProxy;Lcom/android/server/felica/FelicaProxy$1;)V

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    .line 42
    iget-object v0, p0, Lcom/android/server/felica/FelicaProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlock()Z
    .locals 4

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, provider:Lcom/android/server/felica/IFelica;
    iget-object v3, p0, Lcom/android/server/felica/FelicaProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/server/felica/FelicaProxy;->mServiceConnection:Lcom/android/server/felica/FelicaProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/felica/FelicaProxy$Connection;->getProvider()Lcom/android/server/felica/IFelica;

    move-result-object v1

    .line 90
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v1, :cond_0

    .line 93
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/felica/IFelica;->unlock()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 98
    :goto_0
    return v2

    .line 90
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FelicaProxy"

    const-string v3, "unlock failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
