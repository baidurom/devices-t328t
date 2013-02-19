.class Landroid/media/AudioService$BeatsDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeatsDeathHandler"
.end annotation


# instance fields
.field public mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "cb"

    .prologue
    .line 2340
    iput-object p1, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2341
    iput-object p2, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2342
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2346
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    :goto_0
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beats binder died :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v6, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2353
    const-string v2, "AudioService"

    const-string v3, "beats setting trigger in binderDied"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    iget-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mHtcSpecificAP:Z
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;Z)Z

    .line 2355
    iget-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2, v5}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 2358
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 2359
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2360
    .local v1, index:I
    if-gez v1, :cond_1

    .line 2361
    const-string v2, "AudioService"

    const-string/jumbo v4, "unregistered Beats Media Client died"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2368
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2369
    return-void

    .line 2347
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 2348
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "AudioService"

    const-string v3, "Error sleeping in binderDied"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2363
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #index:I
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/media/AudioService$BeatsDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2364
    const-string v2, "AudioService"

    const-string v4, "Remove dead Beats Media Client binder"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2366
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public releaseBinder()V
    .locals 2

    .prologue
    .line 2372
    const-string v0, "AudioService"

    const-string v1, "Release Beats binder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v0, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2374
    const-string v0, "AudioService"

    const-string v1, "Release Beats binder success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2378
    :cond_0
    return-void
.end method
