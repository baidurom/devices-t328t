.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final EMERGENCY_CATEGORY_PROPERTY:Ljava/lang/String; = "ro.ril.ecc_category"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field callType:Lcom/android/internal/telephony/Phone$CallType;

.field connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field hangupPendingMO:Z

.field mCCWTInfo:Z

.field mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

.field private mEmergencyCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceCallAbility:Z

.field pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 78
    new-array v0, v1, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 99
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 101
    sget-object v0, Lcom/android/internal/telephony/Phone$CallType;->NONE:Lcom/android/internal/telephony/Phone$CallType;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->callType:Lcom/android/internal/telephony/Phone$CallType;

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 122
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x33

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerCLINotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x34

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerCallWaitingInformation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3c

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->loadEmergencyCategory()V

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForECallUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 1031
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1036
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1037
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1043
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1044
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1047
    :cond_1
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1050
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 1051
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1054
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 250
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 251
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 253
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
    .locals 2

    .prologue
    .line 1008
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1009
    .local v0, cliValid:Lcom/android/internal/telephony/Connection$CliValid;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    iget v1, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->cliValid:I

    packed-switch v1, :pswitch_data_0

    .line 1021
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 1023
    :cond_0
    return-object v0

    .line 1012
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_WITHHELD:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1013
    goto :goto_0

    .line 1015
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1016
    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1283
    packed-switch p1, :pswitch_data_0

    .line 1293
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1285
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1287
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1289
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1291
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1283
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

.method private handleECallUSSD(Landroid/os/AsyncResult;)V
    .locals 17
    .parameter "ar"

    .prologue
    .line 1431
    const-string v14, "handleECallUSSD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1432
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1434
    .local v12, ussdResult:Ljava/lang/String;
    if-nez v12, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ussdResult = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 1440
    .local v13, ussdlenght:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEccUssdMap()Ljava/util/HashMap;

    move-result-object v3

    .line 1441
    .local v3, eccUSSDmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    div-int/lit8 v14, v13, 0x2

    new-array v5, v14, [B

    .line 1443
    .local v5, hexCode:[B
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1445
    const/4 v4, 0x0

    .line 1446
    .local v4, errorflag:Z
    const/4 v14, 0x3

    new-array v8, v14, [I

    .line 1447
    .local v8, key:[I
    const/4 v14, 0x3

    new-array v9, v14, [I

    .line 1448
    .local v9, key1:[I
    const/4 v14, 0x3

    new-array v10, v14, [I

    .line 1449
    .local v10, position:[I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1452
    .local v11, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    :try_start_0
    array-length v14, v5

    const/4 v15, 0x3

    if-lt v14, v15, :cond_0

    .line 1453
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v14, 0x3

    if-ge v6, v14, :cond_4

    .line 1454
    aget-byte v14, v5, v6

    aput v14, v8, v6

    .line 1455
    aget v14, v8, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1456
    aget v14, v8, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    aput v14, v10, v6

    .line 1458
    aget v7, v10, v6

    .line 1459
    .local v7, index:I
    array-length v14, v5

    if-gt v7, v14, :cond_3

    .line 1460
    add-int/lit8 v14, v7, -0x1

    aget-byte v14, v5, v14

    aput v14, v9, v6

    .line 1461
    aget v14, v9, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 1462
    aget v14, v9, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1453
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1465
    :cond_3
    const/4 v4, 0x1

    .line 1466
    const-string v14, "error parsing USSD - out of array"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1476
    .end local v7           #index:I
    :cond_4
    :goto_2
    if-nez v4, :cond_0

    .line 1477
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, UVR:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/android/internal/telephony/CommandsInterface;->requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1481
    .end local v1           #UVR:Ljava/lang/String;
    .end local v6           #i:I
    :catch_0
    move-exception v2

    .line 1482
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v14, "GSM"

    const-string v15, "error parsing USSD"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #i:I
    :cond_5
    const/4 v4, 0x1

    .line 1471
    :try_start_1
    const-string v14, "error parsing USSD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 970
    return-void
.end method

.method private handleUnsolicitedCCWTInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const/4 v1, 0x0

    .line 1491
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1493
    const-string v0, "[handleUnsolicitedCCWTInfo] null ar.result in response!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleUnsolicitedCCWTInfo] mCCWTInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1497
    goto :goto_1
.end method

.method private handleUnsolicitedCLIInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 975
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 976
    const-string v1, "handleUnsolicitedCLIInfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 977
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 978
    const-string v1, "[handleUnsolicitedCLIInfo] null ar.result in response!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 983
    .local v0, CLIInfo:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_2

    .line 984
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 986
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 987
    new-instance v1, Lcom/android/internal/telephony/gsm/ClipInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/ClipInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->number:Ljava/lang/String;

    .line 992
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 993
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->toa:I

    .line 999
    :cond_3
    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->cliValid:I

    goto :goto_0
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 621
    return-void
.end method

.method private loadEmergencyCategory()V
    .locals 6

    .prologue
    .line 1505
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    .line 1506
    const-string v3, "ro.ril.ecc_category"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, eccCategoryProp:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1508
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECC Category List: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, eccCategoryList:[Ljava/lang/String;
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1511
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1512
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    aget-object v4, v0, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1516
    .end local v0           #eccCategoryList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 655
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 660
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private processReplacedDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dialString"

    .prologue
    const/16 v6, 0xd1

    const/16 v5, 0x25

    const/4 v4, 0x1

    .line 376
    const-string v1, ""

    .line 377
    .local v1, replacedDialStr:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v2, v6, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v5, :cond_2

    .line 379
    :cond_0
    const-string v2, "gsm.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, currentMCC:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "440"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "441"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v6, :cond_3

    .line 384
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0046010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM replacedDialStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 397
    .end local v0           #currentMCC:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 388
    .restart local v0       #currentMCC:Ljava/lang/String;
    :cond_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v5, :cond_2

    .line 390
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eMobile replacedDialStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCallStateAfterLocallyHangupConnection(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"

    .prologue
    .line 1093
    if-eqz p1, :cond_1

    .line 1094
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1095
    .local v1, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1096
    .local v4, s:I
    :goto_0
    const/4 v3, 0x0

    .line 1098
    .local v3, isAlive:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1099
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1100
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_3

    .line 1101
    const/4 v3, 0x1

    .line 1106
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    .line 1107
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v5, p1, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 1110
    .end local v1           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #i:I
    .end local v3           #isAlive:Z
    .end local v4           #s:I
    :cond_1
    return-void

    .line 1095
    .restart local v1       #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1098
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v2       #i:I
    .restart local v3       #isAlive:Z
    .restart local v4       #s:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 669
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_6

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneInPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mAccPhoneOff:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 701
    :cond_2
    return-void

    .line 671
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_5

    .line 673
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 675
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 690
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneInPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mAccPhoneIn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 492
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 496
    sget-boolean v0, Landroid/media/MediaVT;->STE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoTelephony()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->vtAnswer(Landroid/os/Message;)V

    .line 508
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 506
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 3
    .parameter "dialString"

    .prologue
    .line 1569
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1570
    return-void
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

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
    .locals 5

    .prologue
    .line 577
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 578
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 588
    .local v1, ret:Z
    :goto_0
    return v1

    .line 581
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canDialVT()Z
    .locals 3

    .prologue
    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 598
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 604
    .local v0, ret:Z
    :goto_0
    return v0

    .line 598
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 562
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 564
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
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 551
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 264
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTempCLIR()I

    move-result v5

    .line 265
    .local v5, tmpCLIR:I
    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 267
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temp CLIR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move p2, v5

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v6

    if-nez v6, :cond_1

    .line 276
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    .line 285
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 286
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, phoneNum:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 289
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 308
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneNum:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 311
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_5

    .line 313
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 316
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v6, v7, p1, p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 317
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 321
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x50

    if-eq v6, v7, :cond_6

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd2

    if-ne v6, v7, :cond_7

    .line 323
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 326
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEmergencyCallCategory(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_7
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->VOICE:Lcom/android/internal/telephony/Call$CallType;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/GsmCall;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 337
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_9

    .line 341
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 368
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 369
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 371
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v6

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is not a valid number!!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_9
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 352
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->processReplacedDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, replacedDialStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 355
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v4, p2, p3, v7}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 360
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, p2, p3, v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialVT(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialVT(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialVT(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialVT(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDialVT()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->VIDEOTELEPHONY:Lcom/android/internal/telephony/Call$CallType;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmCall;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 422
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 457
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v1

    .line 435
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->isVTCall:Z

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVTSimulatedMode()Z

    move-result v0

    .line 443
    .local v0, simulatedVT:Z
    if-eqz v0, :cond_3

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 8

    .prologue
    .line 144
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 145
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 146
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 148
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterCLINotify(Landroid/os/Handler;)V

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterCallWaitingInformation(Landroid/os/Handler;)V

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForECallUSSD(Landroid/os/Handler;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 160
    .local v1, c:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_1

    .line 163
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 158
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v1           #c:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    const/4 v2, 0x0

    .line 185
    .local v2, eccCallSwitchPhone:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->dispose()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    const/4 v2, 0x1

    .line 200
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 209
    :goto_3
    return-void

    .line 191
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 195
    :catch_1
    move-exception v3

    .line 196
    .restart local v3       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 205
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    goto :goto_3
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1546
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1547
    .local v2, result:Z
    if-eqz p1, :cond_1

    .line 1548
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-ne v3, v4, :cond_0

    .line 1549
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1553
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_0
    const-string v3, "MODE_IN_CALL_GSM=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1561
    :cond_1
    return v2

    .line 1554
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 1555
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to GSM audio path exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

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
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 556
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1271
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1272
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1273
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1274
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1279
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1272
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1279
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 1301
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v6, :cond_1

    .line 1302
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GsmCallTracker drop event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 1310
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1312
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    if-ne p1, v6, :cond_2

    .line 1315
    iput-boolean v9, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 1316
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1317
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1320
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v6, :cond_0

    .line 1323
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1329
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1330
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1337
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1338
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 1339
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1341
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1346
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1348
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1350
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 1353
    const/16 v1, 0x10

    .line 1354
    .local v1, causeCode:I
    const-string v6, "GSM"

    const-string v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :goto_1
    const/16 v6, 0x22

    if-eq v1, v6, :cond_4

    const/16 v6, 0x29

    if-eq v1, v6, :cond_4

    const/16 v6, 0x2a

    if-eq v1, v6, :cond_4

    const/16 v6, 0x2c

    if-eq v1, v6, :cond_4

    const/16 v6, 0x31

    if-eq v1, v6, :cond_4

    const/16 v6, 0x3a

    if-eq v1, v6, :cond_4

    const v6, 0xffff

    if-ne v1, v6, :cond_5

    .line 1367
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1368
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v7, 0xc3ba

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1373
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1374
    .local v5, s:I
    :goto_3
    if-ge v3, v5, :cond_8

    .line 1376
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1378
    .local v2, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1374
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1357
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3           #i:I
    .end local v5           #s:I
    :cond_6
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v1, v6, v9

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 1368
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v6, -0x1

    goto :goto_2

    .line 1381
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v3       #i:I
    .restart local v5       #s:I
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1383
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1384
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1389
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v3           #i:I
    .end local v5           #s:I
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1393
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1397
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1402
    :sswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleUnsolicitedCLIInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1405
    :sswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleUnsolicitedCCWTInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1412
    :sswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1420
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleECallUSSD(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1308
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x3b -> :sswitch_9
        0x3c -> :sswitch_8
        0x3e -> :sswitch_a
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    .line 707
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 708
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/List;

    .line 720
    .local v16, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v14, 0x0

    .line 721
    .local v14, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 723
    .local v11, hasNonHangupStateChanged:Z
    const/4 v13, 0x0

    .line 724
    .local v13, needsPollDelay:Z
    const/16 v17, 0x0

    .line 726
    .local v17, unknownConnectionAppeared:Z
    const/4 v12, 0x0

    .local v12, i:I
    const/4 v7, 0x0

    .local v7, curDC:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    .line 727
    .local v9, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_12

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v6, v19, v12

    .line 729
    .local v6, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v8, 0x0

    .line 732
    .local v8, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    .line 733
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    .line 735
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 736
    add-int/lit8 v7, v7, 0x1

    .line 745
    :cond_0
    :goto_2
    if-nez v6, :cond_a

    if-eqz v8, :cond_a

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v20, v0

    aput-object v20, v19, v12

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v12, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 755
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 758
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 759
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 761
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v6           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7           #curDC:I
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v9           #dcSize:I
    .end local v11           #hasNonHangupStateChanged:Z
    .end local v12           #i:I
    .end local v13           #needsPollDelay:Z
    .end local v14           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v16           #polledCalls:Ljava/util/List;
    .end local v17           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    return-void

    .line 709
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 712
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .restart local v16       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 716
    .end local v16           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 738
    .restart local v6       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v7       #curDC:I
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v9       #dcSize:I
    .restart local v11       #hasNonHangupStateChanged:Z
    .restart local v12       #i:I
    .restart local v13       #needsPollDelay:Z
    .restart local v14       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v16       #polledCalls:Ljava/util/List;
    .restart local v17       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 764
    :catch_0
    move-exception v10

    .line 765
    .local v10, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "GSM"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 773
    .end local v10           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v8, v2, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v20, v19, v12

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v14, v19, v12

    .line 797
    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 727
    :cond_7
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 784
    :cond_8
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Phantom call appeared "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 794
    :cond_9
    const/16 v17, 0x1

    goto :goto_4

    .line 798
    :cond_a
    if-eqz v6, :cond_b

    if-nez v8, :cond_b

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v12

    goto :goto_5

    .line 805
    :cond_b
    if-eqz v6, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v8, v2, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v20, v19, v12

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    aget-object v14, v19, v12

    .line 815
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 816
    :cond_d
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    .line 820
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getECCUssdStatus()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEccUssdString()Ljava/lang/String;

    move-result-object v18

    .line 822
    .local v18, ussd:Ljava/lang/String;
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ussd"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "oldState"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dc.State"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    if-eqz v18, :cond_f

    .line 829
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 830
    .local v15, oldState:Lcom/android/internal/telephony/Call$State;
    sget-object v19, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_e

    sget-object v19, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_f

    :cond_e
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 839
    .end local v15           #oldState:Lcom/android/internal/telephony/Call$State;
    .end local v18           #ussd:Ljava/lang/String;
    :cond_f
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    .line 840
    .local v5, changed:Z
    if-nez v11, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    const/4 v11, 0x1

    :goto_6
    goto/16 :goto_5

    :cond_11
    const/4 v11, 0x0

    goto :goto_6

    .line 866
    .end local v5           #changed:Z
    .end local v6           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 867
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 872
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 875
    :cond_13
    if-eqz v14, :cond_14

    .line 877
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCliValid()Lcom/android/internal/telephony/Connection$CliValid;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCCWT(Z)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 886
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_7
    if-ltz v12, :cond_1a

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 890
    .restart local v6       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->isCollided()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 891
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;Z)V

    .line 886
    :cond_15
    :goto_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 895
    :cond_16
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_18

    .line 898
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 899
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 905
    .local v4, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missed/rejected call, conn.cause="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 906
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setting cause to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 909
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_8

    .line 901
    .end local v4           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_17
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v4       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_9

    .line 910
    .end local v4           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_18
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 913
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_8

    .line 914
    :cond_19
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 917
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_8

    .line 922
    .end local v6           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1b

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 927
    :cond_1b
    if-eqz v13, :cond_1c

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 936
    :cond_1c
    if-nez v14, :cond_1d

    if-eqz v11, :cond_1e

    .line 937
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 940
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 942
    if-eqz v17, :cond_1f

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 947
    :cond_1f
    if-eqz v14, :cond_20

    .line 949
    const/16 v19, 0x3b

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 951
    :cond_20
    if-eqz v11, :cond_1

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_1

    .line 1158
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1183
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1185
    return-void

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_3

    .line 1161
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 1167
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_5

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1172
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 1176
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    .line 1179
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to GsmCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1061
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

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
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 1069
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1070
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1082
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1087
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateCallStateAfterLocallyHangupConnection(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 1089
    return-void

    .line 1073
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1077
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1258
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1259
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1260
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1261
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1263
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1264
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1245
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1246
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1247
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1248
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1249
    return-void

    .line 1245
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1253
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1238
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1240
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1232
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1234
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1520
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    .line 239
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 228
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 230
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 219
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 221
    return-void
.end method

.method rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoTelephony()Z

    move-result v0

    .line 516
    .local v0, ivVT:Z
    sget-boolean v1, Landroid/media/MediaVT;->STE:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 517
    const-string v1, "phone"

    const-string v2, "vtHangup: ringing..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->vtHangup(Landroid/os/Message;)V

    .line 527
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v1, "phone"

    const-string v2, "rejectCall: ringing..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    goto :goto_0

    .line 525
    .end local v0           #ivVT:Z
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method requestFallBack(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoTelephony()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    const-string v0, "(ringing) hangup ringing/waiting VT call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x58

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->vtCHUP(ILandroid/os/Message;)V

    .line 1226
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1227
    return-void

    .line 1222
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestFallBack(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v0, p0, :cond_0

    .line 1192
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x58

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->vtCHUP(ILandroid/os/Message;)V

    .line 1206
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1207
    return-void

    .line 1202
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1116
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1120
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1125
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

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
    .locals 3
    .parameter "mute"

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    if-eq v0, p1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mMutePath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccMute:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1141
    return-void

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mAccUnmute:Ljava/lang/String;

    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 546
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 234
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 225
    return-void
.end method

.method public vtHangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 2
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_0
    const-string v0, "vtHangup"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->vtHangup(Landroid/os/Message;)V

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1533
    return-void
.end method
