.class public Lcom/htc/server/WirelessDisplayService$HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdmiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1787
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, action:Ljava/lang/String;
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HdmiReceiver atcion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const-string v4, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1792
    const-string v4, "state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1793
    .local v3, plug:I
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1795
    .local v1, curMirrState:I
    if-ne v3, v7, :cond_1

    .line 1796
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1797
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v4, v8}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 1798
    if-eq v1, v7, :cond_0

    .line 1799
    const-string v4, "WirelessDisplayService"

    const-string v5, "HdmiReceiver: HDMI is plugged STOP Everything"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1801
    .local v2, msgHdmi:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1811
    .end local v1           #curMirrState:I
    .end local v2           #msgHdmi:Landroid/os/Message;
    .end local v3           #plug:I
    :cond_0
    :goto_0
    return-void

    .line 1803
    .restart local v1       #curMirrState:I
    .restart local v3       #plug:I
    :cond_1
    if-nez v3, :cond_2

    .line 1804
    const-string v4, "WirelessDisplayService"

    const-string v5, "HdmiReceiver: HDMI is un-plugged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1806
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v4, v7}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto :goto_0

    .line 1808
    :cond_2
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HdmiReceiver: what is this state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
