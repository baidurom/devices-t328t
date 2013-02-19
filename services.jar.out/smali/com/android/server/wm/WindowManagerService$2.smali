.class Lcom/android/server/wm/WindowManagerService$2;
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
    .line 335
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 338
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 339
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v11

    .line 341
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, -0x1

    #setter for: Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I
    invoke-static {v10, v12}, Lcom/android/server/wm/WindowManagerService;->access$202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 342
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    invoke-static {v10, v12}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 343
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    const-string v10, "com.htc.intent.action.SET_ANIM_PROPERTIES"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 351
    const-string v10, "AnimationDuration"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, animationDuration:I
    const-string v10, "AnimationRate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 353
    .local v2, animationRate:I
    const-string v10, "RotateAngle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 354
    .local v6, rotateAngle:I
    const-string v10, "ShadowColor"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 355
    .local v7, shadowColor:I
    const-string v10, "ShadowTransparency"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 356
    .local v9, shadowTransparency:I
    const-string v10, "PositionX"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 357
    .local v3, positionX:F
    const-string v10, "PositionY"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 358
    .local v4, positionY:F
    const-string v10, "PositionZ"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    .line 359
    .local v5, positionZ:F
    const-string v10, "ShadowEnable"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 371
    .local v8, shadowEnable:Z
    const-string v10, "sys.anim.duration"

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v10, "sys.anim.rate"

    int-to-long v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v10, "sys.anim.rotate.angle"

    int-to-long v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v10, "sys.anim.shadow.color"

    int-to-long v11, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v10, "sys.anim.shadow.transparency"

    int-to-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v10, "sys.anim.shadow.position_x"

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v10, "sys.anim.shadow.position_y"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v10, "sys.anim.shadow.position_z"

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v10, "sys.anim.shadow.enable"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mHtcGlAnimMgr:Lcom/android/server/wm/HtcGlAnimManager;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/HtcGlAnimManager;->setAnimationDuration(I)V

    .line 381
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mHtcGlAnimMgr:Lcom/android/server/wm/HtcGlAnimManager;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/HtcGlAnimManager;->setAnimationRate(I)V

    .line 385
    .end local v1           #animationDuration:I
    .end local v2           #animationRate:I
    .end local v3           #positionX:F
    .end local v4           #positionY:F
    .end local v5           #positionZ:F
    .end local v6           #rotateAngle:I
    .end local v7           #shadowColor:I
    .end local v8           #shadowEnable:Z
    .end local v9           #shadowTransparency:I
    :cond_0
    return-void

    .line 343
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method
