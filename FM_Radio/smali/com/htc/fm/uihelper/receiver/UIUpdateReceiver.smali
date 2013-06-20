.class public abstract Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UIUpdateReceiver.java"


# static fields
.field public static final ACTION_FILTER:Landroid/content/IntentFilter; = null

.field private static final TAG:Ljava/lang/String; = "UIUpdateReceiver"


# instance fields
.field private mAirplaneModeOnString:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFreq:I

.field private mIsAirplaneOn:Z

.field private mIsHeadsetPlugged:Z

.field private mIsMuteItemEnabled:Z

.field private mIsRIVALocked:Z

.field private mIsSpeaker:Z

.field private mIsStereo:Z

.field private mNeedHeadsetString:Ljava/lang/String;

.field private mRDS:Ljava/lang/String;

.field private mRssi:I

.field private mScanningString:Ljava/lang/String;

.field private mTurnOffString:Ljava/lang/String;

.field private mTurnOnString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.fmradio.uiupdate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mFreq:I

    .line 22
    iput v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRssi:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRDS:Ljava/lang/String;

    .line 24
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsStereo:Z

    .line 25
    iput-boolean v2, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsHeadsetPlugged:Z

    .line 26
    iput-boolean v2, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsSpeaker:Z

    .line 27
    iput-boolean v2, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsAirplaneOn:Z

    .line 28
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsMuteItemEnabled:Z

    .line 29
    iput-boolean v2, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsRIVALocked:Z

    .line 30
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOnString:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOffString:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mScanningString:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mNeedHeadsetString:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAirplaneModeOnString:Ljava/lang/String;

    return-void
.end method

.method private validString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "pString"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string p1, ""

    .line 154
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAirplaneModeOnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAirplaneModeOnString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->validString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mFreq:I

    return v0
.end method

.method public getNeedHeadsetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mNeedHeadsetString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->validString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRDS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRDS:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRssi:I

    return v0
.end method

.method public getScanningString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mScanningString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->validString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTurnOffString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOffString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->validString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTurnOnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOnString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->validString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAirplaneOn()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsAirplaneOn:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isMuteItemEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsMuteItemEnabled:Z

    return v0
.end method

.method public isRIVALocked()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsRIVALocked:Z

    return v0
.end method

.method public isSpeaker()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsSpeaker:Z

    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsStereo:Z

    return v0
.end method

.method public abstract onAirplaneModeChanged(Z)V
.end method

.method public abstract onFrequencyChanged(I)V
.end method

.method public abstract onHeadsetPlugged(Z)V
.end method

.method public onHideScanDialog()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public abstract onRDSChanged(Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 39
    const-string v5, "command"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, tAction:I
    const-string v5, "+UIUpdateReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v5, :cond_0

    .line 43
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 47
    .local v3, tBundle:Landroid/os/Bundle;
    const-string v5, "freq"

    sget v6, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mFreq:I

    .line 48
    const-string v5, "rssi"

    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRssi:I

    .line 49
    const-string v5, "rds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRDS:Ljava/lang/String;

    .line 50
    const-string v5, "stereo"

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsStereo:Z

    .line 51
    const-string v5, "speaker"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsSpeaker:Z

    .line 52
    const-string v5, "riva_lock_state"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsRIVALocked:Z

    .line 53
    const-string v5, "mute_item_enable_state"

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsMuteItemEnabled:Z

    .line 55
    iget-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsHeadsetPlugged:Z

    .line 57
    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    const-string v5, "-UIUpdateReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 59
    :pswitch_1
    iget v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mFreq:I

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onSeek(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v5, "turn_on_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, tTurnOnString:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 64
    iput-object v4, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOnString:Ljava/lang/String;

    .line 65
    const-string v5, "turn_off_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mTurnOffString:Ljava/lang/String;

    .line 66
    const-string v5, "scanning_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mScanningString:Ljava/lang/String;

    .line 67
    const-string v5, "need_headset_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mNeedHeadsetString:Ljava/lang/String;

    .line 68
    const-string v5, "airplane_mode_on_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mAirplaneModeOnString:Ljava/lang/String;

    .line 70
    :cond_1
    const-string v5, "power"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onSwitchedPower(Z)V

    goto :goto_0

    .line 73
    .end local v4           #tTurnOnString:Ljava/lang/String;
    :pswitch_3
    iget v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRssi:I

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onRssiChanged(I)V

    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mRDS:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onRDSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_5
    iget v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mFreq:I

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onFrequencyChanged(I)V

    goto :goto_0

    .line 82
    :pswitch_6
    const-string v5, "headset_state"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsHeadsetPlugged:Z

    .line 83
    iget-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsHeadsetPlugged:Z

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onHeadsetPlugged(Z)V

    goto :goto_0

    .line 86
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onScanFinish()V

    goto :goto_0

    .line 91
    :pswitch_8
    const-string v5, "airplane_state"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsAirplaneOn:Z

    .line 92
    iget-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsAirplaneOn:Z

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onAirplaneModeChanged(Z)V

    .line 94
    :pswitch_9
    const-string v5, "power"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onSwitchingPower(Z)V

    goto/16 :goto_0

    .line 97
    :pswitch_a
    iget-boolean v5, p0, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->mIsRIVALocked:Z

    invoke-virtual {p0, v5}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onRivaEvent(Z)V

    goto/16 :goto_0

    .line 100
    :pswitch_b
    const-string v5, "timeout_command"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, commandProcessing:I
    invoke-virtual {p0, v1}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onTimeoutEvent(I)V

    goto/16 :goto_0

    .line 104
    .end local v1           #commandProcessing:I
    :pswitch_c
    const-string v5, "unlock_state_machine_flag"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, command:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onUnlockStateMachineFlag(I)V

    goto/16 :goto_0

    .line 108
    .end local v0           #command:I
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->onHideScanDialog()V

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onRivaEvent(Z)V
    .locals 0
    .parameter "pIsRivaLocked"

    .prologue
    .line 195
    return-void
.end method

.method public abstract onRssiChanged(I)V
.end method

.method public abstract onScanFinish()V
.end method

.method public abstract onSeek(I)V
.end method

.method public abstract onSwitchedPower(Z)V
.end method

.method public onSwitchingPower(Z)V
    .locals 0
    .parameter "pIsPowerOn"

    .prologue
    .line 193
    return-void
.end method

.method public onTimeoutEvent(I)V
    .locals 0
    .parameter "pCommandProcessing"

    .prologue
    .line 197
    return-void
.end method

.method public onUnlockStateMachineFlag(I)V
    .locals 0
    .parameter "pCommand"

    .prologue
    .line 199
    return-void
.end method
