.class public Lcom/android/internal/telephony/MMDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "MMDataConnectionTracker.java"


# static fields
.field public static final DATA_CONNECTION_POOL_SIZE:I = 0x8

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final LOG_TAG:Ljava/lang/String; = "DUMMY_MMDCT"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "phone"
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 19
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 20
    return-void
.end method

.method private printNotImplmentedMsg()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "DUMMY_MMDCT"

    const-string v1, "FIX!! DUMMY MMDCT should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method


# virtual methods
.method public _getActiveApnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public _isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected checkIfPreferredApnCanHandle(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 121
    return-void
.end method

.method public disconnectAllConnections(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 77
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public get3GPPAPNParams(ILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "response"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 38
    return-void
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "com.android.internal.telephony.gprs-reconnect"

    return-object v0
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 73
    return-void
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEHRPDAPNParams(ILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "response"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 42
    return-void
.end method

.method protected getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLTEAPNParams(ILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "response"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 34
    return-void
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 125
    return-void
.end method

.method protected ifAnyApnSettingSupportDUN()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method protected ifPreferredApnSupportDUN()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected isApnTypeSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataAllowed()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 95
    return-void
.end method

.method logd(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 132
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 130
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 134
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 133
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 131
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 124
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 117
    return-void
.end method

.method public onCleanUpConnection(ZILjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 118
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 91
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 86
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 119
    return-void
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 87
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 88
    return-void
.end method

.method protected onRoamingOff()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected onRoamingOn()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public resetRadioForDisconnectingPdn()Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected restartRadio()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public set3GPPAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "class_id"
    .parameter "apn_name"
    .parameter "pdn_type"
    .parameter "pdn_state"
    .parameter "inactivity_timer"
    .parameter "response"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 52
    return-void
.end method

.method public setActiveDataTrackerID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 123
    return-void
.end method

.method public declared-synchronized setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .locals 1
    .parameter "desiredPowerState"
    .parameter "onCompleteMsg"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEHRPDAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "class_id"
    .parameter "apn_name"
    .parameter "pdn_type"
    .parameter "pdn_state"
    .parameter "inactivity_timer"
    .parameter "response"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 57
    return-void
.end method

.method public setLTEAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0
    .parameter "apn_index"
    .parameter "class_id"
    .parameter "apn_name"
    .parameter "pdn_type"
    .parameter "pdn_state"
    .parameter "inactivity_timer"
    .parameter "response"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    .line 47
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 110
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
