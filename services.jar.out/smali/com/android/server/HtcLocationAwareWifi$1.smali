.class Lcom/android/server/HtcLocationAwareWifi$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcLocationAwareWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcLocationAwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcLocationAwareWifi;


# direct methods
.method constructor <init>(Lcom/android/server/HtcLocationAwareWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;
    invoke-static {v1}, Lcom/android/server/HtcLocationAwareWifi;->access$000(Lcom/android/server/HtcLocationAwareWifi;)Lcom/android/server/HtcCellInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/HtcCellInfoManager;->isInService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;

    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;-><init>(Lcom/android/server/HtcLocationAwareWifi;Landroid/content/Intent;Lcom/android/server/HtcLocationAwareWifi$1;)V

    .line 277
    .local v0, runnable:Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mModemHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/HtcLocationAwareWifi;->access$200(Lcom/android/server/HtcLocationAwareWifi;)Landroid/os/Handler;

    move-result-object v2

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I
    invoke-static {v1}, Lcom/android/server/HtcLocationAwareWifi;->access$300(Lcom/android/server/HtcLocationAwareWifi;)I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_1

    .line 282
    monitor-exit v2

    .line 293
    .end local v0           #runnable:Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0       #runnable:Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mModemHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/HtcLocationAwareWifi;->access$200(Lcom/android/server/HtcLocationAwareWifi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi$1;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-static {v1}, Lcom/android/server/HtcLocationAwareWifi;->access$308(Lcom/android/server/HtcLocationAwareWifi;)I

    .line 286
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
