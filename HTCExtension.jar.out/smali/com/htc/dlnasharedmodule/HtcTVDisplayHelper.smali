.class public Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;
.super Ljava/lang/Object;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;,
        Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;,
        Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;,
        Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;,
        Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    }
.end annotation


# static fields
.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"

.field static final RET_DMR:I = 0x2711


# instance fields
.field mContext:Landroid/content/Context;

.field mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

.field mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

.field mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

.field mWDListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 54
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    .line 55
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    .line 56
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    .line 57
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    .line 64
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTVDisplayHelper]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 67
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTVDisplayHelper][registerReceivever]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->registerDongleListReceivever()V

    .line 71
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->registerDongleConfigReceivever()V

    .line 72
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$MirrorChangeListener;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    .line 73
    new-instance v0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    invoke-direct {v0, p1, v1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    .line 76
    :cond_0
    return-void
.end method

.method public static final isReadyDongleNearBy(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isTVOn(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 233
    invoke-static {p0, p1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->setDLNAPreloadFlag(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final shouldPlayOnTV(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->shouldPlayOnTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOnTV(Landroid/content/Context;)Z

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final turnOffTV(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dlnasharedmodule.destroy_dlna_mediacontrollers"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public static final turnOnTV(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->startMirror(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final registerDongleConfigReceivever()V
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method final registerDongleListReceivever()V
    .locals 3

    .prologue
    .line 80
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->release()V

    .line 113
    :cond_0
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mWDHelper:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    .line 114
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 115
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->unregisterReceiver()V

    .line 116
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method final unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleListReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mDongleConfigReceiver:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;

    .line 105
    :cond_1
    return-void
.end method
