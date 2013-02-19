.class Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleConfigBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 217
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfigBroadcastReceiver"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 219
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v2, "RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, result:Ljava/lang/String;
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig SUCCESS"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVReadyToPlay()V

    goto :goto_0

    .line 226
    :cond_1
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig FAIL"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onNoTVToPlay()V

    goto :goto_0
.end method
