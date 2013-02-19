.class Lcom/htc/server/gesture/GestureService$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/gesture/GestureService;->registerBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/gesture/GestureService;


# direct methods
.method constructor <init>(Lcom/htc/server/gesture/GestureService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/server/gesture/GestureService$1;->this$0:Lcom/htc/server/gesture/GestureService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService$1;->this$0:Lcom/htc/server/gesture/GestureService;

    iget-object v1, v0, Lcom/htc/server/gesture/GestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService$1;->this$0:Lcom/htc/server/gesture/GestureService;

    #calls: Lcom/htc/server/gesture/GestureService;->handleGestureEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/htc/server/gesture/GestureService;->access$000(Lcom/htc/server/gesture/GestureService;)V

    .line 46
    monitor-exit v1

    .line 48
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
