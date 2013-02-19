.class Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field private mMaxCount:I

.field private mMuteCount:I

.field final synthetic this$1:Landroid/media/AudioService$VolumeStreamState;


# direct methods
.method constructor <init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    .line 3236
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3237
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    .line 3238
    return-void
.end method

.method static synthetic access$1400(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3231
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3231
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return p1
.end method

.method static synthetic access$4800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3231
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    return v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3231
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3360
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume service client died for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v0, :cond_0

    .line 3363
    iput v3, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    .line 3364
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3365
    invoke-virtual {p0, v3, v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 3367
    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3241
    return-void
.end method

.method public mute(ZI)V
    .locals 6
    .parameter "state"
    .parameter "index"

    .prologue
    .line 3244
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mute state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , streamType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mMuteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mMaxCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 3246
    if-eqz p1, :cond_b

    .line 3247
    :try_start_0
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->applyOutdoorMode()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne p2, v2, :cond_9

    .line 3251
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    .line 3252
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3254
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3258
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->applyOutdoorMode()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3259
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne p2, v2, :cond_3

    .line 3260
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3262
    :cond_3
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    .line 3263
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    .line 3267
    :cond_4
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3268
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 3273
    :goto_0
    const-string v2, "AudioService"

    const-string/jumbo v4, "syncSetIndex first time"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x1

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 3275
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v0

    .line 3276
    .local v0, backupHeadsetState:I
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3277
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3278
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 3279
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 3287
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3290
    .end local v0           #backupHeadsetState:I
    :cond_5
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, v4, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAnalogFM:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v4

    #calls: Landroid/media/AudioService;->broadcastFMVolume(Z)V
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3300
    :goto_2
    if-nez p2, :cond_a

    .line 3301
    :try_start_2
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3355
    :cond_6
    :goto_3
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3356
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3357
    :goto_4
    return-void

    .line 3270
    :cond_7
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3291
    :catch_0
    move-exception v1

    .line 3293
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->binderDied()V

    .line 3294
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3295
    monitor-exit v3

    goto :goto_4

    .line 3356
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 3282
    .restart local v0       #backupHeadsetState:I
    :cond_8
    :try_start_5
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3283
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 3284
    const-string v2, "AudioService"

    const-string/jumbo v4, "syncSetIndex from speaker"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3298
    .end local v0           #backupHeadsetState:I
    :cond_9
    :try_start_6
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was already muted by this client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3302
    :cond_a
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 3303
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    goto :goto_3

    .line 3305
    :cond_b
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v2, :cond_c

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    if-nez v2, :cond_c

    .line 3306
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected unmute for stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3308
    :cond_c
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v2, :cond_d

    .line 3309
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3311
    :cond_d
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    if-eqz v2, :cond_e

    .line 3312
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    .line 3314
    :cond_e
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v2, :cond_6

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I

    if-nez v2, :cond_6

    .line 3316
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3318
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v2, :cond_f

    .line 3319
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3321
    :cond_f
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3324
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 3327
    :cond_10
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3328
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 3336
    :goto_5
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x1

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 3337
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v0

    .line 3338
    .restart local v0       #backupHeadsetState:I
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3339
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3340
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 3341
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 3348
    :goto_6
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    goto/16 :goto_3

    .line 3330
    .end local v0           #backupHeadsetState:I
    :cond_11
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    goto :goto_5

    .line 3344
    .restart local v0       #backupHeadsetState:I
    :cond_12
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 3345
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 3346
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6
.end method
