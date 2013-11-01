.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallExt:I = 0x6d

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callExt:I = 0x6b

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_checkTestIcc:I = 0x4d

.field static final TRANSACTION_confirmFirstDataRoaming:I = 0x2f

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialExt:I = 0x6a

.field static final TRANSACTION_dialWithoutDelay:I = 0x33

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableApnTypeExt:I = 0x7d

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_disableLocationUpdatesExt:I = 0x7b

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableApnTypeExt:I = 0x7c

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableLocationUpdatesExt:I = 0x7a

.field static final TRANSACTION_enableMpdp:I = 0x5f

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallExt:I = 0x6c

.field static final TRANSACTION_getActiveCallConnectTime:I = 0x3d

.field static final TRANSACTION_getActiveCallNumber:I = 0x3b

.field static final TRANSACTION_getActivePDPList:I = 0x60

.field static final TRANSACTION_getActivePhoneType:I = 0x20

.field static final TRANSACTION_getBackgroundCallNumber:I = 0x3c

.field static final TRANSACTION_getCFUNumber:I = 0x41

.field static final TRANSACTION_getCFUNumberFromOperator:I = 0x44

.field static final TRANSACTION_getCallState:I = 0x1d

.field static final TRANSACTION_getCallStateExt:I = 0x83

.field static final TRANSACTION_getCardCheckedState:I = 0x93

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x21

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x22

.field static final TRANSACTION_getCdmaEriText:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1b

.field static final TRANSACTION_getCellLocationExt:I = 0x81

.field static final TRANSACTION_getCurrentCallState:I = 0x4f

.field static final TRANSACTION_getDataActivity:I = 0x1e

.field static final TRANSACTION_getDataActivityExt:I = 0x84

.field static final TRANSACTION_getDataState:I = 0x1f

.field static final TRANSACTION_getDataStateExt:I = 0x85

.field static final TRANSACTION_getDetailIccStatus:I = 0x2d

.field static final TRANSACTION_getDetailIccStatusExt:I = 0x2e

.field static final TRANSACTION_getExtVoiceCallPhoneType:I = 0x8e

.field static final TRANSACTION_getGprsState:I = 0x30

.field static final TRANSACTION_getGsmNetworkType:I = 0x4c

.field static final TRANSACTION_getHtcNetworkType:I = 0x55

.field static final TRANSACTION_getHtcServiceStateExt:I = 0x91

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x89

.field static final TRANSACTION_getIccPin1RetryCountExt:I = 0x8b

.field static final TRANSACTION_getIccPin2RetryCount:I = 0x8a

.field static final TRANSACTION_getIccPin2RetryCountExt:I = 0x8c

.field static final TRANSACTION_getIncallRecordingFileName:I = 0x45

.field static final TRANSACTION_getLastError:I = 0x29

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x28

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1c

.field static final TRANSACTION_getNeighboringCellInfoExt:I = 0x82

.field static final TRANSACTION_getNetworkType:I = 0x26

.field static final TRANSACTION_getNetworkTypeExt:I = 0x87

.field static final TRANSACTION_getPdnSettings:I = 0x50

.field static final TRANSACTION_getPowerKeyFlag:I = 0x40

.field static final TRANSACTION_getPreferredNetworkType:I = 0x53

.field static final TRANSACTION_getServiceState:I = 0x31

.field static final TRANSACTION_getSubsidyLockTypes:I = 0x2b

.field static final TRANSACTION_getUSSDVerificationStatus:I = 0x5a

.field static final TRANSACTION_getUSSDVerificationStrings:I = 0x5c

.field static final TRANSACTION_getVTLoopBackMode:I = 0x4b

.field static final TRANSACTION_getVTSimulatedMode:I = 0x49

.field static final TRANSACTION_getVoiceMessageCount:I = 0x25

.field static final TRANSACTION_getVoiceMessageCountExt:I = 0x86

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_handlePinMmiExt:I = 0x76

.field static final TRANSACTION_hasIccCard:I = 0x27

.field static final TRANSACTION_hasIccCardExt:I = 0x88

.field static final TRANSACTION_hasVTCall:I = 0x4e

.field static final TRANSACTION_htcCdmaEndCall:I = 0x38

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x36

.field static final TRANSACTION_htcModemLinkOn:I = 0x37

.field static final TRANSACTION_isCallWaiting:I = 0x42

.field static final TRANSACTION_isConcurrentVoiceAndData:I = 0x7e

.field static final TRANSACTION_isConcurrentVoiceAndDataExt:I = 0x7f

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1a

.field static final TRANSACTION_isDataConnectivityPossibleExt:I = 0x80

.field static final TRANSACTION_isFdnEnabled:I = 0x39

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleExt:I = 0x71

.field static final TRANSACTION_isInService:I = 0x90

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookExt:I = 0x6f

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRadioOnExt:I = 0x72

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingExt:I = 0x70

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isUimPinEnabled:I = 0x73

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x24

.field static final TRANSACTION_performHtcPhoneAction:I = 0x5e

.field static final TRANSACTION_performHtcPhoneActionExt:I = 0x92

.field static final TRANSACTION_requestCW_UW_DREG:I = 0x68

.field static final TRANSACTION_requestCW_UW_REG:I = 0x67

.field static final TRANSACTION_requestEhrpdDomainNameChangeState:I = 0x57

.field static final TRANSACTION_requestGetEhrpdDeviceCapability:I = 0x59

.field static final TRANSACTION_requestGetEhrpdDisableCapability:I = 0x58

.field static final TRANSACTION_requestISIMRead:I = 0x63

.field static final TRANSACTION_requestQueryISIMSupported:I = 0x62

.field static final TRANSACTION_requestResetWSIMState:I = 0x65

.field static final TRANSACTION_requestSetEhrpdDisableCapability:I = 0x56

.field static final TRANSACTION_requestSetISIMAUTH:I = 0x64

.field static final TRANSACTION_requestSetLBSNTFY:I = 0x66

.field static final TRANSACTION_resetPdnForSettingsChange:I = 0x52

.field static final TRANSACTION_sendAT_BRIC:I = 0x32

.field static final TRANSACTION_sendAT_PushMail:I = 0x35

.field static final TRANSACTION_sendAllowedCSIMCommand:I = 0x3a

.field static final TRANSACTION_sendCmmbAuth3GReq:I = 0x46

.field static final TRANSACTION_sendCmmbAuthGSMReq:I = 0x47

.field static final TRANSACTION_sendLanguageChange:I = 0x61

.field static final TRANSACTION_setActivePhoneType:I = 0x8f

.field static final TRANSACTION_setCFUNumber:I = 0x43

.field static final TRANSACTION_setDataEnabled:I = 0x69

.field static final TRANSACTION_setExtVoiceCallPhoneType:I = 0x8d

.field static final TRANSACTION_setPdnSettings:I = 0x51

.field static final TRANSACTION_setPowerKeyFlag:I = 0x3f

.field static final TRANSACTION_setPreferredNetworkType:I = 0x54

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioExt:I = 0x78

.field static final TRANSACTION_setTimeZone:I = 0x34

.field static final TRANSACTION_setUSSDVerificationStatus:I = 0x5b

.field static final TRANSACTION_setUSSDVerificationStrings:I = 0x5d

.field static final TRANSACTION_setVTLoopBackMode:I = 0x4a

.field static final TRANSACTION_setVTSimulatedMode:I = 0x48

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerExt:I = 0x6e

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinExt:I = 0x74

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukExt:I = 0x75

.field static final TRANSACTION_supplySubsidyLockPin:I = 0x2c

.field static final TRANSACTION_switchHoldAndActiveCall:I = 0x3e

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_toggleRadioOnOffExt:I = 0x77

.field static final TRANSACTION_unBlockPin:I = 0x2a

.field static final TRANSACTION_updateServiceLocation:I = 0x13

.field static final TRANSACTION_updateServiceLocationExt:I = 0x79

.field static final TRANSACTION_getScAddress:I = 0x94

.field static final TRANSACTION_setScAddress:I = 0x95



# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 49
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v6

    .line 74
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v6, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v6           #_result:Z
    :sswitch_4
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v1, v9

    .line 83
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v6

    .line 84
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v6, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2
    move v1, v0

    .line 82
    goto :goto_1

    .line 90
    :sswitch_5
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v6

    .line 92
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_3

    move v0, v9

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v6           #_result:Z
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 112
    :sswitch_8
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v6

    .line 114
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v6, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v6           #_result:Z
    :sswitch_9
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v6

    .line 122
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v6, :cond_5

    move v0, v9

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v6           #_result:Z
    :sswitch_a
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v6

    .line 130
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v6, :cond_6

    move v0, v9

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v6           #_result:Z
    :sswitch_b
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v6

    .line 138
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v6, :cond_7

    move v0, v9

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v6           #_result:Z
    :sswitch_c
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v6

    .line 146
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v6, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    :sswitch_e
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v6

    .line 163
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v6, :cond_9

    move v0, v9

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_f
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 175
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v6, :cond_a

    move v0, v9

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_10
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v6

    .line 185
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v6, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    :sswitch_12
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    move v1, v9

    .line 201
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v6

    .line 202
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v6, :cond_c

    move v0, v9

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_d
    move v1, v0

    .line 200
    goto :goto_2

    .line 208
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 215
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 229
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v6

    .line 233
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v6

    .line 243
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_18
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v6

    .line 251
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v6, :cond_e

    move v0, v9

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v6           #_result:Z
    :sswitch_19
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v6

    .line 259
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v6, :cond_f

    move v0, v9

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v6           #_result:Z
    :sswitch_1a
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v6

    .line 267
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v6, :cond_10

    move v0, v9

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v6           #_result:Z
    :sswitch_1b
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v6

    .line 275
    .local v6, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v6, :cond_11

    .line 277
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 281
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v6           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v8

    .line 289
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 295
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v6

    .line 297
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v6           #_result:I
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v6

    .line 305
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v6           #_result:I
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v6

    .line 313
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v6           #_result:I
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v6

    .line 321
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v6           #_result:I
    :sswitch_21
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v6

    .line 329
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v6           #_result:I
    :sswitch_22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v6

    .line 337
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 343
    .end local v6           #_result:I
    :sswitch_23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v6

    .line 353
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v6, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v6           #_result:Z
    :sswitch_25
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v6

    .line 361
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v6           #_result:I
    :sswitch_26
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v6

    .line 369
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v6           #_result:I
    :sswitch_27
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v6

    .line 377
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v6, :cond_13

    move v0, v9

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 383
    .end local v6           #_result:Z
    :sswitch_28
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v6

    .line 385
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v6           #_result:I
    :sswitch_29
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v6

    .line 393
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v6           #_result:I
    :sswitch_2a
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 405
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v6, :cond_14

    move v0, v9

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubsidyLockTypes()I

    move-result v6

    .line 413
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v6           #_result:I
    :sswitch_2c
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 425
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v6, :cond_15

    move v0, v9

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDetailIccStatus()[I

    move-result-object v6

    .line 433
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 439
    .end local v6           #_result:[I
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDetailIccStatusExt(I)[I

    move-result-object v6

    .line 443
    .restart local v6       #_result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 449
    .end local v1           #_arg0:I
    .end local v6           #_result:[I
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->confirmFirstDataRoaming()V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 456
    :sswitch_30
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getGprsState()I

    move-result v6

    .line 458
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 464
    .end local v6           #_result:I
    :sswitch_31
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v6

    .line 466
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v6           #_result:I
    :sswitch_32
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->sendAT_BRIC()V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    :sswitch_33
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 482
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 487
    .local v1, _arg0:Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v6

    .line 488
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v6, :cond_16

    move v0, v9

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 485
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v6           #_result:Z
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_3

    .line 494
    .end local v1           #_arg0:Landroid/content/Intent;
    :sswitch_34
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_18

    move v1, v9

    .line 498
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setTimeZone(ZI)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_18
    move v1, v0

    .line 496
    goto :goto_4

    .line 505
    :sswitch_35
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendAT_PushMail(II)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 516
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_36
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 523
    :sswitch_37
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->htcModemLinkOn()Z

    move-result v6

    .line 525
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v6, :cond_19

    move v0, v9

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 531
    .end local v6           #_result:Z
    :sswitch_38
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->htcCdmaEndCall()Z

    move-result v6

    .line 533
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v6, :cond_1a

    move v0, v9

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 539
    .end local v6           #_result:Z
    :sswitch_39
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFdnEnabled()Z

    move-result v6

    .line 541
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v6, :cond_1b

    move v0, v9

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 547
    .end local v6           #_result:Z
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v6

    .line 567
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveCallConnectTime()J

    move-result-wide v6

    .line 575
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 581
    .end local v6           #_result:J
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchHoldAndActiveCall()V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 588
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setPowerKeyFlag()V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 595
    :sswitch_40
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPowerKeyFlag()Z

    move-result v6

    .line 597
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v6, :cond_1c

    move v0, v9

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 603
    .end local v6           #_result:Z
    :sswitch_41
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCFUNumber()Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_42
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isCallWaiting()Z

    move-result v6

    .line 613
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v6, :cond_1d

    move v0, v9

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 619
    .end local v6           #_result:Z
    :sswitch_43
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    move v1, v9

    .line 623
    .local v1, _arg0:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v6

    .line 625
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v6, :cond_1e

    move v0, v9

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_1f
    move v1, v0

    .line 621
    goto :goto_5

    .line 631
    :sswitch_44
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v6

    .line 641
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 651
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 652
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v6

    .line 653
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 659
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_result:[B
    :sswitch_47
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 662
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendCmmbAuthGSMReq([B)[B

    move-result-object v6

    .line 663
    .restart local v6       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 669
    .end local v1           #_arg0:[B
    .end local v6           #_result:[B
    :sswitch_48
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    move v1, v9

    .line 672
    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVTSimulatedMode(Z)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_20
    move v1, v0

    .line 671
    goto :goto_6

    .line 678
    :sswitch_49
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVTSimulatedMode()Z

    move-result v6

    .line 680
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v6, :cond_21

    move v0, v9

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 686
    .end local v6           #_result:Z
    :sswitch_4a
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    move v1, v9

    .line 689
    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVTLoopBackMode(Z)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_22
    move v1, v0

    .line 688
    goto :goto_7

    .line 695
    :sswitch_4b
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVTLoopBackMode()Z

    move-result v6

    .line 697
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    if-eqz v6, :cond_23

    move v0, v9

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 703
    .end local v6           #_result:Z
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v6

    .line 705
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_4d
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->checkTestIcc()Z

    move-result v6

    .line 713
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    if-eqz v6, :cond_24

    move v0, v9

    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 719
    .end local v6           #_result:Z
    :sswitch_4e
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasVTCall()Z

    move-result v6

    .line 721
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    if-eqz v6, :cond_25

    move v0, v9

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 727
    .end local v6           #_result:Z
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentCallState()I

    move-result v6

    .line 729
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 735
    .end local v6           #_result:I
    :sswitch_50
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 738
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v6

    .line 739
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_51
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setPdnSettings(ILjava/lang/String;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 756
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_52
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetPdnForSettingsChange()V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 763
    :sswitch_53
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType()I

    move-result v6

    .line 765
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 771
    .end local v6           #_result:I
    :sswitch_54
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 774
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 780
    .end local v1           #_arg0:I
    :sswitch_55
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v6

    .line 784
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 790
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_56
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSetEhrpdDisableCapability(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 799
    .end local v1           #_arg0:I
    :sswitch_57
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestEhrpdDomainNameChangeState()I

    move-result v6

    .line 801
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 807
    .end local v6           #_result:I
    :sswitch_58
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestGetEhrpdDisableCapability()I

    move-result v6

    .line 809
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 815
    .end local v6           #_result:I
    :sswitch_59
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestGetEhrpdDeviceCapability()I

    move-result v6

    .line 817
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 823
    .end local v6           #_result:I
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 840
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 854
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 861
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->performHtcPhoneAction(I)V

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 870
    .end local v1           #_arg0:I
    :sswitch_5f
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_26

    move v1, v9

    .line 873
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableMpdp(Z)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_26
    move v1, v0

    .line 872
    goto :goto_8

    .line 879
    :sswitch_60
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePDPList()[Ljava/lang/String;

    move-result-object v6

    .line 881
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_61
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 890
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendLanguageChange(I)V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 896
    .end local v1           #_arg0:I
    :sswitch_62
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestQueryISIMSupported()Z

    move-result v6

    .line 898
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v6, :cond_27

    move v0, v9

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 904
    .end local v6           #_result:Z
    :sswitch_63
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 910
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 912
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 914
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 915
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_64
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 926
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 932
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_65
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestResetWSIMState()Z

    move-result v6

    .line 934
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    if-eqz v6, :cond_28

    move v0, v9

    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 940
    .end local v6           #_result:Z
    :sswitch_66
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 943
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSetLBSNTFY(I)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 949
    .end local v1           #_arg0:I
    :sswitch_67
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCW_UW_REG()V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 956
    :sswitch_68
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCW_UW_DREG()V

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 963
    :sswitch_69
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2a

    move v1, v9

    .line 966
    .local v1, _arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(Z)Z

    move-result v6

    .line 967
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v6, :cond_29

    move v0, v9

    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2a
    move v1, v0

    .line 965
    goto :goto_9

    .line 973
    :sswitch_6a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 978
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dialExt(Ljava/lang/String;I)V

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 984
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 988
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->callExt(Ljava/lang/String;I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 995
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_6c
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallExt(I)Z

    move-result v6

    .line 999
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    if-eqz v6, :cond_2b

    move v0, v9

    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1005
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_6d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1008
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallExt(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1014
    .end local v1           #_arg0:I
    :sswitch_6e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1017
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerExt(I)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1023
    .end local v1           #_arg0:I
    :sswitch_6f
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookExt(I)Z

    move-result v6

    .line 1027
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    if-eqz v6, :cond_2c

    move v0, v9

    :cond_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1033
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_70
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingExt(I)Z

    move-result v6

    .line 1037
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v6, :cond_2d

    move v0, v9

    :cond_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1043
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_71
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1046
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleExt(I)Z

    move-result v6

    .line 1047
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v6, :cond_2e

    move v0, v9

    :cond_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1053
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_72
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1056
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnExt(I)Z

    move-result v6

    .line 1057
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    if-eqz v6, :cond_2f

    move v0, v9

    :cond_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1063
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_73
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isUimPinEnabled()Z

    move-result v6

    .line 1065
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    if-eqz v6, :cond_30

    move v0, v9

    :cond_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1071
    .end local v6           #_result:Z
    :sswitch_74
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1076
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinExt(Ljava/lang/String;I)Z

    move-result v6

    .line 1077
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    if-eqz v6, :cond_31

    move v0, v9

    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1083
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_75
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1090
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 1091
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    if-eqz v6, :cond_32

    move v0, v9

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1097
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :sswitch_76
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1102
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiExt(Ljava/lang/String;I)Z

    move-result v6

    .line 1103
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    if-eqz v6, :cond_33

    move v0, v9

    :cond_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1109
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_77
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1112
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffExt(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1118
    .end local v1           #_arg0:I
    :sswitch_78
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_35

    move v1, v9

    .line 1122
    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1123
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioExt(ZI)Z

    move-result v6

    .line 1124
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    if-eqz v6, :cond_34

    move v0, v9

    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_35
    move v1, v0

    .line 1120
    goto :goto_a

    .line 1130
    :sswitch_79
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1133
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationExt(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1139
    .end local v1           #_arg0:I
    :sswitch_7a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesExt(I)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1148
    .end local v1           #_arg0:I
    :sswitch_7b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesExt(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1157
    .end local v1           #_arg0:I
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1162
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeExt(Ljava/lang/String;I)I

    move-result v6

    .line 1163
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1169
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_7d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1174
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeExt(Ljava/lang/String;I)I

    move-result v6

    .line 1175
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1181
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_7e
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndData()Z

    move-result v6

    .line 1183
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    if-eqz v6, :cond_36

    move v0, v9

    :cond_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1189
    .end local v6           #_result:Z
    :sswitch_7f
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1192
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataExt(I)Z

    move-result v6

    .line 1193
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    if-eqz v6, :cond_37

    move v0, v9

    :cond_37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1199
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_80
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1202
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossibleExt(I)Z

    move-result v6

    .line 1203
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    if-eqz v6, :cond_38

    move v0, v9

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1209
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_81
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1212
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v6

    .line 1213
    .local v6, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    if-eqz v6, :cond_39

    .line 1215
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1219
    :cond_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1225
    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/os/Bundle;
    :sswitch_82
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfoExt(I)Ljava/util/List;

    move-result-object v8

    .line 1229
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1235
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_83
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1238
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateExt(I)I

    move-result v6

    .line 1239
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1245
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_84
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1248
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityExt(I)I

    move-result v6

    .line 1249
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1255
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_85
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1258
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateExt(I)I

    move-result v6

    .line 1259
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1265
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_86
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1268
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountExt(I)I

    move-result v6

    .line 1269
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1275
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_87
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeExt(I)I

    move-result v6

    .line 1279
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1285
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_88
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1288
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardExt(I)Z

    move-result v6

    .line 1289
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    if-eqz v6, :cond_3a

    move v0, v9

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1295
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_89
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCount()I

    move-result v6

    .line 1297
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1303
    .end local v6           #_result:I
    :sswitch_8a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin2RetryCount()I

    move-result v6

    .line 1305
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1311
    .end local v6           #_result:I
    :sswitch_8b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1314
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCountExt(I)I

    move-result v6

    .line 1315
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1321
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin2RetryCountExt(I)I

    move-result v6

    .line 1325
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1331
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_8d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1334
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setExtVoiceCallPhoneType(I)V

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1340
    .end local v1           #_arg0:I
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getExtVoiceCallPhoneType()I

    move-result v6

    .line 1342
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1348
    .end local v6           #_result:I
    :sswitch_8f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1351
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setActivePhoneType(I)V

    .line 1352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1357
    .end local v1           #_arg0:I
    :sswitch_90
    const-string v10, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1360
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isInService(I)Z

    move-result v6

    .line 1361
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    if-eqz v6, :cond_3b

    move v0, v9

    :cond_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1367
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_91
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1370
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getHtcServiceStateExt(I)I

    move-result v6

    .line 1371
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1377
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_92
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1381
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1382
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->performHtcPhoneActionExt(II)V

    .line 1383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1388
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_93
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardCheckedState()I

    move-result v6

    .line 1390
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0
    
    :sswitch_94
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getScAddress()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v1          #_result:Ljava/lang/String;
    :sswitch_95
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setScAddress(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
	0x94 -> :sswitch_94
	0x95 -> :sswitch_95
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
