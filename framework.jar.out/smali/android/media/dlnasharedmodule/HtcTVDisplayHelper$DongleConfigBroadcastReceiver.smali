.class Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleConfigBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 205
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfigBroadcastReceiver"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v0, v2, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 207
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v2, "RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, result:Ljava/lang/String;
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig SUCCESS"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVReadyToPlay()V

    goto :goto_0

    .line 214
    :cond_1
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig FAIL"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onNoTVToPlay()V

    goto :goto_0
.end method
