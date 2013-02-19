.class final Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayNotification;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const v7, 0x10805e5

    const/4 v6, 0x0

    .line 396
    if-nez p2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 404
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 407
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 408
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v4, v6}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 409
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v4, v8, v9}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto :goto_0

    .line 414
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_2
    const-string v4, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 418
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 419
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 421
    .restart local v2       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 422
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v4, v6}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 423
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v4, v8, v9}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto :goto_0

    .line 428
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_3
    const-string v4, "com.htc.wifidisplay.NOTIFICATION_BTN_CLICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 430
    .local v3, statusbar:Landroid/app/StatusBarManager;
    if-eqz v3, :cond_4

    .line 431
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 434
    :cond_4
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$500(Lcom/htc/server/WirelessDisplayNotification;)Lcom/htc/server/WirelessDisplayNotification$H;

    move-result-object v4

    const/16 v5, 0x1f5

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayNotification$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 435
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$500(Lcom/htc/server/WirelessDisplayNotification;)Lcom/htc/server/WirelessDisplayNotification$H;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/server/WirelessDisplayNotification$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
