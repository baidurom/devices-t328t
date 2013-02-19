.class Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleListBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;-><init>(Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 181
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleListBroadcastReceiver"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v1, v2, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 183
    .local v1, listener:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 187
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onReadyDongleFound(Lcom/htc/service/DongleInfo;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onNoReadyDongle()V

    goto :goto_0
.end method
