.class final Lcom/htc/server/WirelessDisplayService$InfoListener;
.super Ljava/lang/Object;
.source "WirelessDisplayService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 4303
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4303
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$InfoListener;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 12
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v11, 0xde

    const/16 v10, 0x6f

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4306
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA RCORDER Info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    const/16 v4, 0x7d1

    if-ne p2, v4, :cond_0

    .line 4308
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Interface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Mirror State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 4310
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v4}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 4311
    .local v0, curDongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 4312
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curDongle state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    iget v4, v0, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v9, :cond_0

    .line 4314
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$7600(Lcom/htc/server/WirelessDisplayService;)V

    .line 4315
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v4, v7}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 4316
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4317
    .local v3, notifyUserSwitch:Landroid/content/Intent;
    const-string v4, "visible"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4318
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$InfoListener;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4319
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    invoke-virtual {v4, v11, v7, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4320
    .local v1, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4321
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4323
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    invoke-virtual {v4, v10, v8, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4324
    .local v2, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4325
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    const-wide/16 v5, 0x13ba

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4330
    .end local v0           #curDongle:Lcom/htc/service/DongleInfo;
    .end local v1           #disableSwitchMsg:Landroid/os/Message;
    .end local v2           #mirrorMsg:Landroid/os/Message;
    .end local v3           #notifyUserSwitch:Landroid/content/Intent;
    :cond_0
    return-void
.end method
