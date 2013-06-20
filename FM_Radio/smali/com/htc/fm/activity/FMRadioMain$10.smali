.class Lcom/htc/fm/activity/FMRadioMain$10;
.super Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;
.source "FMRadioMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/activity/FMRadioMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioMain;

.field private useSeekAnimation:Z


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 1
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct {p0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;-><init>()V

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->useSeekAnimation:Z

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 3
    .parameter "pIsAirplaneOn"

    .prologue
    .line 929
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onAirplaneModeChanged() airplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$000(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$000(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 932
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioMain;->finish()V

    .line 934
    :cond_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onAirplaneModeChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method public onFrequencyChanged(I)V
    .locals 5
    .parameter "pFreq"

    .prologue
    const/4 v4, 0x0

    .line 866
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onFrequencyChanged() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0, v4}, Lcom/htc/fm/activity/FMRadioMain;->access$1102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-gt v0, p1, :cond_1

    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    if-gt p1, v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 873
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v1

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain$10;->useSeekAnimation:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 879
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 880
    iput-boolean v4, p0, Lcom/htc/fm/activity/FMRadioMain$10;->useSeekAnimation:Z

    .line 882
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3600(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3700(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z
    invoke-static {v0, v4}, Lcom/htc/fm/activity/FMRadioMain;->access$3602(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 884
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z
    invoke-static {v0, v4}, Lcom/htc/fm/activity/FMRadioMain;->access$3702(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 885
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->getPresetsCount()I
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3800(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v0

    if-lez v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v0, v0, Lcom/htc/fm/activity/FMRadioMain;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    :cond_2
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onFrequencyChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void

    .line 877
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$900(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    goto :goto_0
.end method

.method public onHeadsetPlugged(Z)V
    .locals 3
    .parameter "pIsPlugged"

    .prologue
    .line 894
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onHeadsetPlugged() isPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->access$302(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 896
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 898
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2600(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 899
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showPowerOffDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2700(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 909
    :cond_0
    :goto_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onHeadsetPlugged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideNoHeadsetDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 905
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$000(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showPowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$500(Lcom/htc/fm/activity/FMRadioMain;)V

    goto :goto_0
.end method

.method public onHideScanDialog()V
    .locals 2

    .prologue
    .line 988
    const-string v0, "FMRadioMain"

    const-string v1, "+mUiUpdateReceiver.onDisableScanDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideScanningDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2300(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 990
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onDisableScanDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public onRDSChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "pRDS"

    .prologue
    .line 846
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onRDSChanged() rds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->updateTitle(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->access$3400(Lcom/htc/fm/activity/FMRadioMain;Ljava/lang/String;)V

    .line 848
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onRDSChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public onRivaEvent(Z)V
    .locals 3
    .parameter "pIsRivaLocked"

    .prologue
    .line 939
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onRivaEvent() irRivaLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->access$3202(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 941
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->lockUi(Z)V
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->access$3300(Lcom/htc/fm/activity/FMRadioMain;Z)V

    .line 942
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onRivaEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method public onRssiChanged(I)V
    .locals 4
    .parameter "pRssi"

    .prologue
    .line 853
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onRssiChanged() rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    add-int/lit8 v0, p1, 0x6e

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x401c

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 857
    if-gez p1, :cond_0

    .line 858
    const/4 p1, 0x0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3500(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/SignalBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fm/ui/widget/SignalBar;->setRssi(I)V

    .line 861
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onRssiChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public onScanFinish()V
    .locals 4

    .prologue
    .line 914
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+mUiUpdateReceiver.onScanFinish() isHeadsetPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v3}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideScanningDialog()V
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$2300(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 916
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v2, 0x1

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z
    invoke-static {v1, v2}, Lcom/htc/fm/activity/FMRadioMain;->access$3602(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 918
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->getPresetsCount()I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$3800(Lcom/htc/fm/activity/FMRadioMain;)I

    move-result v0

    .line 919
    .local v0, tSize:I
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUiUpdateReceiver.onScanFinish() size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-nez v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showNoChannelFoundDialog()V
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$3900(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 924
    .end local v0           #tSize:I
    :cond_0
    const-string v1, "FMRadioMain"

    const-string v2, "-mUiUpdateReceiver.onScanFinish()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public onSeek(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 784
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onSeek() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->useSeekAnimation:Z

    .line 786
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onSeek()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public onSwitchedPower(Z)V
    .locals 3
    .parameter "pIsPowerOn"

    .prologue
    .line 814
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onSwitchedPower() power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isGetPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z
    invoke-static {v2}, Lcom/htc/fm/activity/FMRadioMain;->access$2800(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioMain;->access$102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 816
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v1

    #calls: Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$200(Lcom/htc/fm/activity/FMRadioMain;Z)V

    .line 817
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2800(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 819
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2600(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 820
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOffDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2100(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain$10;->isStereo()Z

    move-result v1

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$2902(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 823
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 824
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideNoHeadsetDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 835
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain$10;->isRIVALocked()Z

    move-result v1

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$3202(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 836
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3200(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    const-string v0, "FMRadioMain"

    const-string v1, "  mUiUpdateReceiver.onSwitchedPower() isRivaLocked: true"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioMain;->access$3200(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v1

    #calls: Lcom/htc/fm/activity/FMRadioMain;->lockUi(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$3300(Lcom/htc/fm/activity/FMRadioMain;Z)V

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$2802(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 841
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onSwitchedPower()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 828
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioMain;->showNoHeadsetDialog()V

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$300(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOffPressed:Z
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$3100(Lcom/htc/fm/activity/FMRadioMain;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioMain;->finish()V

    goto :goto_0
.end method

.method public onSwitchingPower(Z)V
    .locals 3
    .parameter "pIsPowerOn"

    .prologue
    .line 791
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onSwitchingPower() power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz p1, :cond_2

    .line 793
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1900(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1900(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 795
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOffDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2100(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 796
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showPowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$500(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 809
    :cond_1
    :goto_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onSwitchingPower()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideScanConfirmDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2200(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 801
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideScanningDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2300(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 802
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideNoChannelFoundDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2400(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 803
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2500(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2500(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 805
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2600(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 806
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->showPowerOffDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2700(Lcom/htc/fm/activity/FMRadioMain;)V

    goto :goto_0
.end method

.method public onTimeoutEvent(I)V
    .locals 4
    .parameter "pCommandProcessing"

    .prologue
    const/4 v3, 0x1

    .line 947
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onTimeoutEvent() commandProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    packed-switch p1, :pswitch_data_0

    .line 967
    :goto_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onTimeoutEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2600(Lcom/htc/fm/activity/FMRadioMain;)V

    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hidePowerOffDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2100(Lcom/htc/fm/activity/FMRadioMain;)V

    .line 956
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z
    invoke-static {v0, v3}, Lcom/htc/fm/activity/FMRadioMain;->access$102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    .line 957
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/activity/FMRadioMain;->access$200(Lcom/htc/fm/activity/FMRadioMain;Z)V

    goto :goto_0

    .line 961
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #calls: Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$2000(Lcom/htc/fm/activity/FMRadioMain;)V

    goto :goto_0

    .line 964
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$1102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    goto :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUnlockStateMachineFlag(I)V
    .locals 3
    .parameter "pCommand"

    .prologue
    .line 972
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mUiUpdateReceiver.onUnlockStateMachineFlag() command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    packed-switch p1, :pswitch_data_0

    .line 983
    :goto_0
    :pswitch_0
    const-string v0, "FMRadioMain"

    const-string v1, "-mUiUpdateReceiver.onUnlockStateMachineFlag()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    return-void

    .line 980
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$10;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->access$1102(Lcom/htc/fm/activity/FMRadioMain;Z)Z

    goto :goto_0

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
