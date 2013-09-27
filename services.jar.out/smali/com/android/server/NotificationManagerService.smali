.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;
    }
.end annotation


# static fields
.field private static final BATTERY_BLINK_OFF:I = 0xb3b

.field private static final BATTERY_BLINK_ON:I = 0x7d

.field private static final BATTERY_FULL_ARGB:I = -0xff0100

.field private static final BATTERY_LOW_ARGB:I = -0x10000

.field private static final BATTERY_MEDIUM_ARGB:I = -0x100

.field private static final DBG:Z = false

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final DEVICE_SUPPORT_CHARMIND:Z = false

.field private static final DEVICE_SUPPORT_DUALLED:Z = true

.field private static final DEVICE_SUPPORT_JOGBALL:Z = false

.field private static final DEVICE_SUPPORT_SHARELED:Z = false

.field private static final DUAL_COLOR_AMBER:I = 0x0

.field private static final DUAL_COLOR_GREEN:I = 0x1

.field private static final DUAL_MODE_BLINK:I = 0x3

.field private static final DUAL_MODE_OFF:I = -0x1

.field private static final DUAL_MODE_ON:I = 0x0

.field private static final DUAL_OFF_IGNORE:I = -0x1

.field private static final DUAL_OFF_NOP:I = 0x0

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"


# instance fields
.field final INTENT_ACTION_ADD:I

.field final INTENT_ACTION_REMOVE:I

.field final INTENT_ACTION_UPDATE:I

.field final mAm:Landroid/app/IActivityManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryHealth:I

.field private mBatteryLow:Z

.field private mBatteryStatus:I

.field private mCharmIndLight:Lcom/android/server/LightsService$Light;

.field private mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mCharms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDisabledNotifications:I

.field private mDualLedLight:Lcom/android/server/LightsService$Light;

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsQbShutdown:Z

.field private mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mJogballLight:Lcom/android/server/LightsService$Light;

.field private mJogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsService:Lcom/android/server/LightsService;

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private mScreenOn:Z

.field private mShareLedLight:Lcom/android/server/LightsService$Light;

.field private mSound:Lcom/android/server/NotificationPlayer;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mTestLight:Lcom/android/server/LightsService$Light;

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 8
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 506
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    .line 88
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 111
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 114
    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    .line 115
    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    .line 118
    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mIsQbShutdown:Z

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 123
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    .line 168
    iput v7, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_UPDATE:I

    .line 169
    iput v6, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_ADD:I

    .line 170
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/NotificationManagerService;->INTENT_ACTION_REMOVE:I

    .line 285
    new-instance v5, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 383
    new-instance v5, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 508
    iput-object p3, p0, Lcom/android/server/NotificationManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 509
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 510
    new-instance v5, Lcom/android/server/NotificationPlayer;

    const-string v6, "NotificationService"

    invoke-direct {v5, v6}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    .line 511
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v5, p1}, Lcom/android/server/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 512
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 513
    new-instance v5, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    .line 515
    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 516
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v5}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    .line 518
    const/4 v5, 0x4

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    .line 519
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 520
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    .line 521
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mJogballLight:Lcom/android/server/LightsService$Light;

    .line 522
    const/16 v5, 0x17

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mCharmIndLight:Lcom/android/server/LightsService$Light;

    .line 526
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 527
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x1060063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 529
    const v5, 0x10e0016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 531
    const v5, 0x10e0017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 538
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 540
    const/high16 v5, 0x4

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 544
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 546
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v5, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .local v2, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 561
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->registerQbReceiver()V

    .line 562
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v4, sdFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 565
    new-instance v1, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .line 566
    .local v1, observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    .line 567
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1001(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->turnOffLights()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1401(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$1703(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mIsQbShutdown:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLights()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V
    .locals 5
    .parameter "notiType"
    .parameter "id"
    .parameter "pkg"
    .parameter "notification"

    .prologue
    .line 775
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v0, 0x0

    .line 783
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 784
    const-string v0, "android.intent.action.NOTIFICATION_UPDATE"

    .line 795
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 796
    .local v1, callerId:J
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v4, "pkg"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    if-eqz p4, :cond_2

    .line 801
    const-string v4, "notification"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 804
    :cond_2
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 805
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 785
    .end local v1           #callerId:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 786
    const-string v0, "android.intent.action.NOTIFICATION_ADD"

    goto :goto_1

    .line 787
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 788
    const-string v0, "android.intent.action.NOTIFICATION_REMOVE"

    goto :goto_1
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "sendDelete"

    .prologue
    const/4 v7, 0x2

    .line 1250
    const/16 v3, 0xabf

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p2, v4, v7

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1253
    const/4 v1, -0x1

    .line 1254
    .local v1, notiType:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1255
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1256
    .local v0, index:I
    if-ltz v0, :cond_3

    .line 1257
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1259
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_1

    .line 1260
    monitor-exit v4

    .line 1281
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    :goto_0
    return-void

    .line 1262
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p5

    if-eqz v3, :cond_2

    .line 1263
    monitor-exit v4

    goto :goto_0

    .line 1274
    .end local v0           #index:I
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1266
    .restart local v0       #index:I
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1268
    invoke-direct {p0, v2, p6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1269
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1270
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1271
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1272
    const/4 v1, 0x2

    .line 1274
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    if-ne v1, v7, :cond_0

    .line 1278
    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, p1, v3}, Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .locals 7
    .parameter "r"
    .parameter "sendDelete"

    .prologue
    const/4 v6, 0x0

    .line 1151
    if-eqz p2, :cond_0

    .line 1152
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 1154
    :try_start_0
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_1

    .line 1165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1167
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1172
    iput-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1176
    .end local v1           #identity:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_2

    .line 1177
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1180
    .restart local v1       #identity:J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1183
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    .end local v1           #identity:J
    :cond_2
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_3

    .line 1189
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1192
    .restart local v1       #identity:J
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1195
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    .end local v1           #identity:J
    :cond_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1201
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_4

    .line 1202
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1206
    :cond_4
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1207
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_5

    .line 1208
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1213
    :cond_5
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1214
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_6

    .line 1215
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1217
    :cond_6
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1158
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canceled PendingIntent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1170
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    .restart local v1       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1183
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1195
    :catchall_2
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private cancelToastLocked(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 685
    .local v1, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 693
    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 694
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    .line 700
    :cond_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 713
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 714
    :try_start_0
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 715
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 716
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    .line 718
    :cond_0
    monitor-exit v2

    .line 719
    return-void

    .line 718
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, c:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 178
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 192
    .local v2, r:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 194
    :goto_1
    return-object v3

    .line 179
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 181
    goto :goto_0

    .line 183
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 193
    .restart local v2       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_1
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 1607
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1608
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1609
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1610
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1611
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-nez p2, :cond_1

    .line 1612
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1616
    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1620
    :cond_2
    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1624
    .end local v0           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 724
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 725
    .local v0, cbak:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 726
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 727
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 728
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 729
    .local v4, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 733
    .end local v1           #i:I
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .line 727
    .restart local v1       #i:I
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private keepProcessAliveLocked(I)V
    .locals 8
    .parameter "pid"

    .prologue
    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, toastCount:I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 741
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 742
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 743
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 744
    .local v3, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 745
    add-int/lit8 v4, v4, 0x1

    .line 742
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v3           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_2
    return-void

    .line 749
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 750
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private registerQbReceiver()V
    .locals 3

    .prologue
    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/NotificationManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .locals 5
    .parameter "r"
    .parameter "immediate"

    .prologue
    .line 704
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 705
    .local v2, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 706
    .local v0, delay:J
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 707
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 708
    return-void

    .line 705
    .end local v0           #delay:J
    :cond_0
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xdac

    :goto_1
    int-to-long v0, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x7d0

    goto :goto_1
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "notification"
    .parameter "packageName"

    .prologue
    .line 1131
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 1132
    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1136
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1138
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1139
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1141
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1142
    .local v2, tickerText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1143
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 657
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 658
    .local v2, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    .line 661
    :try_start_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 662
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 669
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 670
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 672
    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 673
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_0

    .line 676
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCharmsLocked()V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method private turnOffLights()V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1531
    const-string v1, "NotificationService"

    const-string v2, "turnOffLights"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    return-void

.end method

.method private updateDualLightsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1487
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    if-ne v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v1, :cond_0

    .line 1488
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryHealth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBatteryStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string v1, "NotificationService"

    const-string v2, "**********show Battery Overheat indicator!! "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v5, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1491
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v6, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1540
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v1, :cond_1

    .line 1494
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryHealth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NotificationManagerService;->mBatteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBatteryStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NotificationManagerService;->mBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v1, "NotificationService"

    const-string v2, "**********show Battery Fault indicator!! "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v5, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1497
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v6, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1499
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-nez v1, :cond_2

    .line 1500
    const-string v1, "NotificationService"

    const-string v2, "Battery Low, No Charging"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v5, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1503
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1504
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v1, :cond_5

    .line 1505
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v1, :cond_3

    .line 1506
    const-string v1, "NotificationService"

    const-string v2, "Battery Low, Charging"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1508
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1509
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    if-eqz v1, :cond_4

    .line 1510
    const-string v1, "NotificationService"

    const-string v2, "Battery Full, Charging"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1512
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v4, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1514
    :cond_4
    const-string v1, "NotificationService"

    const-string v2, "Charging..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1516
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1522
    :cond_5
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v1, :cond_6

    .line 1524
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1525
    .local v0, n:I
    if-lez v0, :cond_6

    .line 1526
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1530
    .end local v0           #n:I
    :cond_6

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mIsQbShutdown:Z

    if-eqz v4, :cond_1012

    .line 1138
    const-string v4, "NotificationService"

    const-string v5, "In QuickBoot Shutdown do not update notification Light"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    :cond_1012

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v1, :cond_7

    .line 1531
    const-string v1, "NotificationService"

    const-string v2, "dual Led off"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1535
    :cond_7

    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v1, :cond_1002

    const-string v1, "NotificationService"

    const-string v2, "dual Led for notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1537
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mDualLedLight:Lcom/android/server/LightsService$Light;

    const/4 v2, 0x5

    invoke-virtual {v1, v5, v6, v2, v4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    :cond_1002
    goto/16 :goto_0
.end method

.method private updateJogsLocked()V
    .locals 0

    .prologue
    .line 1547
    return-void
.end method

.method private updateLights()V
    .locals 2

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1440
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1441
    monitor-exit v1

    .line 1442
    return-void

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLightsLocked()V
    .locals 0

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateDualLightsLocked()V

    .line 1450
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 1628
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1629
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1630
    monitor-exit v1

    .line 1631
    return-void

    .line 1630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelAll()V
    .locals 8

    .prologue
    .line 1387
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1388
    .local v1, N2:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1389
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1391
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x22

    if-nez v4, :cond_0

    .line 1394
    const/4 v4, 0x2

    iget v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V

    .line 1388
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1399
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1400
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1401
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1402
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1404
    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x22

    if-nez v4, :cond_2

    .line 1406
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1407
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1401
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1411
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1412
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1413
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1414
    monitor-exit v5

    .line 1415
    return-void

    .line 1414
    .end local v0           #N:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelAllNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 1357
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1361
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 1362
    return-void
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
    .locals 10
    .parameter "pkg"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "doit"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1289
    const/16 v6, 0xac0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1295
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1296
    .local v1, N2:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1297
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1298
    .local v4, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p2

    if-eq v6, p2, :cond_1

    .line 1296
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1301
    :cond_1
    iget-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-nez v6, :cond_0

    .line 1304
    iget-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1308
    iget v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    const/4 v7, 0x0

    invoke-direct {p0, v9, v6, p1, v7}, Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V

    goto :goto_1

    .line 1313
    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1314
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1315
    .local v0, N:I
    const/4 v2, 0x0

    .line 1316
    .local v2, canceledSomething:Z
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 1317
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1318
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/2addr v7, p2

    if-eq v7, p2, :cond_4

    .line 1316
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1321
    :cond_4
    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/2addr v7, p3

    if-nez v7, :cond_3

    .line 1324
    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1327
    const/4 v2, 0x1

    .line 1328
    if-nez p4, :cond_5

    .line 1329
    monitor-exit v6

    .line 1339
    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_4
    return v5

    .line 1331
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_5
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1332
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_3

    .line 1340
    .end local v0           #N:I
    .end local v2           #canceledSomething:Z
    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1334
    .restart local v0       #N:I
    .restart local v2       #canceledSomething:Z
    :cond_6
    if-eqz v2, :cond_7

    .line 1335
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1336
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1337
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1339
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v2

    goto :goto_4
.end method

.method cancelAll_pd()V
    .locals 5

    .prologue
    .line 1418
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1420
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1421
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1423
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_0

    .line 1425
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1426
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1420
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1430
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1431
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1432
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1433
    monitor-exit v4

    .line 1434
    return-void

    .line 1433
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1346
    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 1354
    return-void

    .line 1351
    :cond_0
    const/16 v5, 0x40

    goto :goto_0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 634
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 637
    :cond_0
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 642
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 644
    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 645
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 646
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 651
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    monitor-exit v4

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 648
    .restart local v0       #callingId:J
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 651
    .end local v2           #index:I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkIncomingCall(Ljava/lang/String;)V
    .locals 6
    .parameter "pkg"

    .prologue
    .line 1365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1366
    .local v2, uid:I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    .line 1380
    :cond_0
    return-void

    .line 1370
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1372
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_0

    .line 1373
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIncomingCall, pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Pkguid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1378
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1653
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    :goto_0
    return-void

    .line 1661
    :cond_0
    const-string v2, "Current Notification Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1666
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1667
    .local v0, N:I
    if-lez v0, :cond_2

    .line 1668
    const-string v2, "  Toast Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1670
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v4, "    "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1669
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1672
    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    .end local v1           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1678
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1679
    if-lez v0, :cond_4

    .line 1680
    const-string v2, "  Notification List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1682
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1675
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1684
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1688
    if-lez v0, :cond_6

    .line 1689
    const-string v2, "  Lights List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 1691
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1693
    :cond_5
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    .end local v1           #i:I
    :cond_6
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1697
    if-lez v0, :cond_8

    .line 1698
    const-string v2, "  Jogs List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 1700
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1702
    :cond_7
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    .end local v1           #i:I
    :cond_8
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1708
    if-lez v0, :cond_a

    .line 1709
    const-string v2, "  Charms List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v0, :cond_9

    .line 1711
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 1710
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1713
    :cond_9
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    .end local v1           #i:I
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSound="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabledNotifications=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 816
    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V
    .locals 33
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "priority"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 850
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 854
    const-string v7, "android"

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 855
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 856
    const/16 v19, 0x0

    .line 857
    .local v19, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 858
    .local v15, N:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v15, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 860
    .local v5, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 861
    add-int/lit8 v19, v19, 0x1

    .line 862
    const/16 v7, 0x32

    move/from16 v0, v19

    if-lt v0, v7, :cond_0

    .line 863
    const-string v7, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package has already posted "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " notifications.  Not showing more.  package="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    monitor-exit v8

    .line 1128
    .end local v15           #N:I
    .end local v19           #count:I
    .end local v20           #i:I
    :cond_9527
    :goto_1
    return-void

    .line 858
    .restart local v15       #N:I
    .restart local v19       #count:I
    .restart local v20       #i:I
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 869
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    .end local v15           #N:I
    .end local v19           #count:I
    .end local v20           #i:I
    :cond_2
    const-string v7, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "DownloadManager"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 876
    :cond_3
    const/16 v7, 0xabe

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v8, v12

    const/4 v12, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x2

    aput-object p4, v8, v12

    const/4 v12, 0x3

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 880
    :cond_4
    if-eqz p1, :cond_5

    if-nez p7, :cond_6

    .line 881
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "null not allowed: pkg="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " id="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " notification="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 869
    .restart local v19       #count:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 884
    .end local v19           #count:I
    :cond_6
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->icon:I

    if-eqz v7, :cond_7

    .line 885
    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v7, :cond_7

    .line 886
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentView required: pkg="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " id="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " notification="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 891
    :cond_7
    const/16 v25, -0x1

    .line 893
    .local v25, notiType:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->isBlockedPackage(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v6

    if-nez v6, :cond_9527

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 894
    :try_start_2
    new-instance v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILandroid/app/Notification;)V

    .line 898
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v27, 0x0

    .line 900
    .local v27, old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 901
    .local v23, index:I
    if-gez v23, :cond_19

    .line 902
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_8
    :goto_2
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_9

    .line 916
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x22

    move-object/from16 v0, p7

    iput v7, v0, Landroid/app/Notification;->flags:I

    .line 920
    :cond_9
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->icon:I

    if-eqz v7, :cond_1b

    .line 921
    new-instance v6, Lcom/android/internal/statusbar/StatusBarNotification;

    iget v10, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->uid:I

    iget v11, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->initialPid:I

    move-object/from16 v7, p1

    move/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

    .line 923
    .local v6, n:Lcom/android/internal/statusbar/StatusBarNotification;
    iget v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->priority:I

    iput v7, v6, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    .line 925
    if-eqz v27, :cond_1a

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v7, :cond_1a

    .line 926
    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    iput-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v21

    .line 929
    .local v21, identity:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v8, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 932
    :try_start_4
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    const/16 v25, 0x0

    .line 946
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 962
    .end local v6           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v21           #identity:J
    :cond_a
    :goto_4
    sget-object v31, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 963
    .local v31, vibrate_pattern_old:[J
    const/16 v26, -0x1

    .line 964
    .local v26, notification_defaults_old:I
    const/16 v24, -0x1

    .line 965
    .local v24, nSystemVolumnOld:I
    const-string v7, "com.htc.calendar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 967
    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.htc.calendar in Call reminder is coming "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    iget-object v12, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 969
    const/4 v7, 0x1

    move-object/from16 v0, p7

    iput v7, v0, Landroid/app/Notification;->audioStreamType:I

    .line 970
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v31, v0

    .line 971
    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v26, v0

    .line 972
    const/4 v7, 0x0

    move-object/from16 v0, p7

    iput-object v7, v0, Landroid/app/Notification;->vibrate:[J

    .line 973
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->defaults:I

    xor-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p7

    iput v7, v0, Landroid/app/Notification;->defaults:I

    .line 977
    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-nez v7, :cond_11

    if-eqz v27, :cond_c

    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_11

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v7, :cond_11

    .line 982
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    .line 985
    .local v16, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1c

    const/16 v29, 0x1

    .line 988
    .local v29, useDefaultSound:Z
    :goto_5
    if-nez v29, :cond_d

    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v7, :cond_f

    .line 990
    :cond_d
    if-eqz v29, :cond_1d

    .line 991
    sget-object v9, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 995
    .local v9, uri:Landroid/net/Uri;
    :goto_6
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1e

    const/4 v10, 0x1

    .line 997
    .local v10, looping:Z
    :goto_7
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v7, :cond_1f

    .line 998
    move-object/from16 v0, p7

    iget v11, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1002
    .local v11, audioStreamType:I
    :goto_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1007
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-eqz v7, :cond_f

    .line 1009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 1012
    .restart local v21       #identity:J
    const/16 v17, 0x0

    .line 1013
    .local v17, bKddi:Z
    const/16 v18, 0x0

    .line 1014
    .local v18, bVzwCMAS:Z
    const-string v7, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz p4, :cond_e

    .line 1016
    const-string v7, "KDDI_MAX_VOLUME"

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 1017
    const-string v7, "VZW_CMAS_IgnoreNotification2Mute"

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 1021
    :cond_e
    if-eqz v17, :cond_20

    .line 1022
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const v14, 0x7fffffff

    move-object/from16 v12, p1

    move/from16 v13, p5

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZILjava/lang/String;II)V

    .line 1036
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #looping:Z
    .end local v11           #audioStreamType:I
    .end local v17           #bKddi:Z
    .end local v18           #bVzwCMAS:Z
    .end local v21           #identity:J
    :cond_f
    :goto_9
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_22

    const/16 v30, 0x1

    .line 1040
    .local v30, useDefaultVibrate:Z
    :goto_a
    if-nez v30, :cond_10

    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v7, :cond_25

    :cond_10
    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1042
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v30, :cond_23

    sget-object v7, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move-object v8, v7

    :goto_b
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_24

    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v12, v8, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1064
    .end local v16           #audioManager:Landroid/media/AudioManager;
    .end local v29           #useDefaultSound:Z
    .end local v30           #useDefaultVibrate:Z
    :cond_11
    :goto_d
    const-string v7, "com.htc.calendar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v8, 0x4

    if-ne v7, v8, :cond_12

    .line 1066
    const/high16 v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 1067
    const/4 v7, 0x5

    move-object/from16 v0, p7

    iput v7, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1068
    move-object/from16 v0, v31

    move-object/from16 v1, p7

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 1069
    move/from16 v0, v26

    move-object/from16 v1, p7

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1076
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v27

    if-ne v7, v0, :cond_13

    .line 1078
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1082
    :cond_13
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_27

    .line 1083
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1093
    :cond_14
    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v27

    if-ne v7, v0, :cond_15

    .line 1095
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/NotificationManagerService;->mJogNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1097
    :cond_15
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_28

    .line 1098
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mJogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    .line 1109
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v27

    if-ne v7, v0, :cond_17

    .line 1111
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/NotificationManagerService;->mCharmNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1113
    :cond_17
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x200

    and-int/2addr v7, v8

    if-eqz v7, :cond_29

    .line 1114
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mCharms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V

    .line 1122
    :cond_18
    :goto_10
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1125
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->broadcastIntent(IILjava/lang/String;Landroid/app/Notification;)V

    .line 1127
    const/4 v7, 0x0

    aput p5, p8, v7

    goto/16 :goto_1

    .line 904
    .end local v24           #nSystemVolumnOld:I
    .end local v26           #notification_defaults_old:I
    .end local v31           #vibrate_pattern_old:[J
    :cond_19
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v27, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 905
    .restart local v27       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v7, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 907
    if-eqz v27, :cond_8

    .line 908
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x40

    or-int/2addr v7, v8

    move-object/from16 v0, p7

    iput v7, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 1122
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v23           #index:I
    .end local v27           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_1
    move-exception v7

    monitor-exit v32
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 932
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v6       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v21       #identity:J
    .restart local v23       #index:I
    .restart local v27       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_2
    move-exception v7

    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 936
    .end local v21           #identity:J
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-wide v21

    .line 938
    .restart local v21       #identity:J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/StatusBarManagerService;->addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 942
    :try_start_8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    const/16 v25, 0x1

    goto/16 :goto_3

    .line 942
    :catchall_3
    move-exception v7

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 948
    .end local v6           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v21           #identity:J
    :cond_1b
    const/16 v25, 0x2

    .line 949
    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring notification with icon==0: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-eqz v27, :cond_a

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v7, :cond_a

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v21

    .line 953
    .restart local v21       #identity:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 956
    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_4
    move-exception v7

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 985
    .end local v21           #identity:J
    .restart local v16       #audioManager:Landroid/media/AudioManager;
    .restart local v24       #nSystemVolumnOld:I
    .restart local v26       #notification_defaults_old:I
    .restart local v31       #vibrate_pattern_old:[J
    :cond_1c
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 993
    .restart local v29       #useDefaultSound:Z
    :cond_1d
    move-object/from16 v0, p7

    iget-object v9, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_6

    .line 995
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1000
    .restart local v10       #looping:Z
    :cond_1f
    const/4 v11, 0x5

    .restart local v11       #audioStreamType:I
    goto/16 :goto_8

    .line 1024
    .restart local v17       #bKddi:Z
    .restart local v18       #bVzwCMAS:Z
    .restart local v21       #identity:J
    :cond_20
    if-eqz v18, :cond_21

    .line 1026
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/NotificationPlayer;->setVzwCMASMute(Z)V

    .line 1028
    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v12, p1

    move/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZILjava/lang/String;I)V

    goto/16 :goto_9

    .line 1036
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #looping:Z
    .end local v11           #audioStreamType:I
    .end local v17           #bKddi:Z
    .end local v18           #bVzwCMAS:Z
    .end local v21           #identity:J
    :cond_22
    const/16 v30, 0x0

    goto/16 :goto_a

    .line 1044
    .restart local v30       #useDefaultVibrate:Z
    :cond_23
    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    move-object v8, v7

    goto/16 :goto_b

    :cond_24
    const/4 v7, -0x1

    goto/16 :goto_c

    .line 1049
    :cond_25
    move-object/from16 v0, p7

    iget v7, v0, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x100

    and-int/2addr v7, v8

    if-eqz v7, :cond_11

    .line 1053
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v28

    .line 1054
    .local v28, ringerMode:I
    if-nez v29, :cond_26

    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v7, :cond_11

    :cond_26
    const/4 v7, 0x1

    move/from16 v0, v28

    if-ne v0, v7, :cond_11

    .line 1056
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1057
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v12, -0x1

    invoke-virtual {v7, v8, v12}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_d

    .line 1086
    .end local v16           #audioManager:Landroid/media/AudioManager;
    .end local v28           #ringerMode:I
    .end local v29           #useDefaultSound:Z
    .end local v30           #useDefaultVibrate:Z
    :cond_27
    if-eqz v27, :cond_14

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_14

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_e

    .line 1101
    :cond_28
    if-eqz v27, :cond_16

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_16

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateJogsLocked()V

    goto/16 :goto_f

    .line 1117
    :cond_29
    if-eqz v27, :cond_18

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x200

    and-int/2addr v7, v8

    if-eqz v7, :cond_18

    .line 1119
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateCharmsLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_10
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
    .locals 9
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 837
    iget v0, p6, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v6, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_ONGOING:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V

    .line 842
    return-void

    .line 837
    :cond_0
    sget v6, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_NORMAL:I

    goto :goto_0
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V

    .line 823
    return-void
.end method

.method public enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    .locals 9
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "priority"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V

    .line 830
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 16
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 580
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 581
    :cond_0
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not doing toast. pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " callback="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 585
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v13

    .line 586
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 587
    .local v6, callingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 590
    .local v4, callingId:J
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    .line 593
    .local v9, index:I
    if-ltz v9, :cond_3

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 595
    .local v11, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    .line 624
    :goto_1
    if-nez v9, :cond_2

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 628
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    monitor-exit v13

    goto :goto_0

    .end local v4           #callingId:J
    .end local v6           #callingPid:I
    .end local v9           #index:I
    .end local v11           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 599
    .restart local v4       #callingId:J
    .restart local v6       #callingPid:I
    .restart local v9       #index:I
    :cond_3
    :try_start_3
    const-string v12, "android"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 602
    .local v3, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 604
    .local v10, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v12, v10, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 605
    add-int/lit8 v7, v7, 0x1

    .line 606
    const/16 v12, 0x32

    if-lt v7, v12, :cond_4

    .line 607
    const-string v12, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " toasts. Not showing more. Package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 628
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 602
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 615
    .end local v3           #N:I
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v10           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_5
    :try_start_5
    new-instance v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 616
    .restart local v11       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .line 618
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 628
    .end local v9           #index:I
    .end local v11           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_1
    move-exception v12

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getAllNotificationRecord()[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1220
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1222
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v4, 0x0

    new-array v0, v4, [Landroid/os/Bundle;

    .line 1239
    .local v0, array:[Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1229
    .end local v0           #array:[Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1230
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1231
    .local v3, size:I
    new-array v0, v3, [Landroid/os/Bundle;

    .line 1232
    .restart local v0       #array:[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "pkg"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v6, "id"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1236
    const-string v6, "notification"

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1237
    aput-object v1, v0, v2

    .line 1232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1239
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 1240
    .end local v0           #array:[Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setShareLED(I)V
    .locals 2
    .parameter "repeatTimes"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    const-string v0, "NotificationService"

    const-string v1, "setShareLED() Permission Denial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    return-void
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    .line 572
    return-void
.end method

.method private isBlockedPackage(Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 4
    .parameter "packageName"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, rst:Z
    const-string v3, "android"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 881
    invoke-static {}, Lcom/baidu/notificationdefense/NotificationDefenseManager;->getInstance()Lcom/baidu/notificationdefense/NotificationDefenseManager;

    move-result-object v1

    .line 882
    .local v1, ndm:Lcom/baidu/notificationdefense/NotificationDefenseManager;
    invoke-virtual {v1, p1, p2, p3}, Lcom/baidu/notificationdefense/NotificationDefenseManager;->defense(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v0

    .line 883
    .local v0, blocked:Z
    if-eqz v0, :cond_0

    .line 884
    const/4 v2, 0x1

    .line 887
    .end local v0           #blocked:Z
    .end local v1           #ndm:Lcom/baidu/notificationdefense/NotificationDefenseManager;
    :cond_0
    return v2
.end method
