.class Lcom/android/server/wm/WindowManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 11777
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 11779
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mLastNavVisibility:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11798
    :goto_0
    return-void

    .line 11783
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 11784
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "SIP_VISIBLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 11786
    .local v1, sipVisible:Z
    if-eqz v1, :cond_2

    .line 11787
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->setNavigationBarVisibility(Z)V

    .line 11792
    :goto_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_NAV_BAR:Z

    if-eqz v2, :cond_1

    .line 11793
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sipVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastNavVisibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mLastNavVisibility:Z
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11797
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto :goto_0

    .line 11789
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->setNavigationBarVisibility(Z)V

    goto :goto_1
.end method
