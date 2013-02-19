.class Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WirelessDisplayBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 413
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    #getter for: Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v6}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->access$100(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const-string v6, "mirror_display_status"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 417
    .local v1, inMirror:Z
    const-string v6, "mirror_display_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 419
    .local v5, state:I
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eq v9, v5, :cond_2

    const/4 v6, 0x3

    if-ne v6, v5, :cond_3

    .line 425
    :cond_2
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    #getter for: Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v6}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->access$100(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, addrIP:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 429
    .local v3, longIP:J
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", IP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;

    #getter for: Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->mListener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;
    invoke-static {v6}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->access$200(Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;)Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;

    move-result-object v2

    .line 432
    .local v2, listener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;
    if-eqz v2, :cond_0

    .line 433
    invoke-interface {v2, v1, v3, v4}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;->onMirrorStatusChange(ZJ)V

    goto :goto_0

    .line 437
    .end local v0           #addrIP:Ljava/lang/String;
    .end local v2           #listener:Lcom/htc/dlnasharedmodule/WirelessDisplayHelper$WirelessDisplayListener;
    .end local v3           #longIP:J
    :cond_3
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
