.class public Lcom/htc/hfm/HfmClient;
.super Ljava/lang/Object;
.source "HfmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/hfm/HfmClient$Callback;,
        Lcom/htc/hfm/HfmClient$ICallback;,
        Lcom/htc/hfm/HfmClient$Action;
    }
.end annotation


# static fields
.field private static final ACTION_ABORT:I = 0x7d5

.field private static final ACTION_CANCEL_RESERVATION:I = 0x7d6

.field private static final ACTION_HFM_SERVICE:Ljava/lang/String; = "com.htc.hfm.HfmService"

.field private static final ACTION_RELEASE_SERVICE:I = 0x7d2

.field private static final ACTION_RESERVE_SERVICE:I = 0x7d1

.field private static final ACTION_RESET_TIMEOUT:I = 0x7da

.field private static final ACTION_SELECT_COMMAND:I = 0x7d4

.field private static final ACTION_SPEAK:I = 0x7d3

.field private static final ACTION_START_WAKEUP_MODE:I = 0x7d7

.field private static final ACTION_STOP_WAKEUP_MODE:I = 0x7d8

.field private static final ACTION_TEST_WAKEUP_PHRASE:I = 0x7d9

.field private static final CATEGORY_HFM_SERVICE:Ljava/lang/String; = "com.htc.hfm"

.field public static final ERROR_ABORTED:I = -0x29

.field public static final ERROR_AUDIO_COMMAND_NOT_SUPPORTED:I = -0x5

.field public static final ERROR_CANNOT_IDENTIFY_COMMAND:I = -0x33

.field public static final ERROR_CLIENT_BUSY:I = -0x1

.field public static final ERROR_CONNECT_FAILED:I = -0x3

.field public static final ERROR_HFM_NOT_ENABLED:I = -0x2

.field public static final ERROR_NUANCE_CLIENT_ERROR:I = -0x1f

.field public static final ERROR_PHRASE_NOT_ACCEPTED:I = -0x3d

.field public static final ERROR_REMOTE_EXCEPTION_OCCURRED:I = -0x4

.field public static final ERROR_RESERVE_FAILED_DUPLICATE_RESERVATION:I = -0xb

.field public static final ERROR_RESERVE_NOT_CALLED:I = -0x15

.field public static final ERROR_SELECT_COMMAND_TIMEOUT:I = -0x34

.field public static final ERROR_SERVICE_ACQUIRED_BY_OTHER:I = -0x16

.field public static final ERROR_SERVICE_BUSY:I = -0x17

.field public static final ERROR_UNKNOWN_SESSION_ID:I = -0x6

.field public static final MAX_AUDIO_POWER:F = 0.0f

.field public static final MIN_AUDIO_POWER:F = -60.0f

.field public static final PRIORITY_LEVEL_1:I = 0x3e9

.field public static final PRIORITY_LEVEL_10:I = 0x3f2

.field public static final PRIORITY_LEVEL_2:I = 0x3ea

.field private static final PRIORITY_LEVEL_2_PACKAGE_NAME:Ljava/lang/String; = "com.htc.htcspeak"

.field public static final PRIORITY_LEVEL_3:I = 0x3eb

.field public static final PRIORITY_LEVEL_4:I = 0x3ec

.field public static final PRIORITY_LEVEL_5:I = 0x3ed

.field public static final PRIORITY_LEVEL_6:I = 0x3ee

.field public static final PRIORITY_LEVEL_7:I = 0x3ef

.field public static final PRIORITY_LEVEL_8:I = 0x3f0

.field public static final PRIORITY_LEVEL_9:I = 0x3f1

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_PHRASE_ACCEPTED:I = 0x5

.field public static final SUCCESS_SERVICE_NOT_READY:I = 0x2

.field public static final SUCCESS_SERVICE_READY:I = 0x1

.field public static final SUCCESS_USER_ABORT:I = 0x4

.field public static final SUCCESS_WAIT_FOR_CALLBACK:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field public static final WAKEUP_MODE_ENROLL:I = 0x2

.field public static final WAKEUP_MODE_LONG:I = 0x1

.field public static final WAKEUP_MODE_SHORT:I


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mAppInfo:Landroid/os/Bundle;

.field private mByPassCheck:Z

.field private mCallback:Lcom/htc/hfm/HfmClient$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

.field private mIHfmService:Lcom/htc/hfm/IHfmService;

.field private mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

.field private mIsBound:Z

.field private mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSessionId:Ljava/lang/String;

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/htc/hfm/HfmClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/hfm/HfmClient$Callback;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "callback"
    .parameter "context"
    .parameter "appInfo"
    .parameter "packageName"
    .parameter "actionName"
    .parameter "timeout"
    .parameter "priority"

    .prologue
    .line 449
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Lcom/htc/hfm/HfmClient$1;

    invoke-direct {v0, p0}, Lcom/htc/hfm/HfmClient$1;-><init>(Lcom/htc/hfm/HfmClient;)V

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 381
    new-instance v0, Lcom/htc/hfm/HfmClient$2;

    invoke-direct {v0, p0}, Lcom/htc/hfm/HfmClient$2;-><init>(Lcom/htc/hfm/HfmClient;)V

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    .line 455
    if-nez p2, :cond_1

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    iput-object p3, p0, Lcom/htc/hfm/HfmClient;->mAppInfo:Landroid/os/Bundle;

    .line 459
    iput-object p2, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    .line 461
    if-nez p4, :cond_2

    .line 462
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    const/16 v0, 0x3ea

    if-ne p7, v0, :cond_3

    .line 465
    const-string v0, "com.htc.htcspeak"

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mPackageName:Ljava/lang/String;

    .line 470
    :goto_0
    if-nez p5, :cond_4

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "actionName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_3
    iput-object p4, p0, Lcom/htc/hfm/HfmClient;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 473
    :cond_4
    iput-object p5, p0, Lcom/htc/hfm/HfmClient;->mActionName:Ljava/lang/String;

    .line 475
    if-gez p6, :cond_5

    .line 476
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/hfm/HfmClient;->mTimeout:I

    .line 481
    :goto_1
    const/16 v0, 0x3e9

    if-lt p7, v0, :cond_6

    const/16 v0, 0x3f2

    if-gt p7, v0, :cond_6

    .line 482
    iput p7, p0, Lcom/htc/hfm/HfmClient;->mPriority:I

    .line 486
    return-void

    .line 478
    :cond_5
    iput p6, p0, Lcom/htc/hfm/HfmClient;->mTimeout:I

    goto :goto_1

    .line 484
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown priority level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmService;->abort(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private _cancelReservation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/hfm/IHfmService;->cancelReservation(Ljava/lang/String;)I

    move-result v0

    .line 715
    .local v0, result:I
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, v0}, Lcom/htc/hfm/HfmClient$Callback;->onCancelReservationComplete(I)V

    .line 716
    return-void
.end method

.method private _next()V
    .locals 7

    .prologue
    const/4 v6, -0x4

    const/4 v5, 0x0

    .line 818
    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    if-nez v3, :cond_1

    .line 819
    sget-object v3, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    const-string v4, "current action is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->actionCode:I
    invoke-static {v3}, Lcom/htc/hfm/HfmClient$Action;->access$1200(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v0

    .line 823
    .local v0, actionCode:I
    iget-boolean v3, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 825
    :try_start_0
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->doLastStep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    iput-object v5, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    goto :goto_0

    .line 826
    :catch_0
    move-exception v2

    .line 827
    .local v2, re:Landroid/os/RemoteException;
    :try_start_1
    sget-object v3, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    const/4 v3, -0x4

    invoke-direct {p0, v0, v3}, Lcom/htc/hfm/HfmClient;->reportError(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    iput-object v5, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    goto :goto_0

    .end local v2           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iput-object v5, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    throw v3

    .line 832
    :cond_2
    iget-boolean v3, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    if-nez v3, :cond_3

    .line 833
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->bindService()Z

    move-result v1

    .line 834
    .local v1, isBound:Z
    if-nez v1, :cond_0

    .line 835
    const/4 v3, -0x3

    invoke-direct {p0, v0, v3}, Lcom/htc/hfm/HfmClient;->reportError(II)V

    .line 836
    iput-object v5, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    goto :goto_0

    .line 838
    .end local v1           #isBound:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 840
    :try_start_2
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->createSession()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 841
    :catch_1
    move-exception v2

    .line 842
    .restart local v2       #re:Landroid/os/RemoteException;
    sget-object v3, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    invoke-direct {p0, v0, v6}, Lcom/htc/hfm/HfmClient;->reportError(II)V

    .line 844
    iput-object v5, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    goto :goto_0

    .line 847
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_4
    sget-object v3, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should not happen: mIsBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _releaseService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/hfm/IHfmService;->releaseService(Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, result:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    .line 732
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, v0}, Lcom/htc/hfm/HfmClient$Callback;->onReleaseServiceComplete(I)V

    .line 733
    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/htc/hfm/HfmClient;->close()V

    .line 736
    :cond_0
    return-void
.end method

.method private _reserveService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mActionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mAppInfo:Landroid/os/Bundle;

    iget v4, p0, Lcom/htc/hfm/HfmClient;->mTimeout:I

    iget v5, p0, Lcom/htc/hfm/HfmClient;->mPriority:I

    invoke-interface/range {v0 .. v5}, Lcom/htc/hfm/IHfmService;->reserveService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v6

    .line 721
    .local v6, result:I
    const/4 v0, 0x3

    if-ne v6, v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    .line 725
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v0, v6}, Lcom/htc/hfm/HfmClient$Callback;->onReserveServiceComplete(I)V

    goto :goto_0
.end method

.method private _selectCommand()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v6, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;
    invoke-static {v6}, Lcom/htc/hfm/HfmClient$Action;->access$1300(Lcom/htc/hfm/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v5

    .line 746
    .local v5, question:[Lcom/htc/hfm/Speech;
    iget-object v6, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;
    invoke-static {v6}, Lcom/htc/hfm/HfmClient$Action;->access$1500(Lcom/htc/hfm/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v2

    .line 747
    .local v2, commands:[Lcom/htc/hfm/Speech;
    move-object v0, v2

    .local v0, arr$:[Lcom/htc/hfm/Speech;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 748
    .local v1, command:Lcom/htc/hfm/Speech;
    invoke-virtual {v1}, Lcom/htc/hfm/Speech;->getSpeechType()I

    move-result v6

    const/16 v7, 0x2be

    if-ne v6, v7, :cond_0

    .line 749
    iget-object v6, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    const/4 v7, -0x5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/hfm/HfmClient$Callback;->onSelectCommandComplete(ILjava/lang/String;)V

    .line 757
    .end local v1           #command:Lcom/htc/hfm/Speech;
    :goto_1
    return-void

    .line 747
    .restart local v1       #command:Lcom/htc/hfm/Speech;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v1           #command:Lcom/htc/hfm/Speech;
    :cond_1
    invoke-direct {p0, v5}, Lcom/htc/hfm/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 755
    invoke-direct {p0, v2}, Lcom/htc/hfm/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 756
    iget-object v6, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v7, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg3:Z
    invoke-static {v8}, Lcom/htc/hfm/HfmClient$Action;->access$1400(Lcom/htc/hfm/HfmClient$Action;)Z

    move-result v8

    invoke-interface {v6, v7, v5, v2, v8}, Lcom/htc/hfm/IHfmService;->selectCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V

    goto :goto_1
.end method

.method private _speak()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;
    invoke-static {v1}, Lcom/htc/hfm/HfmClient$Action;->access$1300(Lcom/htc/hfm/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v0

    .line 740
    .local v0, speeches:[Lcom/htc/hfm/Speech;
    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 741
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg3:Z
    invoke-static {v3}, Lcom/htc/hfm/HfmClient$Action;->access$1400(Lcom/htc/hfm/HfmClient$Action;)Z

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/htc/hfm/IHfmService;->speak(Ljava/lang/String;[Lcom/htc/hfm/Speech;Z)V

    .line 742
    return-void
.end method

.method private _startWakeUpMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg0:Lcom/htc/hfm/Speech;
    invoke-static {v1}, Lcom/htc/hfm/HfmClient$Action;->access$1600(Lcom/htc/hfm/HfmClient$Action;)Lcom/htc/hfm/Speech;

    move-result-object v0

    .line 765
    .local v0, command:Lcom/htc/hfm/Speech;
    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->convert(Lcom/htc/hfm/Speech;)V

    .line 766
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg4:I
    invoke-static {v3}, Lcom/htc/hfm/HfmClient$Action;->access$1700(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/htc/hfm/IHfmService;->startWakeUpMode(Ljava/lang/String;Lcom/htc/hfm/Speech;I)V

    .line 767
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/hfm/HfmClient;Lcom/htc/hfm/HfmClient$Action;)Lcom/htc/hfm/HfmClient$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    return-object p1
.end method

.method static synthetic access$202(Lcom/htc/hfm/HfmClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/hfm/HfmClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/hfm/HfmClient;Lcom/htc/hfm/IHfmService;)Lcom/htc/hfm/IHfmService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/hfm/HfmClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->next()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/hfm/HfmClient;)Lcom/htc/hfm/HfmClient$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    return-object v0
.end method

.method private static actionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 929
    packed-switch p0, :pswitch_data_0

    .line 951
    const-string v0, "UNKNOWN_ACTION"

    :goto_0
    return-object v0

    .line 931
    :pswitch_0
    const-string v0, "ACTION_RESERVE_SERVICE"

    goto :goto_0

    .line 933
    :pswitch_1
    const-string v0, "ACTION_RELEASE_SERVICE"

    goto :goto_0

    .line 935
    :pswitch_2
    const-string v0, "ACTION_SPEAK"

    goto :goto_0

    .line 937
    :pswitch_3
    const-string v0, "ACTION_SELECT_COMMAND"

    goto :goto_0

    .line 939
    :pswitch_4
    const-string v0, "ACTION_ABORT"

    goto :goto_0

    .line 941
    :pswitch_5
    const-string v0, "ACTION_CANCEL_RESERVATION"

    goto :goto_0

    .line 943
    :pswitch_6
    const-string v0, "ACTION_START_WAKEUP_MODE"

    goto :goto_0

    .line 945
    :pswitch_7
    const-string v0, "ACTION_STOP_WAKEUP_MODE"

    goto :goto_0

    .line 947
    :pswitch_8
    const-string v0, "ACTION_TEST_WAKEUP_PHRASE"

    goto :goto_0

    .line 949
    :pswitch_9
    const-string v0, "ACTION_RESET_TIMEOUT"

    goto :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private bindService()Z
    .locals 4

    .prologue
    .line 770
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "bindService:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.hfm.HfmService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.hfm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private convert(Lcom/htc/hfm/Speech;)V
    .locals 3
    .parameter "speech"

    .prologue
    .line 798
    if-nez p1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 802
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/htc/hfm/Speech;->convert(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convert([Lcom/htc/hfm/Speech;)V
    .locals 4
    .parameter "speeches"

    .prologue
    .line 792
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/hfm/Speech;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 793
    .local v3, speech:Lcom/htc/hfm/Speech;
    invoke-direct {p0, v3}, Lcom/htc/hfm/HfmClient;->convert(Lcom/htc/hfm/Speech;)V

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v3           #speech:Lcom/htc/hfm/Speech;
    :cond_0
    return-void
.end method

.method private createSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    sget-object v0, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "createSession:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

    invoke-interface {v0, v1, v2}, Lcom/htc/hfm/IHfmService;->connect(Ljava/lang/String;Lcom/htc/hfm/IHfmServiceCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    .line 780
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->next()V

    .line 781
    return-void
.end method

.method private destroySession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 784
    sget-object v0, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySession: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmService;->disconnect(Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    .line 789
    :cond_0
    return-void
.end method

.method private doLastStep()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 852
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->actionCode:I
    invoke-static {v1}, Lcom/htc/hfm/HfmClient$Action;->access$1200(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v0

    .line 853
    .local v0, actionCode:I
    packed-switch v0, :pswitch_data_0

    .line 885
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return-void

    .line 855
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_reserveService()V

    goto :goto_0

    .line 858
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_releaseService()V

    goto :goto_0

    .line 861
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_cancelReservation()V

    goto :goto_0

    .line 864
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_speak()V

    goto :goto_0

    .line 867
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_selectCommand()V

    goto :goto_0

    .line 870
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_abort()V

    goto :goto_0

    .line 873
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_startWakeUpMode()V

    goto :goto_0

    .line 876
    :pswitch_7
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/hfm/IHfmService;->stopWakeUpMode(Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :pswitch_8
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    #getter for: Lcom/htc/hfm/HfmClient$Action;->arg5:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/hfm/HfmClient$Action;->access$1800(Lcom/htc/hfm/HfmClient$Action;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/hfm/IHfmService;->testWakeUpPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :pswitch_9
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/hfm/IHfmService;->resetTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private declared-synchronized next()V
    .locals 3

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->_next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    monitor-exit p0

    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 810
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private next(Lcom/htc/hfm/HfmClient$Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 701
    sget-object v0, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/htc/hfm/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/hfm/HfmClient$Action;->access$1200(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/hfm/HfmClient;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    if-eqz v0, :cond_0

    .line 704
    #getter for: Lcom/htc/hfm/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/hfm/HfmClient$Action;->access$1200(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/hfm/HfmClient;->reportError(II)V

    .line 711
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/htc/hfm/HfmClient;->isHandFreeModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/hfm/HfmClient;->mByPassCheck:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/hfm/HfmClient;->mPriority:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    .line 706
    #getter for: Lcom/htc/hfm/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/hfm/HfmClient$Action;->access$1200(Lcom/htc/hfm/HfmClient$Action;)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/htc/hfm/HfmClient;->reportError(II)V

    goto :goto_0

    .line 708
    :cond_1
    iput-object p1, p0, Lcom/htc/hfm/HfmClient;->mCurrentAction:Lcom/htc/hfm/HfmClient$Action;

    .line 709
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->next()V

    goto :goto_0
.end method

.method private reportError(II)V
    .locals 4
    .parameter "actionCode"
    .parameter "statusCode"

    .prologue
    .line 891
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportError: actionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/hfm/HfmClient;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    packed-switch p1, :pswitch_data_0

    .line 920
    :try_start_0
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :goto_0
    return-void

    .line 895
    :pswitch_0
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onReserveServiceComplete(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 898
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onReleaseServiceComplete(I)V

    goto :goto_0

    .line 901
    :pswitch_2
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onCancelReservationComplete(I)V

    goto :goto_0

    .line 904
    :pswitch_3
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onSpeakComplete(I)V

    goto :goto_0

    .line 907
    :pswitch_4
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/htc/hfm/HfmClient$Callback;->onSelectCommandComplete(ILjava/lang/String;)V

    goto :goto_0

    .line 910
    :pswitch_5
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onAbortComplete(I)V

    goto :goto_0

    .line 914
    :pswitch_6
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onWakeUpModeComplete(I)V

    goto :goto_0

    .line 917
    :pswitch_7
    iget-object v1, p0, Lcom/htc/hfm/HfmClient;->mCallback:Lcom/htc/hfm/HfmClient$Callback;

    invoke-virtual {v1, p2}, Lcom/htc/hfm/HfmClient$Callback;->onTestWakeUpPhraseComplete(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 3

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelReservation()V
    .locals 3

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "close:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    invoke-direct {p0}, Lcom/htc/hfm/HfmClient;->destroySession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    :goto_0
    :try_start_2
    sget-object v2, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close: mIsBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    :try_start_3
    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/hfm/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 554
    :goto_1
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 544
    :catch_0
    move-exception v1

    .line 546
    .local v1, re:Landroid/os/RemoteException;
    :try_start_5
    sget-object v2, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 541
    .end local v1           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 551
    :catch_1
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    sget-object v2, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized evadeHfmAvailabilityCheck(Z)V
    .locals 1
    .parameter "byPassCheck"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/hfm/HfmClient;->mByPassCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioPower()F
    .locals 4

    .prologue
    .line 591
    const/high16 v0, -0x3d90

    .line 592
    .local v0, f:F
    iget-boolean v2, p0, Lcom/htc/hfm/HfmClient;->mIsBound:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mSessionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 594
    :try_start_0
    iget-object v2, p0, Lcom/htc/hfm/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmService;

    invoke-interface {v2}, Lcom/htc/hfm/IHfmService;->getAudioPower()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 595
    :catch_0
    move-exception v1

    .line 597
    .local v1, re:Landroid/os/RemoteException;
    sget-object v2, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isHandFreeModeEnabled()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 502
    sget-object v7, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    const-string v9, "isHandFreeModeEnabled: context is null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :goto_0
    monitor-exit p0

    return v8

    .line 506
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    const-string v10, "uimode"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 507
    .local v6, uimm:Landroid/app/UiModeManager;
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    .line 508
    .local v2, modeType:I
    const-string v3, "UNKNOWN_UI_MODE_TYPE"

    .line 509
    .local v3, modeTypeString:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 523
    :goto_1
    sget-object v9, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isHandFreeModeEnabled: modeType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v9, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "htcspeak_carmode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 526
    .local v0, carMode:I
    sget-object v9, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isHandFreeModeEnabled: carMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v9, p0, Lcom/htc/hfm/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "htcspeak_readoutnoti"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 528
    .local v4, readout:I
    sget-object v9, Lcom/htc/hfm/HfmClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isHandFreeModeEnabled: readout="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-ne v0, v7, :cond_1

    move v1, v7

    .line 531
    .local v1, carModeStatus:Z
    :goto_2
    if-ne v4, v7, :cond_2

    move v5, v7

    .line 533
    .local v5, readoutStatus:Z
    :goto_3
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    :goto_4
    move v8, v7

    goto/16 :goto_0

    .line 511
    .end local v0           #carMode:I
    .end local v1           #carModeStatus:Z
    .end local v4           #readout:I
    .end local v5           #readoutStatus:Z
    :pswitch_0
    const-string v3, "UI_MODE_TYPE_CAR"

    .line 512
    goto :goto_1

    .line 514
    :pswitch_1
    const-string v3, "UI_MODE_TYPE_DESK"

    .line 515
    goto :goto_1

    .line 517
    :pswitch_2
    const-string v3, "UI_MODE_TYPE_NORMAL"

    .line 518
    goto :goto_1

    .line 520
    :pswitch_3
    const-string v3, "UI_MODE_TYPE_TELEVISION"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v0       #carMode:I
    .restart local v4       #readout:I
    :cond_1
    move v1, v8

    .line 530
    goto :goto_2

    .restart local v1       #carModeStatus:Z
    :cond_2
    move v5, v8

    .line 531
    goto :goto_3

    .restart local v5       #readoutStatus:Z
    :cond_3
    move v7, v8

    .line 533
    goto :goto_4

    .line 501
    .end local v0           #carMode:I
    .end local v1           #carModeStatus:Z
    .end local v2           #modeType:I
    .end local v3           #modeTypeString:Ljava/lang/String;
    .end local v4           #readout:I
    .end local v5           #readoutStatus:Z
    .end local v6           #uimm:Landroid/app/UiModeManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized releaseService()V
    .locals 3

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reserveService()V
    .locals 3

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetTimeout()V
    .locals 3

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7da

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectCommand(Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;)V
    .locals 1
    .parameter "question"
    .parameter "commands"

    .prologue
    .line 649
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/hfm/HfmClient;->selectCommand(Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectCommand(Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    .locals 2
    .parameter "question"
    .parameter "commands"
    .parameter "enableFlipAbort"

    .prologue
    .line 660
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [Lcom/htc/hfm/Speech;

    .line 661
    .local v0, speeches:[Lcom/htc/hfm/Speech;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 662
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/hfm/HfmClient;->selectCommand([Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 660
    .end local v0           #speeches:[Lcom/htc/hfm/Speech;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized selectCommand([Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;)V
    .locals 1
    .parameter "question"
    .parameter "commands"

    .prologue
    .line 671
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/hfm/HfmClient;->selectCommand([Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectCommand([Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    .locals 6
    .parameter "question"
    .parameter "commands"
    .parameter "enableFlipAbort"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/hfm/HfmClient$Action;-><init>(I[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZLcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized speak([Lcom/htc/hfm/Speech;)V
    .locals 1
    .parameter "speeches"

    .prologue
    .line 631
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/hfm/HfmClient;->speak([Lcom/htc/hfm/Speech;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized speak([Lcom/htc/hfm/Speech;Z)V
    .locals 3
    .parameter "speeches"
    .parameter "enableFlipAbort"

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(I[Lcom/htc/hfm/Speech;ZLcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startWakeUpMode(Lcom/htc/hfm/Speech;I)V
    .locals 3
    .parameter "command"
    .parameter "mode"

    .prologue
    .line 564
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/hfm/HfmClient;->mByPassCheck:Z

    .line 565
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d7

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWakeUpMode()V
    .locals 3

    .prologue
    .line 572
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/hfm/HfmClient;->mByPassCheck:Z

    .line 573
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testWakeUpPhrase(Ljava/lang/String;)V
    .locals 3
    .parameter "phrase"

    .prologue
    .line 581
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/hfm/HfmClient;->mByPassCheck:Z

    .line 582
    new-instance v0, Lcom/htc/hfm/HfmClient$Action;

    const/16 v1, 0x7d9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILjava/lang/String;Lcom/htc/hfm/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/hfm/HfmClient;->next(Lcom/htc/hfm/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
