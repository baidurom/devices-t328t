.class Lcom/htc/fm/uihelper/service/UIService$2;
.super Lcom/htc/fm/receiver/FMDriverStateReceiver;
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
    .line 164
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrequencyChanged(I)V
    .locals 6
    .parameter "newFreq"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 303
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIService.onFrequencyChanged() newFreq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 307
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onFrequencyChanged() Reply command is wrong. commandProcessing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 312
    const-string v1, "UIService"

    const-string v2, "  UIService.onFrequencyChanged() WHAT_TUNE callback"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$3102(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 318
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->callbackReceived(I)V

    .line 320
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->onFreqChanged(I)V
    invoke-static {v1, p1}, Lcom/htc/fm/uihelper/service/UIService;->access$3300(Lcom/htc/fm/uihelper/service/UIService;I)V

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3000(Lcom/htc/fm/uihelper/service/UIService;Landroid/os/Bundle;)V

    .line 326
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRDSToUi()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1200(Lcom/htc/fm/uihelper/service/UIService;)V

    goto :goto_0

    .line 315
    .end local v0           #tBundle:Landroid/os/Bundle;
    :cond_1
    const-string v1, "UIService"

    const-string v2, "  UIService.onFrequencyChanged() WHAT_SEEK_UP/WHAT_SEEK_DOWN callback"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$3202(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    goto :goto_1
.end method

.method public onRDSChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "newFreq"
    .parameter "newRDS"

    .prologue
    .line 294
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIService.onRDSChanged() newFreq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newRDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1500(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/components/ChannelInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/fm/components/ChannelInfo;->updateRDS(ILjava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRDSToUi()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1200(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 299
    return-void
.end method

.method public onResetFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+UIService.onResetFinish() isTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$3402(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 362
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->setRIVALocked(Z)V

    .line 363
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRivaLockStateToUi()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3500(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 364
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {v1}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    .line 366
    .local v0, tIsAirplaneMode:Z
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onResetFinish() AirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onResetFinish() HeadsetPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 369
    :cond_0
    const-string v1, "UIService"

    const-string v2, "  UIService.onResetFinish() on --> off"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 371
    if-eqz v0, :cond_2

    .line 372
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendAirplaneModeStateToUi(Z)V
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1700(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v2, 0x1

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 388
    .end local v0           #tIsAirplaneMode:Z
    :cond_1
    :goto_1
    const-string v1, "UIService"

    const-string v2, "-UIService.onResetFinish()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void

    .line 374
    .restart local v0       #tIsAirplaneMode:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendHeadsetStateToUi(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1800(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$3600(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->load()I

    move-result v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->tune(I)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$3700(Lcom/htc/fm/uihelper/service/UIService;I)V

    .line 379
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getRssiOnIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    .line 380
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isMute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getMuteIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    .line 385
    :goto_2
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getUnmuteIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onResetStart()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "UIService"

    const-string v1, "+UIService.onResetStart()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3402(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 353
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->setRIVALocked(Z)V

    .line 354
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendRivaLockStateToUi()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3500(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 355
    const-string v0, "UIService"

    const-string v1, "-UIService.onResetStart()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public onRssiChanged(I)V
    .locals 4
    .parameter "newRssi"

    .prologue
    .line 285
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIService.onRssiChanged() newRssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3000(Lcom/htc/fm/uihelper/service/UIService;Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public onSeek(I)V
    .locals 4
    .parameter "newFreq"

    .prologue
    .line 331
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIService.onSeek() newFreq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3000(Lcom/htc/fm/uihelper/service/UIService;Landroid/os/Bundle;)V

    .line 336
    return-void
.end method

.method public onSeeking()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "UIService"

    const-string v1, "UIService.onSeeking()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onTurnOff()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 234
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+UIService.onTurnOff() isTurnOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 236
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-UIService.onTurnOff() Reply command is wrong. commandProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    const-string v0, "UIService"

    const-string v1, "-UIService.onTurnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 244
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$100(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->save(Z)V

    .line 245
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1402(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 246
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$2502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 247
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isScan:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$2602(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 248
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$802(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 250
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1500(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/components/ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fm/components/ChannelInfo;->clearRDS()V

    .line 252
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->callbackReceived(I)V

    .line 254
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  UIService.onTurnOff() HeadsetPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTurnOffByHeadsetUnplugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$500(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$500(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->isMatchTurnOnConditions()Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2700(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "UIService"

    const-string v1, "  UIService.onTurnOff() off --> on"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendHeadsetStateToUi(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1800(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 258
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 259
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 260
    const-string v0, "UIService"

    const-string v1, "-UIService.onTurnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1902(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 265
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->onTurnOff()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$2800(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 267
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendMuteStateToUi(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$2900(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 269
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/uihelper/service/UIService;->access$300(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 271
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {v0}, Lcom/htc/fm/utils/DeviceUtils;->isForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    const-string v0, "UIService"

    const-string v1, "  UIService.onTurnOff() unregister Media Button receiver"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->unregisterMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 275
    :cond_3
    const-string v0, "UIService"

    const-string v1, "-UIService.onTurnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onTurnOn()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 168
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+UIService.onTurnOn() isTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 170
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-UIService.onTurnOn() Reply command is wrong. commandProcessing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->getCommandProcessing()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "UIService"

    const-string v2, "-UIService.onTurnOn()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$002(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 178
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$100(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->save(Z)V

    .line 179
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$1402(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 181
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1500(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/components/ChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/components/ChannelInfo;->clearRDS()V

    .line 183
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->callbackReceived(I)V

    .line 185
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {v1}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    .line 186
    .local v0, tIsAirplaneMode:Z
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onTurnOn() HeadsetPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onTurnOn() AirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_4

    .line 189
    :cond_2
    const-string v1, "UIService"

    const-string v2, "  UIService.onTurnOn() on --> off"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 191
    if-eqz v0, :cond_3

    .line 192
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendAirplaneModeStateToUi(Z)V
    invoke-static {v1, v0}, Lcom/htc/fm/uihelper/service/UIService;->access$1700(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 197
    const-string v1, "UIService"

    const-string v2, "-UIService.onTurnOn()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendHeadsetStateToUi(Z)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1800(Lcom/htc/fm/uihelper/service/UIService;Z)V

    goto :goto_1

    .line 201
    :cond_4
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UIService.onTurnOn() ForceTurnOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v3}, Lcom/htc/fm/uihelper/service/UIService;->access$1900(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$1900(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 204
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v1, v4}, Lcom/htc/fm/uihelper/service/UIService;->access$1902(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 207
    :cond_5
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->onTurnOn()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$200(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 209
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->isPhoneIdle()Z
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 210
    const-string v1, "UIService"

    const-string v2, "  UIService.onTurnOn() isPhoneIdle: false"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->registerPhoneStateListener()V
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2100(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 212
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :goto_2
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V
    invoke-static {v1, v5}, Lcom/htc/fm/uihelper/service/UIService;->access$300(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 226
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getRssiOnIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    .line 228
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->registerMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 229
    const-string v1, "UIService"

    const-string v2, "-UIService.onTurnOn()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    const-string v1, "UIService"

    const-string v2, "  UIService.onTurnOn() isPhoneIdle: true"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isMute()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 217
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getMuteIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    .line 222
    :goto_3
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/uihelper/service/UIService;->access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService$2;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getUnmuteIntent()Landroid/content/Intent;

    move-result-object v2

    #calls: Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V

    goto :goto_3
.end method
