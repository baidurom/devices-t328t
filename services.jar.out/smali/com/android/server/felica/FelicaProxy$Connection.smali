.class Lcom/android/server/felica/FelicaProxy$Connection;
.super Ljava/lang/Object;
.source "FelicaProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/felica/FelicaProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mProvider:Lcom/android/server/felica/IFelica;

.field final synthetic this$0:Lcom/android/server/felica/FelicaProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/felica/FelicaProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/felica/FelicaProxy$Connection;->this$0:Lcom/android/server/felica/FelicaProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy$Connection;->mProvider:Lcom/android/server/felica/IFelica;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/felica/FelicaProxy;Lcom/android/server/felica/FelicaProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/felica/FelicaProxy$Connection;-><init>(Lcom/android/server/felica/FelicaProxy;)V

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/android/server/felica/IFelica;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/server/felica/FelicaProxy$Connection;->mProvider:Lcom/android/server/felica/IFelica;

    monitor-exit p0

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-static {p2}, Lcom/android/server/felica/IFelica$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/felica/IFelica;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy$Connection;->mProvider:Lcom/android/server/felica/IFelica;

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/felica/FelicaProxy$Connection;->mProvider:Lcom/android/server/felica/IFelica;

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
