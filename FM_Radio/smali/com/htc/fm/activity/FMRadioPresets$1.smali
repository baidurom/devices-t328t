.class Lcom/htc/fm/activity/FMRadioPresets$1;
.super Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;
.source "FMRadioPresets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/activity/FMRadioPresets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioPresets;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioPresets;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct {p0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 1
    .parameter "pIsAirplaneOn"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-static {v0}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->finish()V

    .line 233
    :cond_0
    return-void
.end method

.method public onFrequencyChanged(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 221
    const-string v0, "FMRadioPresets"

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

    .line 222
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #setter for: Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->access$002(Lcom/htc/fm/activity/FMRadioPresets;I)I

    .line 223
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioPresets;->access$000(Lcom/htc/fm/activity/FMRadioPresets;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setCurrentFrequency(I)V

    .line 225
    :cond_0
    const-string v0, "FMRadioPresets"

    const-string v1, "-mUiUpdateReceiver.onFrequencyChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onHeadsetPlugged(Z)V
    .locals 0
    .parameter "pIsPlugged"

    .prologue
    .line 217
    return-void
.end method

.method public onRDSChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "pRDS"

    .prologue
    .line 211
    return-void
.end method

.method public onRssiChanged(I)V
    .locals 0
    .parameter "pRssi"

    .prologue
    .line 205
    return-void
.end method

.method public onScanFinish()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onSeek(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 188
    const-string v0, "FMRadioPresets"

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

    .line 189
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #setter for: Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I
    invoke-static {v0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->access$002(Lcom/htc/fm/activity/FMRadioPresets;I)I

    .line 190
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I
    invoke-static {v1}, Lcom/htc/fm/activity/FMRadioPresets;->access$000(Lcom/htc/fm/activity/FMRadioPresets;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setCurrentFrequency(I)V

    .line 192
    :cond_0
    const-string v0, "FMRadioPresets"

    const-string v1, "-mUiUpdateReceiver.onSeek()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onSwitchedPower(Z)V
    .locals 1
    .parameter "pIsPowerOn"

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$1;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->finish()V

    .line 184
    :cond_0
    return-void
.end method
