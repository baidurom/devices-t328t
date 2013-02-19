.class public Lcom/htc/lockscreen/pub/HtcLSPubConnection;
.super Ljava/lang/Object;
.source "HtcLSPubConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/pub/HtcLSPubConnection$1;,
        Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;,
        Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcLSViewConnection_P"

.field private static final MAX_WAKEUP_TIME:I = 0x3a98


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock2:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mId:I

    .line 39
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    if-gtz p2, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method private declared-synchronized TimeWakeLock(I)V
    .locals 4
    .parameter "ms"

    .prologue
    .line 180
    monitor-enter p0

    if-lez p1, :cond_1

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 183
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HtcLSViewConnection_P"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    .line 186
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/pub/HtcLSPubConnection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->wakeLock(Z)V

    return-void
.end method

.method private declared-synchronized wakeLock(Z)V
    .locals 5
    .parameter "bLock"

    .prologue
    .line 153
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 161
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "HtcLSViewConnection_P"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 163
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 164
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 166
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final register(Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;)V
    .locals 3
    .parameter "stateListener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    .line 55
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/pub/HtcLSPubConnection;Lcom/htc/lockscreen/pub/HtcLSPubConnection$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "HtcLockScreen_ADD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "HtcLockScreen_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "HtcLockScreen_OVERWRITE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setContent(Lcom/htc/lockscreen/pub/HtcLSPubView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "there is no any content view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not register yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenSetView_P"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "View"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "id"

    iget v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->wakeLock(Z)V

    .line 86
    return-void
.end method

.method public final unReigister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iput-object v3, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "id"

    iget v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    iput-object v3, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    .line 104
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->wakeLock(Z)V

    .line 105
    return-void
.end method
