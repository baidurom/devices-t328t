.class public Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;
.super Landroid/os/Handler;
.source "HtcCdmaProfileSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;,
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    }
.end annotation


# static fields
.field private static final EVENT_3GIND:I = 0xa

.field private static final EVENT_DATA_PROFILE_CONFIRM:I = 0x4

.field private static final EVENT_DATA_PROFILE_DOUBLE_CHECK:I = 0x3

.field private static final EVENT_DATA_PROFILE_REQUEST:I = 0x1

.field private static final EVENT_DATA_PROFILE_SWITCH:I = 0x2

.field private static final EVENT_PENDING_REQUEST_DELAY:I = 0xb

.field private static final FIX_RADIO_ISSUE_FOR_SWITCHING_PROFILE:Z = true

.field public static final HTC_DATA_PROFILE_HI_PRIORITY:I = 0x4

.field public static final HTC_DATA_PROFILE_NET_SHARING:I = 0x2

.field public static final HTC_DATA_PROFILE_NORMAL:I = 0x1

.field public static final HTC_DATA_PROFILE_UNKNOWN:I = 0x0

.field private static final INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final ISSUE_NET_SHARING_CMD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final MAX_DATA_PROFILE_CONFIRM_TRY:I = 0xa

.field private static final MAX_DATA_PROFILE_SWITCH_TRY:I = 0xf

.field public static final SWITCHING_MODE_NONE:I = 0x0

.field public static final SWITCHING_MODE_SPRINT:I = 0x1

.field private static final TIMEOUT_3GIND_WAITING_MS:I = 0xbb8

.field private static final profileProperty:Ljava/lang/String; = "ril.cdma.profile"


# instance fields
.field private m3GIND:Ljava/lang/Boolean;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataOffAlarmIntent:Landroid/app/PendingIntent;

.field private mDataProfile:I

.field private mDataProfileConfirmRetry:I

.field private mDataProfileSwitchRetry:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileSwitchingMode:Ljava/lang/Integer;

.field private mProfileSwitchingRequestTransaction:Z

.field private mRequestRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingChannelClosed:Z

.field private mWaitingTimerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 44
    const-string v0, "com.android.internal.telephony.cdma-switch.profile"

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    .line 525
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eqz v0, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 52
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 56
    const-string v1, "ril.cdma.profile"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->timeoutWaitingPerioid(IZ)V

    return-void
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 822
    move-object v0, p1

    .line 823
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 826
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    .line 830
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private dataProfileConfirm(Landroid/os/AsyncResult;II)V
    .locals 12
    .parameter "ar"
    .parameter "netSharing"
    .parameter "hiPriority"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 357
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 358
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_0

    .line 359
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: confirm profile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 363
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 415
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_f

    .line 416
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    if-lez v5, :cond_2

    .line 417
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: switch profile try:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 420
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 445
    :goto_1
    return-void

    .line 366
    :cond_3
    if-ltz p2, :cond_5

    .line 367
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 368
    if-eqz p2, :cond_4

    :goto_2
    invoke-direct {p0, v10, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->setupProfileSwitch(IZ)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 370
    :cond_5
    if-ltz p3, :cond_1

    .line 373
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, command:Ljava/lang/String;
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v4, v7, -0x30

    .line 378
    .end local v1           #command:Ljava/lang/String;
    .local v4, mipValue:I
    :goto_3
    if-ltz v4, :cond_d

    .line 379
    const/4 v3, 0x0

    .line 380
    .local v3, matchProfile:Z
    if-eqz p3, :cond_8

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v7

    if-ne v4, v7, :cond_7

    move v3, v5

    .line 386
    :goto_4
    if-eqz v3, :cond_b

    .line 387
    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-lez v7, :cond_6

    .line 388
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcCdmaProfile]: confirm profile try:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 391
    :cond_6
    const/4 v7, 0x4

    if-eqz p3, :cond_a

    :goto_5
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->setupProfileSwitch(IZ)V

    goto :goto_0

    .line 375
    .end local v3           #matchProfile:Z
    .end local v4           #mipValue:I
    :catch_0
    move-exception v2

    .line 376
    .local v2, ex:Ljava/lang/Exception;
    const/4 v4, -0x1

    .restart local v4       #mipValue:I
    goto :goto_3

    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #matchProfile:Z
    :cond_7
    move v3, v6

    .line 381
    goto :goto_4

    .line 384
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v7

    if-ne v4, v7, :cond_9

    move v3, v5

    :goto_6
    goto :goto_4

    :cond_9
    move v3, v6

    goto :goto_6

    :cond_a
    move v5, v6

    .line 391
    goto :goto_5

    .line 394
    :cond_b
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_c

    .line 395
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: confirm profile not match:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_c
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 399
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 401
    const-string v5, "ril.cdma.profile"

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: profile mode (not match):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    .end local v3           #matchProfile:Z
    :cond_d
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_e

    .line 408
    const-string v5, "CDMA"

    const-string v7, "[HtcCdmaProfile]: confirm profile DM fail"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    goto/16 :goto_0

    .line 422
    .end local v4           #mipValue:I
    :cond_f
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    const/16 v7, 0xa

    if-ge v5, v7, :cond_10

    .line 424
    const/4 v5, 0x3

    invoke-virtual {p0, v5, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 425
    .local v0, checkMsg:Landroid/os/Message;
    invoke-static {v0, v11, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 426
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 430
    .end local v0           #checkMsg:Landroid/os/Message;
    :cond_10
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 431
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 432
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 433
    if-ltz p2, :cond_11

    .line 434
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 436
    :cond_11
    if-ltz p3, :cond_12

    .line 437
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 440
    :cond_12
    const-string v5, "ril.cdma.profile"

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcCdmaProfile]: profile mode (confirm fail):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private dataProfileDoubleCheck(Landroid/os/AsyncResult;II)V
    .locals 8
    .parameter "ar"
    .parameter "netSharing"
    .parameter "hiPriority"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, handleException:Z
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 315
    if-gez p2, :cond_2

    .line 316
    const/4 v1, 0x1

    .line 322
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 323
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    if-nez v4, :cond_1

    .line 324
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaProfile]: switch profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 328
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 351
    :goto_1
    return-void

    .line 318
    :cond_2
    sget-boolean v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    if-eqz v4, :cond_0

    if-gez p3, :cond_0

    .line 319
    const/4 v1, 0x1

    goto :goto_0

    .line 331
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {p0, v4, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, confirmMsg:Landroid/os/Message;
    if-ltz p2, :cond_4

    .line 333
    invoke-static {v0, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 334
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 336
    :cond_4
    if-ltz p3, :cond_6

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v2

    .line 338
    .local v2, profileIdNormal:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 339
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v5, "C826D00100"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 342
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C826D0010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, result:Ljava/lang/String;
    invoke-static {v0, v3, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 344
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 348
    .end local v2           #profileIdNormal:I
    .end local v3           #result:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private dataProfileRequest(ILandroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "onCompleted"

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V

    .line 160
    .local v0, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    iput p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    .line 161
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 167
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: pending for switching"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->startPendingRequestTimer()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcCdmaProfile]: dataProfileRequest:profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    goto :goto_0
.end method

.method private dataProfileResultReport(Ljava/lang/String;)V
    .locals 5
    .parameter "errorString"

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 449
    .local v0, lenRecords:I
    :goto_0
    if-lez v0, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    .line 451
    .local v1, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    iget v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    if-ne v2, v3, :cond_0

    .line 452
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 457
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 458
    goto :goto_0

    .line 455
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 460
    .end local v1           #record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 461
    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 462
    return-void
.end method

.method private dataProfileSwitch()V
    .locals 13

    .prologue
    .line 190
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 191
    .local v3, lenRecords:I
    if-nez v3, :cond_0

    .line 193
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 194
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 280
    :goto_0
    return-void

    .line 199
    :cond_0
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    const/16 v11, 0xf

    if-lt v10, v11, :cond_1

    .line 200
    const-string v10, "CDMA"

    const-string v11, "[HtcCdmaProfile]: switch profile fail"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v10, "ProfileSwitchOverLimit"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileResultReport(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    .line 207
    .local v8, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    const/4 v2, 0x0

    .line 208
    .local v2, issueNetSharingCmd:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 209
    .local v1, issueHiPriorityCmd:Ljava/lang/Boolean;
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataProfileSwitch mDataProfile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",record.profile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    iget v11, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    if-eq v10, v11, :cond_2

    .line 211
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    iget v11, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    xor-int/lit8 v11, v11, -0x1

    and-int v9, v10, v11

    .line 212
    .local v9, switchProfile:I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 214
    iget v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    packed-switch v10, :pswitch_data_0

    .line 222
    :pswitch_0
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcCdmaProfile] active profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v9           #switchProfile:I
    :cond_2
    :goto_1
    if-eqz v2, :cond_9

    .line 242
    const/4 v11, 0x3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    const/4 v12, -0x1

    invoke-virtual {p0, v11, v10, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, cmdResponse:Landroid/os/Message;
    sget-boolean v10, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    if-eqz v10, :cond_8

    .line 251
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x3

    .line 253
    .local v4, nai:I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestSetNAI(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 216
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v4           #nai:I
    .restart local v9       #switchProfile:I
    :pswitch_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    goto :goto_1

    .line 219
    :pswitch_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 220
    goto :goto_1

    .line 228
    :cond_3
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_4

    .line 229
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 231
    :cond_4
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_5

    .line 232
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 235
    :cond_5
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcCdmaProfile] deactive profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v9           #switchProfile:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 251
    .restart local v0       #cmdResponse:Landroid/os/Message;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 256
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 257
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 260
    .end local v0           #cmdResponse:Landroid/os/Message;
    :cond_9
    if-eqz v1, :cond_d

    .line 261
    const/4 v11, 0x3

    const/4 v12, -0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {p0, v11, v12, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 263
    .restart local v0       #cmdResponse:Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v6

    .line 264
    .local v6, profileIdHiPri:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v7

    .line 265
    .local v7, profileIdNormal:I
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profileIdHiPri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",profileIdNormal="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eq v6, v7, :cond_c

    .line 267
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    move v5, v6

    .line 268
    .local v5, profile:I
    :goto_5
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestSetMIPProfile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMIPProfile(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 261
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v5           #profile:I
    .end local v6           #profileIdHiPri:I
    .end local v7           #profileIdNormal:I
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .restart local v0       #cmdResponse:Landroid/os/Message;
    .restart local v6       #profileIdHiPri:I
    .restart local v7       #profileIdNormal:I
    :cond_b
    move v5, v7

    .line 267
    goto :goto_5

    .line 272
    :cond_c
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 278
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v6           #profileIdHiPri:I
    .end local v7           #profileIdNormal:I
    :cond_d
    const-string v10, "ProfileSwitchOverTaken"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileResultReport(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "onCompleted"
    .parameter "ex"

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 467
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 469
    :cond_0
    return-void
.end method

.method private getDataProfileHiPriority()I
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "CDMA"

    const-string v1, "VM OMA DM profile: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x2

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataProfileNormal()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataProfileKnown(I)Z
    .locals 2
    .parameter "profileRecord"

    .prologue
    const/4 v0, 0x1

    .line 485
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupProfileSwitch(IZ)V
    .locals 5
    .parameter "profileUpdate"
    .parameter "isEnable"

    .prologue
    const/4 v2, 0x1

    .line 494
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 495
    .local v1, profileBeforeChange:I
    or-int/lit8 v3, p1, 0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    move v0, v2

    .line 496
    .local v0, isProfileKnown:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 497
    if-eqz p2, :cond_1

    .line 498
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 513
    :goto_1
    const-string v2, "ril.cdma.profile"

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 495
    .end local v0           #isProfileKnown:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 501
    .restart local v0       #isProfileKnown:Z
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1

    .line 505
    :cond_2
    if-eqz p2, :cond_3

    .line 506
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v3, p1, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1

    .line 509
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1
.end method

.method private startPendingRequestTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 835
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 837
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 838
    .local v1, context:Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 839
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 841
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 844
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 847
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    .line 850
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 854
    return-void
.end method

.method private timeoutWaitingPerioid(IZ)V
    .locals 4
    .parameter "timerId"
    .parameter "byEvent"

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v1, :cond_2

    .line 859
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: cdma phone object is null, return "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_1
    :goto_0
    return-void

    .line 863
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    if-ne v1, p1, :cond_1

    .line 866
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 867
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    if-eqz v1, :cond_1

    .line 868
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 869
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    .line 870
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 871
    .local v0, connectionStatus:Lcom/android/internal/telephony/DataConnectionTracker$State;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcCdmaProfile]: pending for switching timeout - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    .line 875
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: timeoutWaitingPerioid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    goto :goto_0
.end method

.method private triggerDataProfileRequest()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 179
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 181
    :cond_0
    return-void
.end method

.method private update3GindState(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 777
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 778
    .local v0, inds:[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 779
    aget v1, v0, v3

    .line 780
    .local v1, state:I
    new-instance v4, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    .line 781
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    if-eqz v2, :cond_0

    .line 782
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 784
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 786
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 788
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 789
    const-string v2, "CDMA"

    const-string v3, "[HtcCdmaProfile]: update3GindState triggerDataProfileRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    .line 794
    .end local v0           #inds:[I
    .end local v1           #state:I
    :cond_0
    return-void

    .restart local v0       #inds:[I
    .restart local v1       #state:I
    :cond_1
    move v2, v3

    .line 780
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 85
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 86
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 88
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaProfileSwitch finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public getCurrentDataProfile()I
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 659
    .local v0, profileReturn:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->isDataProfileKnown(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 662
    :cond_0
    return v0
.end method

.method public getProfileSwitchingMode()I
    .locals 3

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 907
    .local v0, mode:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    :cond_0
    const/4 v0, 0x1

    .line 911
    :cond_1
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 112
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcCdmaProfileSwitch drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 119
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileRequest(ILandroid/os/Message;)V

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitch()V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileDoubleCheck(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileConfirm(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 132
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->update3GindState(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 137
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->timeoutWaitingPerioid(IZ)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isProfileAllowSwitch(I)Z
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v2, 0x1

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, allow:Z
    packed-switch p1, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isProfileAllowSwitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v0

    .line 291
    :pswitch_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 297
    const-string v3, "dm.hfa"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, provision:I
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.hfa provision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v1, :cond_1

    move v0, v2

    .line 300
    :goto_1
    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 302
    .end local v1           #provision:I
    :cond_2
    const/4 v0, 0x1

    .line 304
    goto :goto_0

    .line 306
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public needDisconnectForSwitchingTo(I)Z
    .locals 3
    .parameter "toProfile"

    .prologue
    const/4 v2, 0x1

    .line 586
    const/4 v0, 0x1

    .line 587
    .local v0, required:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 596
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 598
    :pswitch_3
    const/4 v0, 0x0

    .line 599
    goto :goto_0

    .line 601
    :pswitch_4
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    .line 602
    goto :goto_0

    .line 604
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :pswitch_6
    packed-switch p1, :pswitch_data_2

    :pswitch_7
    goto :goto_0

    .line 618
    :pswitch_8
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    .line 619
    goto :goto_0

    .line 621
    :pswitch_9
    const/4 v0, 0x0

    .line 622
    goto :goto_0

    .line 624
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :pswitch_b
    packed-switch p1, :pswitch_data_3

    :pswitch_c
    goto :goto_0

    .line 638
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    goto :goto_0

    .line 644
    :pswitch_f
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 596
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 616
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 636
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public onGoingSwitchingToDataProfile()I
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, profile:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 672
    .local v1, szRequests:I
    if-lez v1, :cond_0

    .line 673
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    iget v0, v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    .line 675
    :cond_0
    return v0
.end method

.method public profileAllowDataConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, allow:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 753
    :goto_0
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profileAllowDataConnection()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",getCurrentDataProfile()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v0

    .line 735
    :pswitch_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 741
    const-string v3, "dm.hfa"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 742
    .local v1, provision:I
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaProfile]: dm.hfa provision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-eqz v1, :cond_1

    move v0, v2

    .line 744
    :goto_1
    goto :goto_0

    .line 743
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 746
    .end local v1           #provision:I
    :cond_2
    const/4 v0, 0x1

    .line 748
    goto :goto_0

    .line 750
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDataProfileTo(Landroid/os/Message;)V
    .locals 3
    .parameter "onCompleted"

    .prologue
    .line 716
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->isDataProfileKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ProfileNotAllowed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setupCarrierId(I)V
    .locals 1
    .parameter "carrierId"

    .prologue
    .line 763
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingMode:Ljava/lang/Integer;

    .line 764
    return-void
.end method

.method public switchToDataProfileDirectly(I)Z
    .locals 5
    .parameter "profile"

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v0

    .line 684
    .local v0, currentProfile:I
    if-ne v0, p1, :cond_1

    .line 685
    const/4 v1, 0x1

    .line 708
    :cond_0
    :goto_0
    return v1

    .line 687
    :cond_1
    const/4 v1, 0x0

    .line 694
    .local v1, directSwitch:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->needDisconnectForSwitchingTo(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 696
    const/4 v1, 0x1

    .line 697
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile mode (d):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 700
    const-string v2, "ril.cdma.profile"

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_2
    if-nez v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->onGoingSwitchingToDataProfile()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
