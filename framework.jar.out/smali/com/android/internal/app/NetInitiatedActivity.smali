.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final GPS_NO_RESPONSE_TIME_OUT:I = 0x1

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetInitiatedActivity"

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NetInitiatedActivity"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private default_response:I

.field private default_response_timeout:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private notificationId:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 53
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 54
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 55
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$1;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$2;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponseLocked(I)V

    return-void
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 182
    const-string/jumbo v1, "notif_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, notifId:I
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 185
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNIVerify action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendUserResponseLocked(I)V
    .locals 4
    .parameter "response"

    .prologue
    .line 168
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUserResponse, response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 171
    .local v0, locationManager:Landroid/location/LocationManager;
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 174
    sget-object v1, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "NetInitiatedActivity"

    const-string v2, "Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v1, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 179
    :cond_0
    return-void
.end method

.method private showNIError()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "NI error"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, -0x1

    .line 148
    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    if-eq v0, v2, :cond_2

    .line 150
    if-ne p2, v2, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponseLocked(I)V

    .line 153
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 154
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponseLocked(I)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 161
    :cond_2
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 99
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, context:Landroid/content/Context;
    const v5, 0x10802bf

    iput v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 101
    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    const-string/jumbo v5, "message"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 103
    const v5, 0x104047c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    const v5, 0x104047d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    const-string/jumbo v5, "notif_id"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 109
    const-string/jumbo v5, "timeout"

    iget v6, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 110
    const-string v5, "default_resp"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 111
    const-string v5, "NetInitiatedActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate() : notificationId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " default_response:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->setupAlert()V

    .line 117
    sget-object v5, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_0

    .line 118
    move-object v2, p0

    .line 119
    .local v2, mContext:Landroid/content/Context;
    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Lcom/android/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 120
    .local v4, powerManager:Landroid/os/PowerManager;
    const v5, 0x1000000a

    const-string v6, "NetInitiatedActivity"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    .end local v2           #mContext:Landroid/content/Context;
    .end local v4           #powerManager:Landroid/os/PowerManager;
    :cond_0
    sget-object v5, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    const-string v5, "NetInitiatedActivity"

    const-string v6, "Acquiring wakelock"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v5, Lcom/android/internal/app/NetInitiatedActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 140
    const-string v0, "NetInitiatedActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 133
    const-string v0, "NetInitiatedActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method
