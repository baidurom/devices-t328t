.class Lcom/htc/fm/uihelper/service/UIService$5;
.super Ljava/lang/Object;
.source "UIService.java"

# interfaces
.implements Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;


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
    .line 459
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 3
    .parameter "isAirplaneMode"

    .prologue
    .line 461
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+UIService.onAirplaneModeChanged() isAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRIVALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendAirplaneModeStateToUi(Z)V
    invoke-static {v0, p1}, Lcom/htc/fm/uihelper/service/UIService;->access$1700(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 466
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$5;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x1

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 469
    :cond_0
    const-string v0, "UIService"

    const-string v1, "-UIService.onAirplaneModeChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method
