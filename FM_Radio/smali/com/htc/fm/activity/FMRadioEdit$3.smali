.class Lcom/htc/fm/activity/FMRadioEdit$3;
.super Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;
.source "FMRadioEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/activity/FMRadioEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioEdit;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-direct {p0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 1
    .parameter "pIsAirplaneOn"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-static {v0}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioEdit;->finish()V

    .line 204
    :cond_0
    return-void
.end method

.method public onFrequencyChanged(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 182
    const-string v0, "FMRadioEdit"

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

    .line 183
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    #calls: Lcom/htc/fm/activity/FMRadioEdit;->setFreq(I)V
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioEdit;->access$200(Lcom/htc/fm/activity/FMRadioEdit;I)V

    .line 184
    const-string v0, "FMRadioEdit"

    const-string v1, "-mUiUpdateReceiver.onFrequencyChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onHeadsetPlugged(Z)V
    .locals 0
    .parameter "pIsPlugged"

    .prologue
    .line 191
    return-void
.end method

.method public onRDSChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "pRDS"

    .prologue
    .line 172
    return-void
.end method

.method public onRssiChanged(I)V
    .locals 0
    .parameter "pRssi"

    .prologue
    .line 178
    return-void
.end method

.method public onScanFinish()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onSeek(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 156
    const-string v0, "FMRadioEdit"

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

    .line 157
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    #calls: Lcom/htc/fm/activity/FMRadioEdit;->setFreq(I)V
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioEdit;->access$200(Lcom/htc/fm/activity/FMRadioEdit;I)V

    .line 158
    const-string v0, "FMRadioEdit"

    const-string v1, "-mUiUpdateReceiver.onSeek()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onSwitchedPower(Z)V
    .locals 1
    .parameter "pIsPowerOn"

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$3;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioEdit;->finish()V

    .line 166
    :cond_0
    return-void
.end method
