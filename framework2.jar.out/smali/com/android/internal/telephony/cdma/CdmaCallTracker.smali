.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field final THREE_WAY_CALL_DELAY:Z

.field backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field hangupPendingMO:Z

.field private mHtcBetweenRingAndCallStateQueried:Z

.field private mHtcBetweenRingAndCallStateReturned:Z

.field private mHtcCdmaFgCallNoUpdateRequired:Z

.field private mHtcCdmaPreviousSendFlash:Z

.field private mHtcPendingAcceptInProgress:Z

.field private mHtcPendingMoInProgress:Z

.field private mHtcQueringChangedCallState:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field private mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

.field private mVoiceCallAbility:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "phone"

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 66
    new-array v0, v2, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 90
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 1867
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    .line 1874
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1916
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 114
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x35

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirNumInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p1, p0, v6, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3d

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControl(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    const-string v0, "CDMA"

    const-string v1, "registerForLineControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    return-void

    :cond_1
    move v0, v1

    .line 1867
    goto :goto_0
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1697
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    .line 1698
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1699
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, inEcm:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1703
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v1, :cond_0

    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1722
    .end local v0           #inEcm:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dc"
    .parameter "i"

    .prologue
    .line 1730
    const/4 v0, 0x0

    .line 1732
    .local v0, newRinging:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v2, v1, p2

    .line 1734
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    .line 1735
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1751
    :cond_0
    :goto_0
    return-object v0

    .line 1741
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaCallTracker], Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 1748
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v0, :cond_1

    .line 403
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    if-nez v0, :cond_0

    .line 404
    const-string v0, "CDMA"

    const-string v1, "Send dummy Flash "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 407
    :cond_0
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    const-string v0, "CDMA"

    const-string v1, "trigger 3 way delayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 417
    :goto_1
    return-object v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 3
    .parameter "dialString"

    .prologue
    const/4 v2, 0x1

    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1679
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 1690
    :cond_1
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 260
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 261
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 263
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1241
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1244
    packed-switch p1, :pswitch_data_0

    .line 1254
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1246
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1248
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1250
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1252
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1244
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 6
    .parameter "cw"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1277
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1282
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1285
    const/4 v0, 0x1

    .line 1286
    .local v0, bNewConnection:Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1287
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_1

    .line 1289
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 1291
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2, p1, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1292
    const/4 v0, 0x0

    .line 1295
    :cond_1
    if-eqz v0, :cond_2

    .line 1297
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v2, v3, p1, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1299
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1304
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v2, :cond_3

    .line 1305
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1306
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCallWaitingInfo mHtcCdmaPreviousSendFlash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_3
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1665
    packed-switch p1, :pswitch_data_0

    .line 1669
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :goto_0
    return-void

    .line 1666
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1667
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 1262
    return-void
.end method

.method private htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 1821
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    if-eqz v1, :cond_0

    .line 1823
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    .line 1824
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    .line 1825
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1826
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private htcFlashAndSetGeneric(Z)V
    .locals 5
    .parameter "isRequestConference"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1833
    const/4 v1, 0x1

    .line 1835
    .local v1, simplyFlash:Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1836
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1837
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1838
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1839
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1840
    const/4 v1, 0x0

    .line 1849
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1850
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1855
    :goto_1
    return-void

    .line 1843
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto :goto_0

    .line 1853
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_1
.end method

.method private htcHandleRedirectNumber([Ljava/lang/String;)V
    .locals 7
    .parameter "mIndication"

    .prologue
    const/4 v6, 0x0

    .line 1781
    if-nez p1, :cond_0

    .line 1782
    const-string v4, "RedirNum zero length"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-void

    .line 1786
    :cond_0
    array-length v4, p1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    const/4 v3, 0x0

    .line 1787
    .local v3, mRedirectName:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RedirNum ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1791
    const/4 v1, 0x0

    .line 1792
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1794
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    .line 1807
    aget-object v4, p1, v6

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    .line 1808
    iput-object v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    .line 1809
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1786
    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #mRedirectName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    aget-object v3, p1, v4

    goto :goto_1

    .line 1795
    .restart local v1       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v3       #mRedirectName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1796
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get redirNum from ring:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1799
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1801
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1802
    :catch_1
    move-exception v2

    .line 1803
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get redirNum from fg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1812
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "Pending redirNum for new call"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1813
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    .line 1814
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    aget-object v5, p1, v6

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    .line 1815
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iput-object v3, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 603
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1268
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 620
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1878
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1879
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 1889
    .local v1, otaPrivision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v4, :cond_0

    .line 1893
    aget v2, v1, v3

    sparse-switch v2, :sswitch_data_0

    .line 1904
    .end local v1           #otaPrivision:[I
    :cond_0
    :goto_1
    return-void

    .line 1878
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v2, v3

    goto :goto_0

    .line 1896
    .restart local v0       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v1       #otaPrivision:[I
    :sswitch_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isForOtaProvision:Z

    goto :goto_1

    .line 1893
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private operationComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 637
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_3

    .line 642
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x36

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 652
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gtz v0, :cond_1

    .line 653
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    .line 654
    const-string v0, "CDMA"

    const-string v1, "Reset pending accept flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_1
    return-void

    .line 642
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 648
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput v2, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    goto :goto_1
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 665
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 682
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    .line 687
    :cond_1
    return-void

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 669
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 671
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 677
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 424
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "phone"

    const-string v2, "acceptCall: progressing..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 437
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto :goto_0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 443
    .local v0, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 462
    .end local v0           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method answerAndEndActive(Ljava/lang/String;)V
    .locals 2
    .parameter "dialSring"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 3
    .parameter "dialString"

    .prologue
    .line 1941
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1943
    return-void
.end method

.method blockCallForKddiOtasp(Z)Z
    .locals 2
    .parameter "isEmergencyCall"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 580
    if-nez p1, :cond_0

    .line 581
    const-string v0, "CDMA"

    const-string v1, "canDial: false - need kddi otasp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 540
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 541
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v9, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v4

    .line 552
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_1

    .line 553
    const-string v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/16 v3, 0x8

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eq v2, v9, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x4

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-nez v8, :cond_9

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 570
    :cond_1
    return v1

    .end local v1           #ret:Z
    :cond_2
    move v1, v5

    .line 544
    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_3
    move v3, v5

    .line 553
    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    move v4, v5

    goto :goto_7
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 592
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 527
    return-void
.end method

.method conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGeneric(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 514
    :cond_0
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_0
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, inEcm:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 287
    .local v2, isPhoneInEcmMode:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 290
    .local v1, isEmergencyCall:Z
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->blockCallForKddiOtasp(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial since kddi otasp is needed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 311
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 380
    :goto_0
    return-object v4

    .line 318
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, waitingForPendingMoResponse:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_4

    .line 325
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 327
    const-string v4, "CDMA"

    const-string v5, "avoid dialing twice."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v3, 0x1

    .line 329
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 335
    :cond_4
    :goto_1
    if-nez v3, :cond_6

    .line 337
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v4, v5, p1, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 338
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 340
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 343
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 377
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 378
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 380
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    .line 332
    :cond_7
    const-string v4, "CDMA"

    const-string v5, "previous dialing not yet responsed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    :cond_8
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 353
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 359
    if-eqz v2, :cond_9

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 364
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v6, 0x41

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, p2, v6}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    .line 367
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    .line 370
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    goto :goto_2
.end method

.method public dispose()V
    .locals 8

    .prologue
    .line 136
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 137
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 138
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 139
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 142
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirNumInfo(Landroid/os/Handler;)V

    .line 143
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 145
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForForLineControl(Landroid/os/Handler;)V

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 152
    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    .line 155
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 158
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    const/4 v2, 0x0

    .line 176
    .local v2, eccCallSwitchPhone:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v6, :cond_4

    .line 177
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 178
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    const/4 v2, 0x1

    .line 191
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 202
    :goto_3
    const-string v6, "CDMA"

    const-string v7, "Remove all registrants "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 204
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 205
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 206
    return-void

    .line 182
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 186
    :catch_1
    move-exception v3

    .line 187
    .restart local v3       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 196
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    goto :goto_3
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1918
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 1919
    .local v2, result:Z
    if-eqz p1, :cond_1

    .line 1920
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-ne v3, v4, :cond_0

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1922
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1925
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_0
    const-string v3, "MODE_IN_CALL_CDMA=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 1933
    :cond_1
    return v2

    .line 1926
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 1927
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to CDMA audio path exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 519
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1223
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1224
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1225
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1230
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .line 1223
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    return-object v0
.end method

.method getMute()Z
    .locals 4

    .prologue
    .line 1096
    const-string v2, "ro.board.platform"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, platform:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "8k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm7x30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1099
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1101
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    .line 1104
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 1315
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-boolean v17, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v17, :cond_1

    .line 1316
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " CdmaCalltracker drop event "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 1653
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDMA doesn\'t suport this event :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1325
    :sswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1328
    :sswitch_1
    const-string v17, "CDMA"

    const-string v18, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1331
    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1334
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 1335
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1337
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    .line 1338
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    .line 1340
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    const-string v18, "2GVoiceCallEnded"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1346
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    goto/16 :goto_0

    .line 1354
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1363
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1364
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1365
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1366
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1367
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_SWITCH_RESULT mHtcCdmaPreviousSendFlash "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1369
    :cond_3
    const-string v17, "CDMA"

    const-string v18, "Flash exception "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/16 v17, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->removeMessages(I)V

    .line 1371
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1374
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 1384
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1386
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1388
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1391
    const/16 v3, 0x10

    .line 1392
    .local v3, causeCode:I
    const-string v17, "CDMA"

    const-string v18, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_1
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1399
    .local v16, s:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1403
    .local v6, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    .line 1399
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1395
    .end local v3           #causeCode:I
    .end local v6           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v13           #i:I
    .end local v16           #s:I
    :cond_4
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v3, v17, v18

    .restart local v3       #causeCode:I
    goto :goto_1

    .line 1406
    .restart local v13       #i:I
    .restart local v16       #s:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1415
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #causeCode:I
    .end local v13           #i:I
    .end local v16           #s:I
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1415
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 1421
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1425
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1430
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    move/from16 v19, v0

    const/16 v20, 0x41

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1437
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1444
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1441
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto :goto_4

    .line 1448
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1449
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1451
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1464
    const-string v17, "Update earliest connection status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1466
    .local v11, earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v11, :cond_8

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1468
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1469
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1474
    .end local v11           #earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_8
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1475
    const-string v17, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1480
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1481
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    .line 1488
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 1491
    new-instance v10, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v10}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1493
    .local v10, dc:Lcom/android/internal/telephony/DriverCall;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1494
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1495
    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1496
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1497
    const/16 v17, 0x81

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1499
    sget v17, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1500
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    .line 1505
    .local v7, connIdx:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v7, v0, :cond_b

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1507
    .local v12, earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1508
    .local v14, lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_9
    :goto_5
    if-lez v7, :cond_a

    .line 1509
    add-int/lit8 v7, v7, -0x1

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1511
    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eq v4, v12, :cond_9

    if-eq v4, v14, :cond_9

    .line 1512
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    goto :goto_5

    .line 1515
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1517
    .end local v12           #earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v14           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 1524
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1528
    :goto_6
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_THREE_WAY_DIAL_L2_RESULT_CDMAreviousSendFlash "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1532
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto/16 :goto_0

    .line 1526
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto :goto_6

    .line 1536
    .end local v7           #connIdx:I
    .end local v10           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1539
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 1550
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1551
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1552
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcHandleRedirectNumber([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1558
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const-string v17, "CDMA"

    const-string v18, " Accept Cdma call complete "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1561
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto/16 :goto_0

    .line 1565
    :sswitch_d
    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_FWIM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1569
    .restart local v14       #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v14, :cond_0

    .line 1571
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLineControlInfo()V

    goto/16 :goto_0

    .line 1579
    .end local v14           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :sswitch_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1580
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 1581
    .local v15, modifiedDialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz v15, :cond_0

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1584
    const-string v17, "CDMA"

    const-string v18, " send three way call with address"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1590
    .end local v15           #modifiedDialString:Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    goto/16 :goto_0

    .line 1595
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1596
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 1597
    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_END_AND_SWITCH success"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 1600
    .local v8, count:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_7
    if-ge v13, v8, :cond_f

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1602
    .local v5, con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ANSWER_AND_END_ACTIVE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1600
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1604
    .end local v5           #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1608
    .local v9, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1609
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1613
    .restart local v5       #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    .line 1614
    if-eqz v5, :cond_10

    .line 1615
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 1619
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1622
    .end local v5           #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #count:I
    .end local v9           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v13           #i:I
    :cond_11
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_HTC_END_AND_SWITCH exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1628
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1634
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1635
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1636
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "DIAL exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1641
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1643
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1647
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1322
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_a
        0x35 -> :sswitch_b
        0x36 -> :sswitch_0
        0x37 -> :sswitch_c
        0x38 -> :sswitch_e
        0x3a -> :sswitch_f
        0x3d -> :sswitch_d
        0x3f -> :sswitch_10
        0x40 -> :sswitch_11
        0x41 -> :sswitch_12
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 24
    .parameter "ar"

    .prologue
    .line 695
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 696
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    .line 708
    .local v18, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v17, 0x0

    .line 709
    .local v17, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 711
    .local v12, hasNonHangupStateChanged:Z
    const/16 v16, 0x0

    .line 712
    .local v16, needsPollDelay:Z
    const/16 v19, 0x0

    .line 715
    .local v19, unknownConnectionAppeared:Z
    const/4 v14, 0x0

    .line 717
    .local v14, mHtcCallCount:I
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v7, 0x0

    .local v7, curDC:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    .line 718
    .local v9, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_16

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    aget-object v5, v20, v13

    .line 720
    .local v5, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/4 v8, 0x0

    .line 723
    .local v8, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    .line 724
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    .line 726
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 727
    add-int/lit8 v7, v7, 0x1

    .line 733
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 734
    const/4 v8, 0x0

    .line 736
    :cond_1
    if-eqz v8, :cond_2

    .line 737
    add-int/lit8 v14, v14, 0x1

    .line 744
    :cond_2
    if-nez v5, :cond_c

    if-eqz v8, :cond_c

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 748
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    aput-object v21, v20, v13

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 757
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 761
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v20, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 768
    :cond_3
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v7           #curDC:I
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v9           #dcSize:I
    .end local v12           #hasNonHangupStateChanged:Z
    .end local v13           #i:I
    .end local v14           #mHtcCallCount:I
    .end local v16           #needsPollDelay:Z
    .end local v17           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v18           #polledCalls:Ljava/util/List;
    .end local v19           #unknownConnectionAppeared:Z
    :cond_4
    :goto_3
    return-void

    .line 697
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 700
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .restart local v18       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 704
    .end local v18           #polledCalls:Ljava/util/List;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 729
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v7       #curDC:I
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v9       #dcSize:I
    .restart local v12       #hasNonHangupStateChanged:Z
    .restart local v13       #i:I
    .restart local v14       #mHtcCallCount:I
    .restart local v16       #needsPollDelay:Z
    .restart local v17       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v18       #polledCalls:Ljava/util/List;
    .restart local v19       #unknownConnectionAppeared:Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 771
    :catch_0
    move-exception v11

    .line 772
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v20, "CDMA"

    const-string v21, "unexpected error on hangup"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 781
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pendingMo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", dc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    .line 785
    if-nez v17, :cond_9

    .line 786
    const/16 v19, 0x1

    .line 788
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 790
    :cond_a
    const/4 v12, 0x1

    .line 718
    :cond_b
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 791
    :cond_c
    if-eqz v5, :cond_10

    if-nez v8, :cond_10

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 797
    .local v6, count:I
    const/4 v15, 0x0

    .local v15, n:I
    :goto_5
    if-ge v15, v6, :cond_d

    .line 798
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "adding fgCall cn "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to droppedDuringPoll"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 800
    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 802
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 805
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v6, :cond_e

    .line 806
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "adding rgCall cn "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to droppedDuringPoll"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 808
    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 810
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 814
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v20, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 818
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v21, v20, v13

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 825
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 826
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  RIL has no more active call anymore mHtcCdmaPreviousSendFlash "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 829
    .end local v6           #count:I
    .end local v15           #n:I
    :cond_10
    if-eqz v5, :cond_b

    if-eqz v8, :cond_b

    .line 832
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 836
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move/from16 v20, v0

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    .line 837
    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    .line 842
    if-nez v17, :cond_11

    .line 843
    const/16 v19, 0x1

    .line 845
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto/16 :goto_4

    .line 851
    :cond_12
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in RIL, Phantom call appeared "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 855
    :cond_13
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    .line 856
    .local v3, changed:Z
    if-nez v12, :cond_14

    if-eqz v3, :cond_15

    :cond_14
    const/4 v12, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_15
    const/4 v12, 0x0

    goto :goto_7

    .line 881
    .end local v3           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_16
    if-nez v14, :cond_18

    .line 882
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 885
    .restart local v6       #count:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_8
    if-ge v15, v6, :cond_17

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 887
    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 889
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_17
    const-string v20, "CDMA"

    const-string v21, "All call ends"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 892
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 893
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " reset the  mHtcCdmaPreviousSendFlash "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v6           #count:I
    .end local v15           #n:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    .line 904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d

    .line 906
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 911
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 912
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 913
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 923
    :cond_19
    :goto_9
    if-eqz v17, :cond_1b

    .line 925
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 932
    :try_start_1
    const-string v20, "CDMA"

    const-string v21, "critical MT -> MO:foregroundCall.hangup()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 941
    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 947
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v13, v20, -0x1

    :goto_b
    if-ltz v13, :cond_22

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 951
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCollided()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 952
    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;Z)V

    .line 947
    :cond_1c
    :goto_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 918
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1d
    const-string v20, "CDMA"

    const-string v21, "Pending MO waiting"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 935
    :catch_1
    move-exception v10

    .line 937
    .local v10, e:Ljava/lang/Exception;
    const-string v20, "CDMA"

    const-string v21, "critical MT -> MO:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 956
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1e
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v20

    if-eqz v20, :cond_20

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_20

    .line 959
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 960
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 966
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "missed/rejected call, conn.cause="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 967
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setting cause to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 970
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_c

    .line 962
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_d

    .line 971
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_20
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 974
    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_c

    .line 975
    :cond_21
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 977
    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_c

    .line 982
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_23

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 987
    :cond_23
    if-eqz v16, :cond_24

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    .line 996
    :cond_24
    if-nez v17, :cond_25

    if-eqz v12, :cond_26

    .line 997
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 1000
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1002
    if-eqz v19, :cond_27

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection()V

    .line 1006
    :cond_27
    if-nez v12, :cond_28

    if-eqz v17, :cond_4

    .line 1007
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1112
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_2

    .line 1117
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 1120
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 1150
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1148
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_4

    .line 1126
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_1

    .line 1132
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_1

    .line 1134
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1137
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_1

    .line 1141
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_1

    .line 1144
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 1017
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_1

    .line 1025
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1026
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1055
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1056
    :goto_1
    return-void

    .line 1027
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 1040
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 1046
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1050
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1183
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1184
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1185
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1186
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1188
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1189
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1167
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1168
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1169
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1170
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1172
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1174
    return-void

    .line 1167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1178
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1160
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1162
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1154
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1156
    return-void
.end method

.method public htcIsRingingButHaventReported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1859
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    if-eqz v1, :cond_0

    .line 1860
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    .line 1863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method htcRequestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1194
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 1200
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1201
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1202
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1203
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1206
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1207
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1208
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1210
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1211
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 1212
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1213
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1211
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1215
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1216
    return-void
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1761
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1765
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    .line 240
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 244
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 246
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 229
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 231
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 221
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 223
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 475
    return-void

    .line 473
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 1061
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1065
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1070
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 5
    .parameter "mute"

    .prologue
    const/4 v4, 0x0

    .line 1079
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 1081
    const-string v2, "ro.board.platform"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, platform:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "8k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm7x30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1086
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1091
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 481
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGeneric(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 499
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 250
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 235
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 226
    return-void
.end method
