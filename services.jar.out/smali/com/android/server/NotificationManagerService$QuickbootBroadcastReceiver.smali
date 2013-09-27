.class Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, action:Ljava/lang/String;
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive the Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mIsQbShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$1703(Lcom/android/server/NotificationManagerService;Z)Z

    .line 476
    const-string v1, "NotificationService"

    const-string v2, "Turn off the notification Light"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    #calls for: invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->turnOffLights()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1001(Lcom/android/server/NotificationManagerService;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mIsQbShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$1703(Lcom/android/server/NotificationManagerService;Z)Z

    .line 481
    const-string v1, "NotificationService"

    const-string v2, "Update the notification Light"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto :goto_0
.end method
