.class Lcom/baidu/service/power/SmartPowerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartPowerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/SmartPowerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/SmartPowerService;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/SmartPowerService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 88
    const-string v2, "SmartPowerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive broadcast! action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    #calls: Lcom/baidu/service/power/SmartPowerService;->showToast(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/baidu/service/power/SmartPowerService;->access$000(Lcom/baidu/service/power/SmartPowerService;Landroid/content/Context;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, batteryLevel:I
    const-string v2, "SmartPowerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/service/power/SmartPowerService;->mBatteryFull:Z

    .line 97
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    #calls: Lcom/baidu/service/power/SmartPowerService;->playRingtone()V
    invoke-static {v2}, Lcom/baidu/service/power/SmartPowerService;->access$100(Lcom/baidu/service/power/SmartPowerService;)V

    .line 98
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    iget-object v2, v2, Lcom/baidu/service/power/SmartPowerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    #calls: Lcom/baidu/service/power/SmartPowerService;->showToast(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/baidu/service/power/SmartPowerService;->access$000(Lcom/baidu/service/power/SmartPowerService;Landroid/content/Context;)V

    .line 106
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    #calls: Lcom/baidu/service/power/SmartPowerService;->handleLowBatteryDialog(I)V
    invoke-static {v2, v1}, Lcom/baidu/service/power/SmartPowerService;->access$200(Lcom/baidu/service/power/SmartPowerService;I)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    iput-boolean v5, v2, Lcom/baidu/service/power/SmartPowerService;->mBatteryFull:Z

    .line 103
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    iput-boolean v5, v2, Lcom/baidu/service/power/SmartPowerService;->mIsPlayed:Z

    .line 104
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    iput-boolean v5, v2, Lcom/baidu/service/power/SmartPowerService;->mIsShown:Z

    goto :goto_1

    .line 107
    .end local v1           #batteryLevel:I
    :cond_4
    const-string v2, "com.baidu.smartpm.ACTION_AUTO_CLEAN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "receive ACTION_AUTO_CLEAN !!"

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService$1;->this$0:Lcom/baidu/service/power/SmartPowerService;

    #getter for: Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/service/power/SmartPowerService;->access$300(Lcom/baidu/service/power/SmartPowerService;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/baidu/service/power/SmartPowerService;->doAutoClean(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/baidu/service/power/SmartPowerService;->access$400(Lcom/baidu/service/power/SmartPowerService;Landroid/content/Context;)V

    goto :goto_0
.end method
