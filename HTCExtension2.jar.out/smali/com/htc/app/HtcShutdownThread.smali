.class public final Lcom/htc/app/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x40

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final SHUTDOWN_CIQ:Ljava/lang/String; = "com.android.internal.policy.impl.SHUTDOWN_CIQ"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/htc/app/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/htc/shutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 106
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 107
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 108
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 129
    sput v1, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    .line 533
    new-instance v0, Lcom/htc/app/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/htc/app/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x7da

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 414
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 417
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 418
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_1

    .line 421
    const-string v7, "HtcShutdownThread"

    const-string v9, "Shutdown sequence already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-exit v8

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 425
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v6, home:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    const/16 v7, 0xd8

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v12, v7, :cond_3

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_3
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_6

    .line 436
    :cond_4
    const-string v7, "ctl.stop"

    const-string/jumbo v8, "zchgd_onmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v4, v7, v9

    .line 439
    .local v4, endRestartTime:J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 440
    .local v1, delay:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_9

    .line 458
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    :cond_6
    :goto_1
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->isUseAnimation()Z

    move-result v0

    .line 459
    .local v0, bUseAnim:Z
    if-nez v0, :cond_a

    .line 462
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 463
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x1040137

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x104013b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 465
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 466
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 467
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 469
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 470
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 471
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 490
    :goto_2
    new-instance v7, Lcom/htc/app/HtcShutdownThread;

    invoke-direct {v7}, Lcom/htc/app/HtcShutdownThread;-><init>()V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 491
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object p0, v7, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 492
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 493
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->setAblActive(I)V

    .line 495
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    :try_start_1
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "HtcShutdownThread-cpu"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 499
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_7

    .line 500
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 501
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :cond_7
    :goto_3
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 511
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 513
    :try_start_2
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "HtcShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 515
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_8

    .line 516
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 517
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 525
    :cond_8
    :goto_4
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    new-instance v8, Lcom/htc/app/HtcShutdownThread$3;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$3;-><init>()V

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 527
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 528
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 425
    .end local v0           #bUseAnim:Z
    .end local v6           #home:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 449
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    .restart local v6       #home:Landroid/content/Intent;
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 453
    :goto_5
    const-string/jumbo v7, "zchgd_onmode"

    const-string v8, "stopped"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    .line 476
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    .restart local v0       #bUseAnim:Z
    :cond_a
    new-instance v7, Lcom/htc/shutdown/HtcShutdownScreen;

    const v8, 0x1030005

    invoke-direct {v7, p0, v8}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    .line 477
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v7, v8}, Lcom/htc/shutdown/HtcShutdownScreen;->setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 478
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 479
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 481
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 483
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7, v11}, Lcom/htc/shutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 484
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->show()V

    .line 486
    sput-boolean v11, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 503
    :catch_0
    move-exception v3

    .line 506
    .local v3, e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 519
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 522
    .restart local v3       #e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 451
    .end local v0           #bUseAnim:Z
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    :catch_2
    move-exception v7

    goto :goto_5
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x1

    .line 395
    sput-boolean v4, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 396
    const-string v2, "sys.shutdown.mode"

    const-string v3, "hibernate"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    .local v1, nowait:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 406
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 409
    return-void

    .line 402
    .end local v1           #nowait:I
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #nowait:I
    goto :goto_0
.end method

.method private static isUseAnimation()Z
    .locals 11

    .prologue
    .line 1396
    new-instance v6, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v6}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    .line 1397
    .local v6, mReader:Lcom/htc/shutdown/ConfigReader;
    new-instance v5, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v5}, Lcom/htc/shutdown/ConfigData;-><init>()V

    .line 1398
    .local v5, mData:Lcom/htc/shutdown/ConfigData;
    const/4 v8, 0x0

    .line 1399
    .local v8, useAnimation:Z
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1403
    .local v7, str_cid:Ljava/lang/String;
    const-string v3, "/data/data/cw/animation.xml"

    .line 1404
    .local v3, cw_config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v2, cwConfig:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1408
    invoke-virtual {v6, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1411
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1414
    const/4 v9, 0x1

    .line 1476
    :goto_0
    return v9

    .line 1418
    :cond_0
    if-eqz v7, :cond_6

    .line 1422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1426
    .local v1, config_path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1428
    invoke-virtual {v6, v1}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1430
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 1433
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1435
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 1469
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1470
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/customize/resource/shutdown.zip"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v4, defaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1472
    const/4 v8, 0x1

    .end local v4           #defaultFile:Ljava/io/File;
    :cond_2
    move v9, v8

    .line 1476
    goto :goto_0

    .line 1439
    .restart local v0       #config:Ljava/io/File;
    .restart local v1       #config_path:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1442
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 1447
    :cond_5
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1449
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1453
    const/4 v8, 0x1

    goto :goto_1

    .line 1459
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_6
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1461
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1465
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 384
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 385
    sput-object p1, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 386
    invoke-static {p0, p2}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 387
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 150
    sget-object v9, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 151
    :try_start_0
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_1

    .line 154
    monitor-exit v9

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz p1, :cond_3

    .line 172
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v8, :cond_2

    .line 173
    const v5, 0x20400ce

    .line 174
    .local v5, idTitle:I
    const v2, 0x20400cf

    .line 175
    .local v2, idMessage:I
    const v4, 0x20400d0

    .line 176
    .local v4, idPositive:I
    const v3, 0x1040009

    .line 184
    .local v3, idNegative:I
    :goto_1
    new-instance v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$1;

    invoke-direct {v9}, Lcom/htc/app/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v8, v3, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 211
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v1, v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 212
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 214
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 216
    sget-object v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 217
    .local v7, version:F
    const/high16 v8, 0x4000

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    .line 218
    invoke-static {p0, v1, v7}, Lcom/htc/app/HtcShutdownThread;->updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V

    goto :goto_0

    .line 156
    .end local v0           #closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    .end local v7           #version:F
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 178
    :cond_2
    const v5, 0x1040137

    .line 179
    .restart local v5       #idTitle:I
    const v2, 0x104013c

    .line 180
    .restart local v2       #idMessage:I
    const v4, 0x1040013

    .line 181
    .restart local v4       #idPositive:I
    const v3, 0x1040009

    .restart local v3       #idNegative:I
    goto :goto_1

    .line 222
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    :cond_3
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v8, :cond_4

    .line 224
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .end local v6           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private static updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V
    .locals 18
    .parameter "context"
    .parameter "dialog"
    .parameter "version"

    .prologue
    .line 270
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v14, "HtcShutdownThread"

    const-string v15, "updateSkinResource(), dialog is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 276
    .local v1, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 277
    .local v4, config:Landroid/content/res/Configuration;
    iget-object v12, v4, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 280
    .local v12, skinPackage:Ljava/lang/String;
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 281
    .local v8, positiveBtn:Landroid/widget/Button;
    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 283
    .local v7, negativeBtn:Landroid/widget/Button;
    const/high16 v14, 0x4080

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_6

    .line 284
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 285
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 287
    .local v9, res:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    const-string v16, "com.htc"

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 290
    .local v3, colorId:I
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 292
    .local v2, button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_3

    .line 294
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    :cond_3
    if-eqz v7, :cond_0

    .line 299
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 364
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v7           #negativeBtn:Landroid/widget/Button;
    .end local v8           #positiveBtn:Landroid/widget/Button;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v12           #skinPackage:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_0

    .line 302
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v7       #negativeBtn:Landroid/widget/Button;
    .restart local v8       #positiveBtn:Landroid/widget/Button;
    .restart local v12       #skinPackage:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 304
    .local v13, themeres:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    invoke-virtual {v13, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 307
    .restart local v3       #colorId:I
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 309
    .restart local v2       #button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_5

    .line 311
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 314
    :cond_5
    if-eqz v7, :cond_0

    .line 316
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 325
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v13           #themeres:Landroid/content/res/Resources;
    :cond_6
    const/high16 v14, 0x4060

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_9

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_left"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 327
    .local v5, leftBtnResId:I
    const-string v6, "popup_bottom_left"

    .line 328
    .local v6, leftBtnResStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_right"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 329
    .local v10, rightBtnResId:I
    const-string v11, "popup_bottom_right"

    .line 336
    .local v11, rightBtnResStr:Ljava/lang/String;
    :goto_1
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 338
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 340
    .restart local v9       #res:Landroid/content/res/Resources;
    if-eqz v8, :cond_8

    .line 342
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :cond_8
    if-eqz v7, :cond_0

    .line 347
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 331
    .end local v5           #leftBtnResId:I
    .end local v6           #leftBtnResStr:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v10           #rightBtnResId:I
    .end local v11           #rightBtnResStr:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "command_bar_btn"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5       #leftBtnResId:I
    move v10, v5

    .line 332
    .restart local v10       #rightBtnResId:I
    const-string v6, "command_bar_btn"

    .restart local v6       #leftBtnResStr:Ljava/lang/String;
    move-object v11, v6

    .restart local v11       #rightBtnResStr:Ljava/lang/String;
    goto :goto_1

    .line 351
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 353
    .restart local v13       #themeres:Landroid/content/res/Resources;
    if-eqz v8, :cond_b

    .line 355
    const-string v14, "drawable"

    invoke-virtual {v13, v11, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    :cond_b
    if-eqz v7, :cond_0

    .line 360
    const-string v14, "drawable"

    invoke-virtual {v13, v6, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 556
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 557
    monitor-exit v1

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 572
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 573
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/htc/app/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/htc/app/HtcShutdownThread$5;-><init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 585
    .local v2, endTime:J
    iget-object v5, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 586
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 588
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 598
    .end local v0           #delay:J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    return-void

    .line 594
    .restart local v0       #delay:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v4

    goto :goto_0

    .line 598
    .end local v0           #delay:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 568
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 562
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 563
    return-void
.end method

.method public run()V
    .locals 57

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 617
    const/4 v12, 0x1

    .line 618
    .local v12, PHONE_TYPE_GSM:I
    const/4 v11, 0x2

    .line 619
    .local v11, PHONE_TYPE_CDMA:I
    const/4 v13, 0x5

    .line 622
    .local v13, PHONE_TYPE_SUB_GSM:I
    const/16 v34, 0x0

    .line 625
    .local v34, nfcOff:Z
    const/16 v42, 0x0

    .line 626
    .local v42, radioOff:Z
    const/16 v40, 0x0

    .line 627
    .local v40, radioGsmOff:Z
    const/16 v38, 0x0

    .line 628
    .local v38, radioCdmaOff:Z
    const/16 v43, 0x0

    .line 630
    .local v43, radioSubGsmOff:Z
    const/16 v52, 0x0

    .line 631
    .local v52, wifiOff:Z
    const/16 v50, 0x0

    .line 632
    .local v50, wifiApOff:Z
    const/16 v55, 0x0

    .line 634
    .local v55, wimaxOff:Z
    const/16 v45, 0x0

    .line 636
    .local v45, radioWasOn:Z
    const/16 v41, 0x0

    .line 637
    .local v41, radioGsmWasOn:Z
    const/16 v39, 0x0

    .line 638
    .local v39, radioCdmaWasOn:Z
    const/16 v44, 0x0

    .line 640
    .local v44, radioSubGsmWasOn:Z
    const/16 v53, 0x0

    .line 641
    .local v53, wifiWasOn:Z
    const/16 v51, 0x0

    .line 642
    .local v51, wifiApWasOn:Z
    const/16 v56, 0x0

    .line 644
    .local v56, wimaxWasOn:Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 646
    const/4 v2, 0x1

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    .line 648
    new-instance v5, Lcom/htc/app/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/app/HtcShutdownThread$6;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 655
    .local v5, br:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v14

    .line 657
    .local v14, alarm:Landroid/app/IAlarmManager;
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_1e

    .line 659
    :try_start_0
    invoke-interface {v14}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1d

    .line 665
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 667
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v27, v2, v6

    .line 679
    .local v27, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 680
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v27, v6

    .line 682
    .local v18, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v18, v6

    if-gtz v2, :cond_1f

    .line 692
    .end local v18           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v33

    .line 697
    .local v33, nfc:Landroid/nfc/INfcAdapter;
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v36

    .line 699
    .local v36, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v16

    .line 702
    .local v16, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v32

    .line 706
    .local v32, mount:Landroid/os/storage/IMountService;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v49

    .line 708
    .local v49, wifi:Landroid/net/wifi/IWifiManager;
    const-string v2, "wimax"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;

    move-result-object v54

    .line 710
    .local v54, wimax:Lcom/htc/net/wimax/IWimaxController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 712
    .local v10, IsAirplaneMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 716
    .local v48, screenBrightnessMode:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v47

    .line 722
    .local v47, screenBrightness:I
    :goto_4
    if-nez v48, :cond_20

    .line 723
    const-string v2, "sys.shutdown.brightness"

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v47

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_5
    const-string v2, "sys.shutdown.nfc"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :try_start_3
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_2

    if-eqz v33, :cond_2

    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    :cond_2
    const/16 v34, 0x1

    .line 734
    :goto_6
    if-nez v34, :cond_3

    .line 737
    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 743
    :cond_3
    :goto_7
    const-string v2, "sys.shutdown.nfc"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    if-eqz v16, :cond_4

    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_22

    :cond_4
    const/16 v17, 0x1

    .line 749
    .local v17, bluetoothOff:Z
    :goto_8
    if-nez v17, :cond_5

    .line 752
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 761
    :cond_5
    :goto_9
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 763
    if-eqz v36, :cond_6

    :try_start_5
    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_6
    const/16 v40, 0x1

    .line 764
    :goto_a
    if-eqz v36, :cond_8

    .line 765
    if-nez v10, :cond_7

    .line 766
    const/16 v41, 0x1

    .line 769
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 778
    :cond_8
    :goto_b
    if-eqz v36, :cond_9

    :try_start_6
    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_9
    const/16 v38, 0x1

    .line 779
    :goto_c
    if-eqz v36, :cond_b

    .line 780
    if-nez v10, :cond_a

    .line 781
    const/16 v39, 0x1

    .line 784
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 841
    :cond_b
    :goto_d
    if-eqz v49, :cond_c

    :try_start_7
    invoke-interface/range {v49 .. v49}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    :cond_c
    const/16 v52, 0x1

    .line 843
    :goto_e
    if-nez v52, :cond_d

    .line 846
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9

    .line 847
    const/16 v53, 0x1

    .line 856
    :cond_d
    :goto_f
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_35

    .line 858
    if-eqz v49, :cond_e

    :try_start_8
    invoke-interface/range {v49 .. v49}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_32

    :cond_e
    const/16 v50, 0x1

    .line 860
    :goto_10
    if-nez v50, :cond_f

    .line 863
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    .line 864
    const/16 v51, 0x1

    .line 873
    :cond_f
    :goto_11
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_34

    .line 875
    if-eqz v54, :cond_10

    :try_start_9
    invoke-interface/range {v54 .. v54}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    :cond_10
    const/16 v55, 0x1

    .line 877
    :goto_12
    if-nez v55, :cond_11

    .line 880
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-interface {v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_b

    .line 881
    const/16 v56, 0x1

    .line 898
    :cond_11
    :goto_13
    new-instance v30, Landroid/content/Intent;

    const-string v2, "com.htc.fm.servicecommand"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v30, fmPauseIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stop"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    const/16 v31, 0x0

    .local v31, i:I
    :goto_14
    const/16 v2, 0x40

    move/from16 v0, v31

    if-ge v0, v2, :cond_19

    .line 907
    if-nez v17, :cond_12

    .line 909
    :try_start_a
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_c

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_36

    const/16 v17, 0x1

    .line 918
    :cond_12
    :goto_15
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 919
    if-nez v40, :cond_13

    .line 921
    :try_start_b
    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_d

    move-result v2

    if-nez v2, :cond_37

    const/16 v40, 0x1

    .line 928
    :cond_13
    :goto_16
    if-nez v38, :cond_14

    .line 930
    :try_start_c
    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_e

    move-result v2

    if-nez v2, :cond_38

    const/16 v38, 0x1

    .line 972
    :cond_14
    :goto_17
    if-nez v52, :cond_15

    .line 974
    :try_start_d
    invoke-interface/range {v49 .. v49}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_12

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    const/16 v52, 0x1

    .line 982
    :cond_15
    :goto_18
    if-nez v50, :cond_16

    .line 984
    :try_start_e
    invoke-interface/range {v49 .. v49}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_13

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_40

    const/16 v50, 0x1

    .line 992
    :cond_16
    :goto_19
    if-nez v55, :cond_17

    .line 994
    :try_start_f
    invoke-interface/range {v54 .. v54}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_14

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    const/16 v55, 0x1

    .line 1002
    :cond_17
    :goto_1a
    if-nez v34, :cond_18

    .line 1004
    :try_start_10
    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_15

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    const/16 v34, 0x1

    .line 1013
    :cond_18
    :goto_1b
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1014
    if-eqz v40, :cond_44

    if-eqz v38, :cond_44

    if-eqz v17, :cond_44

    if-eqz v52, :cond_44

    if-eqz v50, :cond_44

    if-eqz v55, :cond_44

    if-eqz v34, :cond_44

    .line 1037
    :cond_19
    :goto_1c
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1038
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radioCdmaOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nfcOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    if-eqz v40, :cond_1a

    if-eqz v38, :cond_1a

    if-eqz v17, :cond_1a

    if-eqz v52, :cond_1a

    if-eqz v50, :cond_1a

    if-nez v55, :cond_1b

    .line 1043
    :cond_1a
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_1b

    .line 1044
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1046
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_1b
    :goto_1d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_50

    .line 1085
    const-string v2, "sys.shutdown.nfc"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    if-eqz v33, :cond_1c

    :try_start_11
    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    :cond_1c
    const/16 v34, 0x1

    .line 1089
    :goto_1e
    if-nez v34, :cond_1d

    .line 1092
    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_16

    .line 1098
    :cond_1d
    :goto_1f
    const/16 v31, 0x0

    :goto_20
    if-nez v34, :cond_4c

    const/16 v2, 0x18

    move/from16 v0, v31

    if-ge v0, v2, :cond_4c

    .line 1100
    :try_start_12
    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_17

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    const/16 v34, 0x1

    .line 1105
    :goto_21
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1098
    add-int/lit8 v31, v31, 0x1

    goto :goto_20

    .line 673
    .end local v10           #IsAirplaneMode:I
    .end local v16           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v17           #bluetoothOff:Z
    .end local v27           #endTime:J
    .end local v30           #fmPauseIntent:Landroid/content/Intent;
    .end local v31           #i:I
    .end local v32           #mount:Landroid/os/storage/IMountService;
    .end local v33           #nfc:Landroid/nfc/INfcAdapter;
    .end local v36           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v47           #screenBrightness:I
    .end local v48           #screenBrightnessMode:I
    .end local v49           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v54           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 688
    .restart local v18       #delay:J
    .restart local v27       #endTime:J
    :cond_1f
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_3

    .line 689
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 692
    .end local v18           #delay:J
    :catchall_0
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw v2

    .line 718
    .restart local v10       #IsAirplaneMode:I
    .restart local v16       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v32       #mount:Landroid/os/storage/IMountService;
    .restart local v33       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v36       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v48       #screenBrightnessMode:I
    .restart local v49       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v54       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1
    move-exception v20

    .line 719
    .local v20, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v47, 0x0

    .restart local v47       #screenBrightness:I
    goto/16 :goto_4

    .line 726
    .end local v20           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_20
    const-string v2, "sys.shutdown.brightness"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 732
    :cond_21
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 739
    :catch_2
    move-exception v29

    .line 740
    .local v29, ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during NFC shutdown"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    const/16 v34, 0x1

    goto/16 :goto_7

    .line 747
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 754
    :catch_3
    move-exception v29

    .line 757
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v17, 0x1

    .restart local v17       #bluetoothOff:Z
    goto/16 :goto_9

    .line 763
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_23
    const/16 v40, 0x0

    goto/16 :goto_a

    .line 771
    :catch_4
    move-exception v29

    .line 774
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    goto/16 :goto_b

    .line 778
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_24
    const/16 v38, 0x0

    goto/16 :goto_c

    .line 786
    :catch_5
    move-exception v29

    .line 789
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    .line 790
    goto/16 :goto_d

    .line 791
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_25
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 793
    if-eqz v36, :cond_26

    :try_start_15
    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_26
    const/16 v40, 0x1

    .line 794
    :goto_22
    if-eqz v36, :cond_28

    .line 795
    if-nez v10, :cond_27

    .line 796
    const/16 v41, 0x1

    .line 799
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7

    .line 808
    :cond_28
    :goto_23
    if-eqz v36, :cond_29

    :try_start_16
    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_29
    const/16 v43, 0x1

    .line 809
    :goto_24
    if-eqz v36, :cond_b

    .line 810
    if-nez v10, :cond_2a

    .line 811
    const/16 v44, 0x1

    .line 814
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2, v13}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_d

    .line 816
    :catch_6
    move-exception v29

    .line 819
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v43, 0x1

    .line 820
    goto/16 :goto_d

    .line 793
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_2b
    const/16 v40, 0x0

    goto :goto_22

    .line 801
    :catch_7
    move-exception v29

    .line 804
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    goto :goto_23

    .line 808
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_2c
    const/16 v43, 0x0

    goto :goto_24

    .line 824
    :cond_2d
    if-eqz v36, :cond_2e

    :try_start_17
    invoke-interface/range {v36 .. v36}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_30

    :cond_2e
    const/16 v42, 0x1

    .line 825
    :goto_25
    if-eqz v36, :cond_b

    .line 826
    if-nez v10, :cond_2f

    .line 827
    const/16 v45, 0x1

    .line 830
    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_8

    goto/16 :goto_d

    .line 832
    :catch_8
    move-exception v29

    .line 835
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v42, 0x1

    .line 836
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_d

    .line 824
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_30
    const/16 v42, 0x0

    goto :goto_25

    .line 841
    :cond_31
    const/16 v52, 0x0

    goto/16 :goto_e

    .line 850
    :catch_9
    move-exception v29

    .line 853
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v52, 0x1

    goto/16 :goto_f

    .line 858
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_32
    const/16 v50, 0x0

    goto/16 :goto_10

    .line 867
    :catch_a
    move-exception v29

    .line 870
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v50, 0x1

    goto/16 :goto_11

    .line 875
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_33
    const/16 v55, 0x0

    goto/16 :goto_12

    .line 884
    :catch_b
    move-exception v29

    .line 887
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v55, 0x1

    .line 888
    goto/16 :goto_13

    .line 891
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_34
    const/16 v55, 0x1

    goto/16 :goto_13

    .line 894
    :cond_35
    const/16 v50, 0x1

    .line 895
    const/16 v55, 0x1

    goto/16 :goto_13

    .line 909
    .restart local v30       #fmPauseIntent:Landroid/content/Intent;
    .restart local v31       #i:I
    :cond_36
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 911
    :catch_c
    move-exception v29

    .line 914
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v17, 0x1

    goto/16 :goto_15

    .line 921
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_37
    const/16 v40, 0x0

    goto/16 :goto_16

    .line 922
    :catch_d
    move-exception v29

    .line 925
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    goto/16 :goto_16

    .line 930
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_38
    const/16 v38, 0x0

    goto/16 :goto_17

    .line 931
    :catch_e
    move-exception v29

    .line 934
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    .line 935
    goto/16 :goto_17

    .line 937
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_39
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 938
    if-nez v40, :cond_3a

    .line 940
    :try_start_18
    move-object/from16 v0, v36

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_f

    move-result v2

    if-nez v2, :cond_3b

    const/16 v40, 0x1

    .line 947
    :cond_3a
    :goto_26
    if-nez v43, :cond_14

    .line 949
    :try_start_19
    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_10

    move-result v2

    if-nez v2, :cond_3c

    const/16 v43, 0x1

    :goto_27
    goto/16 :goto_17

    .line 940
    :cond_3b
    const/16 v40, 0x0

    goto :goto_26

    .line 941
    :catch_f
    move-exception v29

    .line 944
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    goto :goto_26

    .line 949
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3c
    const/16 v43, 0x0

    goto :goto_27

    .line 950
    :catch_10
    move-exception v29

    .line 953
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v43, 0x1

    .line 954
    goto/16 :goto_17

    .line 958
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3d
    if-nez v42, :cond_14

    .line 960
    :try_start_1a
    invoke-interface/range {v36 .. v36}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_3e

    const/16 v42, 0x1

    .line 961
    :goto_28
    if-eqz v42, :cond_14

    .line 962
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_11

    goto/16 :goto_17

    .line 964
    :catch_11
    move-exception v29

    .line 967
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v42, 0x1

    .line 968
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_17

    .line 960
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3e
    const/16 v42, 0x0

    goto :goto_28

    .line 974
    :cond_3f
    const/16 v52, 0x0

    goto/16 :goto_18

    .line 975
    :catch_12
    move-exception v29

    .line 978
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v52, 0x1

    goto/16 :goto_18

    .line 984
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_40
    const/16 v50, 0x0

    goto/16 :goto_19

    .line 985
    :catch_13
    move-exception v29

    .line 988
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v50, 0x1

    goto/16 :goto_19

    .line 994
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_41
    const/16 v55, 0x0

    goto/16 :goto_1a

    .line 995
    :catch_14
    move-exception v29

    .line 998
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v55, 0x1

    goto/16 :goto_1a

    .line 1004
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_42
    const/16 v34, 0x0

    goto/16 :goto_1b

    .line 1005
    :catch_15
    move-exception v29

    .line 1006
    .restart local v29       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during NFC shutdown"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    const/16 v34, 0x1

    goto/16 :goto_1b

    .line 1019
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_43
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1020
    if-eqz v40, :cond_44

    if-eqz v43, :cond_44

    if-eqz v17, :cond_44

    if-eqz v52, :cond_44

    if-eqz v50, :cond_44

    if-eqz v55, :cond_44

    if-nez v34, :cond_19

    .line 1033
    :cond_44
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 906
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_14

    .line 1027
    :cond_45
    if-eqz v42, :cond_44

    if-eqz v17, :cond_44

    if-eqz v52, :cond_44

    if-eqz v50, :cond_44

    if-eqz v55, :cond_44

    if-eqz v34, :cond_44

    goto/16 :goto_1c

    .line 1050
    :cond_46
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1051
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radioSubGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nfcOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-eqz v40, :cond_47

    if-eqz v43, :cond_47

    if-eqz v17, :cond_47

    if-eqz v52, :cond_47

    if-eqz v50, :cond_47

    if-nez v55, :cond_1b

    .line 1056
    :cond_47
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_1b

    .line 1057
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1059
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1065
    :cond_48
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nfcOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    if-eqz v42, :cond_49

    if-eqz v17, :cond_49

    if-eqz v52, :cond_49

    if-eqz v50, :cond_49

    if-nez v55, :cond_1b

    .line 1070
    :cond_49
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_1b

    .line 1071
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1073
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    if-nez v42, :cond_1b

    .line 1077
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_1d

    .line 1087
    :cond_4a
    const/16 v34, 0x0

    goto/16 :goto_1e

    .line 1094
    :catch_16
    move-exception v29

    .line 1095
    .restart local v29       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during NFC shutdown"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    const/16 v34, 0x1

    goto/16 :goto_1f

    .line 1100
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_4b
    const/16 v34, 0x0

    goto/16 :goto_21

    .line 1101
    :catch_17
    move-exception v29

    .line 1102
    .restart local v29       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during NFC shutdown"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    const/16 v34, 0x1

    goto/16 :goto_21

    .line 1107
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_4c
    const-string v2, "sys.shutdown.nfc"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    if-nez v34, :cond_4d

    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot disable NFC, nfcOff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_4d
    new-instance v35, Lcom/htc/app/HtcShutdownThread$7;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/HtcShutdownThread$7;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 1123
    .local v35, observer:Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 1124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v25, v2, v6

    .line 1125
    .local v25, endShutdownTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1127
    if-eqz v32, :cond_4e

    .line 1128
    :try_start_1b
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1e

    .line 1137
    :cond_4e
    :goto_29
    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_4f

    .line 1138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v25, v6

    .line 1139
    .restart local v18       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v18, v6

    if-gtz v2, :cond_5f

    .line 1149
    .end local v18           #delay:J
    :cond_4f
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 1152
    .end local v25           #endShutdownTime:J
    .end local v35           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_50
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 1158
    .local v15, am:Landroid/app/IActivityManager;
    if-eqz v15, :cond_51

    .line 1160
    :try_start_1d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_60

    .line 1161
    invoke-interface {v15}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_19

    .line 1171
    :cond_51
    :goto_2a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v21, v2, v6

    .line 1172
    .local v21, endAnimTime:J
    :goto_2b
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_52

    .line 1173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v18, v21, v2

    .line 1174
    .restart local v18       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_61

    .line 1186
    .end local v18           #delay:J
    :cond_52
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v2, :cond_53

    .line 1190
    :try_start_1e
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_29

    .line 1206
    :cond_53
    :goto_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_54

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1208
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_55

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1210
    :cond_55
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v37

    .line 1214
    .local v37, pm:Landroid/os/IPowerManager;
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_28

    .line 1221
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissProgressDialog()V

    .line 1223
    const-string v2, "sys.shutdown.resume.count"

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const/16 v2, 0x2710

    invoke-static {v2}, Landroid/os/Power;->shutdownEFSSync_wait(I)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissShutdownScreen()V

    .line 1230
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 1235
    const-string v2, "shutdown"

    invoke-static {v2}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    .line 1236
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_56

    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_56
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3, v4, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_27

    .line 1246
    :goto_2e
    const-string v2, "dev.bootreason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtc_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    .line 1249
    .local v46, rtc_alarm:Z
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1251
    if-eqz v41, :cond_57

    if-nez v46, :cond_57

    .line 1253
    const/4 v2, 0x1

    :try_start_21
    move-object/from16 v0, v36

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_1f

    .line 1263
    :cond_57
    :goto_2f
    if-eqz v39, :cond_58

    if-nez v46, :cond_58

    .line 1265
    const/4 v2, 0x1

    :try_start_22
    move-object/from16 v0, v36

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_20

    .line 1315
    :cond_58
    :goto_30
    if-eqz v53, :cond_59

    .line 1317
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_23
    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_22

    .line 1327
    :cond_59
    :goto_31
    if-eqz v51, :cond_5a

    .line 1329
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_24
    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_23

    .line 1339
    :cond_5a
    :goto_32
    if-eqz v56, :cond_5b

    .line 1341
    const/4 v2, 0x1

    :try_start_25
    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_24

    .line 1351
    :cond_5b
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v23, v2, v6

    .line 1353
    .local v23, endRestartTime:J
    :cond_5c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v18, v23, v2

    .line 1354
    .restart local v18       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_65

    .line 1369
    :goto_34
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1371
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v2, "sys.shutdown.resume.date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v2, "sys.shutdown.resume.timestamp"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    if-eqz v15, :cond_5d

    .line 1376
    invoke-interface {v15}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 1379
    :cond_5d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_5e

    .line 1381
    :try_start_26
    invoke-interface {v14}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_25

    .line 1386
    :cond_5e
    :goto_35
    sget-object v3, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1387
    const/4 v2, 0x0

    :try_start_27
    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 1388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 1389
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 1390
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1391
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    throw v2

    .line 1145
    .end local v15           #am:Landroid/app/IActivityManager;
    .end local v21           #endAnimTime:J
    .end local v23           #endRestartTime:J
    .end local v37           #pm:Landroid/os/IPowerManager;
    .end local v46           #rtc_alarm:Z
    .restart local v25       #endShutdownTime:J
    .restart local v35       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_5f
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_18

    goto/16 :goto_29

    .line 1146
    :catch_18
    move-exception v2

    goto/16 :goto_29

    .line 1149
    .end local v18           #delay:J
    :catchall_2
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    throw v2

    .line 1164
    .end local v25           #endShutdownTime:J
    .end local v35           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v15       #am:Landroid/app/IActivityManager;
    :cond_60
    const/16 v2, 0x2710

    :try_start_2a
    invoke-interface {v15, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_19

    goto/16 :goto_2a

    .line 1165
    :catch_19
    move-exception v2

    goto/16 :goto_2a

    .line 1180
    .restart local v18       #delay:J
    .restart local v21       #endAnimTime:J
    :cond_61
    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_1a

    goto/16 :goto_2b

    .line 1182
    :catch_1a
    move-exception v2

    goto/16 :goto_2b

    .line 1274
    .end local v18           #delay:J
    .restart local v37       #pm:Landroid/os/IPowerManager;
    .restart local v46       #rtc_alarm:Z
    :cond_62
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1276
    if-eqz v41, :cond_63

    if-nez v46, :cond_63

    .line 1278
    const/4 v2, 0x1

    :try_start_2c
    move-object/from16 v0, v36

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_21

    .line 1288
    :cond_63
    :goto_36
    if-eqz v44, :cond_58

    if-nez v46, :cond_58

    .line 1290
    const/4 v2, 0x1

    :try_start_2d
    move-object/from16 v0, v36

    invoke-interface {v0, v2, v13}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_1b

    goto/16 :goto_30

    .line 1294
    :catch_1b
    move-exception v2

    goto/16 :goto_30

    .line 1302
    :cond_64
    if-eqz v45, :cond_58

    if-nez v46, :cond_58

    .line 1304
    const/4 v2, 0x1

    :try_start_2e
    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_1c

    goto/16 :goto_30

    .line 1308
    :catch_1c
    move-exception v2

    goto/16 :goto_30

    .line 1362
    .restart local v18       #delay:J
    .restart local v23       #endRestartTime:J
    :cond_65
    :try_start_2f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_26

    .line 1366
    :goto_37
    const-string v2, "init.svc.bootanim"

    const-string v3, "stopped"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto/16 :goto_34

    .line 660
    .end local v10           #IsAirplaneMode:I
    .end local v15           #am:Landroid/app/IActivityManager;
    .end local v16           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v17           #bluetoothOff:Z
    .end local v18           #delay:J
    .end local v21           #endAnimTime:J
    .end local v23           #endRestartTime:J
    .end local v27           #endTime:J
    .end local v30           #fmPauseIntent:Landroid/content/Intent;
    .end local v31           #i:I
    .end local v32           #mount:Landroid/os/storage/IMountService;
    .end local v33           #nfc:Landroid/nfc/INfcAdapter;
    .end local v36           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v37           #pm:Landroid/os/IPowerManager;
    .end local v46           #rtc_alarm:Z
    .end local v47           #screenBrightness:I
    .end local v48           #screenBrightnessMode:I
    .end local v49           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v54           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1d
    move-exception v2

    goto/16 :goto_1

    .line 1133
    .restart local v10       #IsAirplaneMode:I
    .restart local v16       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v17       #bluetoothOff:Z
    .restart local v25       #endShutdownTime:J
    .restart local v27       #endTime:J
    .restart local v30       #fmPauseIntent:Landroid/content/Intent;
    .restart local v31       #i:I
    .restart local v32       #mount:Landroid/os/storage/IMountService;
    .restart local v33       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v35       #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v36       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v47       #screenBrightness:I
    .restart local v48       #screenBrightnessMode:I
    .restart local v49       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v54       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1e
    move-exception v2

    goto/16 :goto_29

    .line 1257
    .end local v25           #endShutdownTime:J
    .end local v35           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v15       #am:Landroid/app/IActivityManager;
    .restart local v21       #endAnimTime:J
    .restart local v37       #pm:Landroid/os/IPowerManager;
    .restart local v46       #rtc_alarm:Z
    :catch_1f
    move-exception v2

    goto/16 :goto_2f

    .line 1269
    :catch_20
    move-exception v2

    goto/16 :goto_30

    .line 1282
    :catch_21
    move-exception v2

    goto :goto_36

    .line 1321
    :catch_22
    move-exception v2

    goto/16 :goto_31

    .line 1333
    :catch_23
    move-exception v2

    goto/16 :goto_32

    .line 1345
    :catch_24
    move-exception v2

    goto/16 :goto_33

    .line 1382
    .restart local v18       #delay:J
    .restart local v23       #endRestartTime:J
    :catch_25
    move-exception v2

    goto/16 :goto_35

    .line 1364
    :catch_26
    move-exception v2

    goto :goto_37

    .line 1241
    .end local v18           #delay:J
    .end local v23           #endRestartTime:J
    .end local v46           #rtc_alarm:Z
    :catch_27
    move-exception v2

    goto/16 :goto_2e

    .line 1216
    :catch_28
    move-exception v2

    goto/16 :goto_2d

    .line 1191
    .end local v37           #pm:Landroid/os/IPowerManager;
    :catch_29
    move-exception v2

    goto/16 :goto_2c
.end method
