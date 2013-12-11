.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DELAY_PHONE_STATE_CHANGE:I = 0x3b

.field protected static final EVENT_DIAL_RESPONSE:I = 0x41

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HTC_ACCEPT_CALL_CDMA:I = 0x37

.field protected static final EVENT_HTC_CALL_RING:I = 0x3a

.field protected static final EVENT_HTC_CDMA_ANSWER_AND_END_ACTIVE:I = 0x3f

.field protected static final EVENT_HTC_CDMA_OTA_PROVISION:I = 0x40

.field protected static final EVENT_HTC_CDMA_PENDING_THREE_WAY_CALL_RESULT:I = 0x38

.field protected static final EVENT_HTC_FWIM:I = 0x3d

.field protected static final EVENT_HTC_REDIRECT_NUMBER_CDMA:I = 0x35

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_POLL_PENDING_MO_CALLS_RESULT:I = 0x36

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_DELAYED_RESULT:I = 0x39

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field protected static final EVENT_UNSOL_CCWA_INFOMRATION:I = 0x34

.field protected static final EVENT_UNSOL_CCWT_INFOMRATION:I = 0x3c

.field protected static final EVENT_UNSOL_CLI_INFORMATION:I = 0x33

.field protected static final EVENT_UNSOL_ECC_USSD:I = 0x3e

.field static final POLL_DELAY_MSEC:I = 0xfa


# instance fields
.field public cm:Lcom/android/internal/telephony/CommandsInterface;

.field protected lastRelevantPoll:Landroid/os/Message;

.field protected mAccMute:Ljava/lang/String;

.field protected mAccPhoneIn:Ljava/lang/String;

.field protected mAccPhoneOff:Ljava/lang/String;

.field protected mAccUnmute:Ljava/lang/String;

.field protected mMutePath:Ljava/lang/String;

.field protected mPhoneInPath:Ljava/lang/String;

.field protected needsPoll:Z

.field protected pendingOperations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    const-string v0, "/sys/class/htc_accessory/mute/flag"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mMutePath:Ljava/lang/String;

    .line 54
    const-string v0, "/sys/class/htc_accessory/phonein/flag"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneInPath:Ljava/lang/String;

    .line 55
    const-string v0, "mute\n"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccMute:Ljava/lang/String;

    .line 56
    const-string v0, "unmute\n"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccUnmute:Ljava/lang/String;

    .line 57
    const-string v0, "phonein\n"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccPhoneIn:Ljava/lang/String;

    .line 58
    const-string v0, "phoneoff\n"

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccPhoneOff:Ljava/lang/String;

    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 0
    .parameter "dialString"

    .prologue
    .line 216
    return-void
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 148
    return-void
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 127
    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method

.method protected updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "toState"

    .prologue
    .line 212
    return-void
.end method
