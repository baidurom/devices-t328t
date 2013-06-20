.class Lcom/htc/fm/uihelper/service/UIService$8;
.super Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;
.source "UIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/service/UIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/uihelper/service/UIService;


# direct methods
.method constructor <init>(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickBoot()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1099
    const-string v0, "QuickBootPowerOffReceiver"

    const-string v1, "+onQuickBoot()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V
    invoke-static {v0, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$300(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 1101
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v0, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 1102
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$100(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->save(Z)V

    .line 1103
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->onTurnOff()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2800(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 1104
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3900(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 1105
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$8;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->unmute()V

    .line 1106
    const-string v0, "QuickBootPowerOffReceiver"

    const-string v1, "-onQuickBoot()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-void
.end method
