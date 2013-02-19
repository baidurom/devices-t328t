.class Lcom/htc/server/gesture/GestureService$2;
.super Landroid/database/ContentObserver;
.source "GestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/gesture/GestureService;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/gesture/GestureService;


# direct methods
.method constructor <init>(Lcom/htc/server/gesture/GestureService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/server/gesture/GestureService$2;->this$0:Lcom/htc/server/gesture/GestureService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 69
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService$2;->this$0:Lcom/htc/server/gesture/GestureService;

    iget-object v1, v0, Lcom/htc/server/gesture/GestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService$2;->this$0:Lcom/htc/server/gesture/GestureService;

    #calls: Lcom/htc/server/gesture/GestureService;->handleGestureEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/htc/server/gesture/GestureService;->access$000(Lcom/htc/server/gesture/GestureService;)V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
