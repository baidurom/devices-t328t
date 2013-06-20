.class Lcom/htc/fm/uihelper/service/UIService$6;
.super Ljava/lang/Object;
.source "UIService.java"

# interfaces
.implements Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;


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
    .line 473
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetModeChanged(Z)V
    .locals 4
    .parameter "isPlugged"

    .prologue
    const/4 v3, 0x1

    .line 475
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+UIService.onHeadsetModeChanged() isHeadsetPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTurning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRIVALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v0, p1}, Lcom/htc/fm/uihelper/service/UIService;->access$1602(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 477
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendHeadsetStateToUi(Z)V
    invoke-static {v0, p1}, Lcom/htc/fm/uihelper/service/UIService;->access$1800(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 479
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 480
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {v0}, Lcom/htc/fm/utils/DeviceUtils;->isForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x0

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 486
    :cond_0
    :goto_0
    const-string v0, "UIService"

    const-string v1, "-UIService.onHeadsetModeChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$6;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_0
.end method
