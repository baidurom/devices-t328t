.class public abstract Lcom/htc/fm/receiver/FMDriverStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMDriverStateReceiver.java"


# static fields
.field public static final ACTION_FILTER:Landroid/content/IntentFilter; = null

.field private static final TAG:Ljava/lang/String; = "FMDriverStateReceiver"


# instance fields
.field private isStereo:Z

.field private mFreq:I

.field private mRDS:Ljava/lang/String;

.field private mResult:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.fmservice.callback"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    .line 19
    sget-object v0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.htc.fmservice.turnoff"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput v1, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    .line 23
    iput v1, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRssi:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRDS:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->isStereo:Z

    .line 26
    iput v1, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mResult:I

    return-void
.end method


# virtual methods
.method public getFreq()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    return v0
.end method

.method public getRDS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRDS:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mResult:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRssi:I

    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->isStereo:Z

    return v0
.end method

.method public abstract onFrequencyChanged(I)V
.end method

.method public abstract onRDSChanged(ILjava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+FMDriverStateReceive.onReceive() action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "com.htc.fmservice.callback"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "rssi"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRssi:I

    .line 37
    const-string v3, "stereo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->isStereo:Z

    .line 38
    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mResult:I

    .line 40
    const-string v3, "command"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, state:I
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    packed-switch v2, :pswitch_data_0

    .line 91
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #state:I
    :goto_0
    :pswitch_0
    const-string v3, "FMDriverStateReceiver"

    const-string v4, "-FMDriverStateReceive.onReceive()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 44
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #state:I
    :pswitch_1
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_TURN_ON freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onTurnOn()V

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_TURN_OFF freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onTurnOff()V

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_SEEK_UP/WHAT_SEEK_DOWN freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {p0, v3}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onSeek(I)V

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() STATE_SEEKING_DOWN/STATE_SEEKING_UP freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onSeeking()V

    goto/16 :goto_0

    .line 62
    :pswitch_5
    const-string v3, "rds"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRDS:Ljava/lang/String;

    .line 63
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_RDS rds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRDS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    iget-object v4, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRDS:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onRDSChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :pswitch_6
    const-string v3, "FMDriverStateReceiver"

    const-string v4, "  FMDriverStateReceive.onReceive() WHAT_RSSI_REPORT"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mRssi:I

    invoke-virtual {p0, v3}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onRssiChanged(I)V

    goto/16 :goto_0

    .line 71
    :pswitch_7
    const-string v3, "freq"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    .line 72
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_TUNE freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget v3, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->mFreq:I

    invoke-virtual {p0, v3}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onFrequencyChanged(I)V

    goto/16 :goto_0

    .line 76
    :pswitch_8
    const-string v3, "FMDriverStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  FMDriverStateReceive.onReceive() WHAT_SWITCH_MONO_STEREO isStereo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/receiver/FMDriverStateReceiver;->isStereo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :pswitch_9
    const-string v3, "FMDriverStateReceiver"

    const-string v4, "  FMDriverStateReceive.onReceive() WHAT_RESET_START"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onResetStart()V

    goto/16 :goto_0

    .line 84
    :pswitch_a
    const-string v3, "FMDriverStateReceiver"

    const-string v4, "  FMDriverStateReceive.onReceive() WHAT_RESET_FINISH"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onResetFinish()V

    goto/16 :goto_0

    .line 89
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #state:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->onTurnOff()V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public abstract onResetFinish()V
.end method

.method public abstract onResetStart()V
.end method

.method public abstract onRssiChanged(I)V
.end method

.method public abstract onSeek(I)V
.end method

.method public abstract onSeeking()V
.end method

.method public abstract onTurnOff()V
.end method

.method public abstract onTurnOn()V
.end method
