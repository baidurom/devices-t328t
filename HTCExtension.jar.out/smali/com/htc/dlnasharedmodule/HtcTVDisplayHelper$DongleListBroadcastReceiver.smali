.class Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleListBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 189
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleListBroadcastReceiver"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v1, v2, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 191
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 195
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onReadyDongleFound(Lcom/htc/service/DongleInfo;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onNoReadyDongle()V

    goto :goto_0
.end method
