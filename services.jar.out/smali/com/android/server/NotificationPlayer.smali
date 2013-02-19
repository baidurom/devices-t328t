.class public Lcom/android/server/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationPlayer$1;,
        Lcom/android/server/NotificationPlayer$CmdThread;,
        Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/server/NotificationPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NotificationPlayer"

.field private static final mDebug:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mLooper:Landroid/os/Looper;

.field private mPkg:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/server/NotificationPlayer$CmdThread;

.field private mVzwCMAS:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 432
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 425
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 433
    if-eqz p1, :cond_0

    .line 434
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const-string v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/NotificationPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationPlayer;)Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NotificationPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$CmdThread;)Lcom/android/server/NotificationPlayer$CmdThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/NotificationPlayer;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/NotificationPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/NotificationPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/NotificationPlayer;->mId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/NotificationPlayer;->startSound(Lcom/android/server/NotificationPlayer$Command;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 569
    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V
    .locals 4
    .parameter "cmd"

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->acquireWakeLock()V

    .line 531
    new-instance v1, Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-direct {v1, p0}, Lcom/android/server/NotificationPlayer$CmdThread;-><init>(Lcom/android/server/NotificationPlayer;)V

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v1}, Lcom/android/server/NotificationPlayer$CmdThread;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    .line 536
    const-string v1, "NotificationPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread start exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 575
    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/server/NotificationPlayer$Command;)V
    .locals 7
    .parameter "cmd"

    .prologue
    .line 262
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setOriVolume()V

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 277
    :cond_1
    new-instance v3, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 278
    iget-object v5, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->start()V

    .line 280
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 281
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v3, v5

    .line 286
    .local v0, delay:J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    .end local v0           #delay:J
    :cond_2
    :goto_0
    return-void

    .line 281
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 282
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v1}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setOriVolume()V

    .line 375
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    if-eqz v1, :cond_1

    .line 378
    iput-boolean v2, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    .line 379
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setIgnoreNotificationMuteSetting(Z)I

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 389
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 390
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_3

    .line 392
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 394
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 395
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :cond_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_SOUND_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "id"

    iget v2, p0, Lcom/android/server/NotificationPlayer;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    iput-object v4, p0, Lcom/android/server/NotificationPlayer;->mContext:Landroid/content/Context;

    .line 410
    return-void

    .line 395
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 397
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"

    .prologue
    const/4 v3, 0x1

    .line 457
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 458
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 459
    iput v3, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 460
    iput-object p1, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 461
    iput-object p2, v0, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 462
    iput-boolean p3, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    .line 463
    iput p4, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    .line 464
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 465
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 466
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 467
    monitor-exit v2

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZILjava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"
    .parameter "pkg"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 474
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 475
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 476
    iput v3, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 477
    iput-object p1, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 478
    iput-object p2, v0, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 479
    iput-boolean p3, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    .line 480
    iput p4, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    .line 481
    iput-object p5, v0, Lcom/android/server/NotificationPlayer$Command;->pkg:Ljava/lang/String;

    .line 482
    iput p6, v0, Lcom/android/server/NotificationPlayer$Command;->id:I

    .line 483
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 484
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 485
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 486
    monitor-exit v2

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method play(Landroid/content/Context;Landroid/net/Uri;ZILjava/lang/String;II)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"
    .parameter "pkg"
    .parameter "id"
    .parameter "volume"

    .prologue
    const/4 v3, 0x1

    .line 493
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 494
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 495
    iput v3, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 496
    iput-object p1, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 497
    iput-object p2, v0, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 498
    iput-boolean p3, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    .line 499
    iput p4, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    .line 500
    iput-object p5, v0, Lcom/android/server/NotificationPlayer$Command;->pkg:Ljava/lang/String;

    .line 501
    iput p6, v0, Lcom/android/server/NotificationPlayer$Command;->id:I

    .line 502
    iput p7, v0, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    .line 503
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 504
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 505
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 506
    monitor-exit v2

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_1

    .line 558
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 562
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    return-void
.end method

.method public setVzwCMASMute(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z

    .line 580
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 514
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 517
    :try_start_0
    iget v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_0

    .line 518
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 519
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 520
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 521
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 522
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 524
    .end local v0           #cmd:Lcom/android/server/NotificationPlayer$Command;
    :cond_0
    monitor-exit v2

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
