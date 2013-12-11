.class public abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipConnectionBase$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SIP_CONN"


# instance fields
.field cliValid:Lcom/android/internal/telephony/Connection$CliValid;

.field private connectTime:J

.field private connectTimeReal:J

.field private createTime:J

.field private dialString:Ljava/lang/String;

.field private disconnectTime:J

.field private duration:J

.field private holdingStartTime:J

.field private isIncoming:Z

.field private mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private nextPostDialChar:I

.field noLocalWaitingTone:Z

.field private postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private postDialString:Ljava/lang/String;

.field rawCause:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    .line 64
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->cliValid:Lcom/android/internal/telephony/Connection$CliValid;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->dialString:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->isIncoming:Z

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->createTime:J

    .line 78
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 195
    const-string v0, "SIP_CONN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method public FWIMReceived()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPostDial()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCCWT()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->noLocalWaitingTone:Z

    return v0
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallDurationMillis()J
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->cliValid:Lcom/android/internal/telephony/Connection$CliValid;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/internal/telephony/Connection;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->createTime:J

    return-wide v0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 115
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-wide v0

    .line 117
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 120
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    goto :goto_0
.end method

.method public getFWIMTime()J
    .locals 2

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 145
    const-wide/16 v0, 0x0

    .line 147
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    return v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRawDisconnectCause()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getRawDisonnectCause()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->rawCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 188
    :cond_0
    const-string v0, ""

    .line 191
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 275
    return-void
.end method

.method public htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isVTCall()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 173
    return-void
.end method

.method public requestFallBack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 307
    return-void
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method public setCCWT(Z)V
    .locals 0
    .parameter "noLocalWaitingTone"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->noLocalWaitingTone:Z

    .line 223
    return-void
.end method

.method public setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
    .locals 0
    .parameter "cliValid"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->cliValid:Lcom/android/internal/telephony/Connection$CliValid;

    .line 213
    return-void
.end method

.method protected setDisconnectCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 158
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->disconnectTime:J

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->holdingStartTime:J

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
