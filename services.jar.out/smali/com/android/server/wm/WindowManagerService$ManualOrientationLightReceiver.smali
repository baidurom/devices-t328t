.class final Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManualOrientationLightReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 11247
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11247
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method private isValidOrientation(I)Z
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 11277
    const/4 v0, 0x0

    .line 11278
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 11285
    :goto_0
    return v0

    .line 11283
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 11278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 11250
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11251
    .local v3, strPackage:Ljava/lang/String;
    const-string v5, "orientation"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 11252
    .local v2, nOrientation:I
    const-string v5, "manual"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 11255
    .local v0, bManual:Z
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-ne v5, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->isValidOrientation(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11274
    :cond_0
    :goto_0
    return-void

    .line 11260
    :cond_1
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManualOrientationLightReceiver<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "><"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "><"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11261
    new-instance v4, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    invoke-direct {v4}, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;-><init>()V

    .line 11262
    .local v4, vkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;
    if-eqz v4, :cond_0

    .line 11263
    iput-boolean v0, v4, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mManual:Z

    .line 11264
    iput v2, v4, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mOrientation:I

    .line 11266
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 11267
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 11268
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11271
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
