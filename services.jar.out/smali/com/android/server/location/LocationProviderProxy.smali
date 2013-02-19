.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationProviderProxy$1;,
        Lcom/android/server/location/LocationProviderProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mLocationTracking:Z

.field private mMinTime:J

.field private mMinTimeSource:Landroid/os/WorkSource;

.field private final mMutex:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkState:I

.field private mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "serviceName"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 53
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 56
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    .line 63
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    .line 66
    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationProviderProxy;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationProviderProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    return v0
.end method

.method private getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 466
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 468
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 473
    return-void

    .line 472
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 469
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 318
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 319
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 321
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->disable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 326
    return-void

    .line 325
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 322
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 305
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 306
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 308
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->enable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 313
    return-void

    .line 312
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 309
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableLocationTracking(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 386
    if-nez p1, :cond_0

    .line 387
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 388
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 391
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_1

    .line 393
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 398
    return-void

    .line 397
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 394
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAccuracy()I
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 263
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getAccuracy()I

    move-result v1

    .line 266
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 366
    .local v1, provider:Landroid/location/ILocationProvider;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v1, :cond_0

    .line 369
    :try_start_1
    invoke-interface {v1}, Landroid/location/ILocationProvider;->getInternalState()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 374
    :goto_0
    return-object v2

    .line 366
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 370
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    const-string v3, "getInternalState failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinTime()J
    .locals 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    monitor-exit v1

    return-wide v2

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 254
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getPowerRequirement()I

    move-result v1

    .line 257
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 3
    .parameter "extras"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 338
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-eqz v0, :cond_0

    .line 341
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 345
    :goto_0
    return v1

    .line 338
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 342
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 345
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 3

    .prologue
    .line 350
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 352
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    if-eqz v0, :cond_0

    .line 355
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 359
    :goto_0
    return-wide v1

    .line 352
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 356
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 359
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 218
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->hasMonetaryCost()Z

    move-result v1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLocationTracking()Z
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    monitor-exit v1

    return v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 5
    .parameter "criteria"

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v4}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 273
    .local v1, provider:Landroid/location/ILocationProvider;
    if-eqz v1, :cond_1

    .line 275
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 299
    :cond_0
    :goto_0
    return v2

    .line 276
    :catch_0
    move-exception v4

    .line 279
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getAccuracy()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 286
    .local v0, criteriaPower:I
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getPowerRequirement()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsAltitude()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    :cond_4
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsSpeed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    :cond_5
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsBearing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 279
    .end local v0           #criteriaPower:I
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 80
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 478
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 480
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 485
    return-void

    .line 484
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 481
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestSingleShotFix()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 209
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresCell()Z

    move-result v1

    .line 212
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 191
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresNetwork()Z

    move-result v1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 200
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresSatellite()Z

    move-result v1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 453
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 455
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit v2

    .line 460
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v1

    .line 459
    :cond_0
    monitor-exit v2

    .line 460
    const/4 v1, 0x0

    goto :goto_0

    .line 459
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 3
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 412
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 413
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 415
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 417
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 422
    return-void

    .line 421
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 418
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 227
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsAltitude()Z

    move-result v1

    .line 230
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 245
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsBearing()Z

    move-result v1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 236
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsSpeed()Z

    move-result v1

    .line 239
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 441
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 443
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 447
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 448
    return-void

    .line 447
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 444
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_0
    iput p1, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    .line 427
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 428
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 429
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 431
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 436
    return-void

    .line 435
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 432
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
