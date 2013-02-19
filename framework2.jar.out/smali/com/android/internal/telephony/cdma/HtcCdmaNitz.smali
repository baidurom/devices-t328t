.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.super Landroid/os/Handler;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
    }
.end annotation


# static fields
.field private static final DBG_DETAIL:Z = false

.field private static final EVENT_DISPOSE:I = 0x2

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUICKBOOT_OFF:I = 0x3

.field private static final EVENT_SCREEN_ON:I = 0x4

.field private static final FAKE_SUPPORT:Z = false

.field private static final HTC_HISTORY_ENTRIES:I = 0x4

.field private static final KEY_TIME_ZONE_IS_VALID:Ljava/lang/String; = "gsm.timezone.isvalid"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final PREDICTION_TYPE_NONE:I = 0x2

.field private static final PREDICTION_TYPE_NOT_FOUND:I = 0x0

.field private static final PREDICTION_TYPE_ONLY_OFFSET_MATCH:I = 0xc

.field private static final PREDICTION_TYPE_WO_COUNTRY_WO_DST:I = 0xa

.field private static final PREDICTION_TYPE_WO_COUNTRY_W_DST:I = 0x8

.field private static final PREDICTION_TYPE_W_COUNTRY_WO_DST:I = 0x6

.field private static final PREDICTION_TYPE_W_COUNTRY_W_DST:I = 0x4

.field private static final PREDICTION_UNTRUST_LEVEL:I = 0x9

.field public static final SETUP_NITZ_FROM_ISO_UPDATE:I = 0x1

.field public static final SETUP_NITZ_FROM_NITZ_EVENT:I = 0x0

.field public static final SETUP_NITZ_FROM_USER_SETUP:I = 0x2

.field private static final logFakeNitzPrefix:Ljava/lang/String; = "Fake NITZ "


# instance fields
.field private SST__EVENT_NITZ_TIME:Ljava/lang/Integer;

.field private SST__EVENT_RADIO_STATE_CHANGED:Ljava/lang/Integer;

.field private currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mNitzLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mTimeZonePickerTriggered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 1
    .parameter "context"
    .parameter "sst"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method

.method private addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 2
    .parameter "history"

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 254
    :cond_0
    monitor-exit p0

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bootupTimeZoneCacheClear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NITZ time zone : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.timezone.isvalid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "gsm.timezone.isvalid"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 379
    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 382
    move v5, p1

    .line 383
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 384
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 386
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 388
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 389
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 390
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 391
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 393
    move-object v2, v6

    .line 398
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 389
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getFakeNitzSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return-object v0
.end method

.method private neverNotifyTimezonePickerChecker()Z
    .locals 2

    .prologue
    .line 576
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z
    .locals 2
    .parameter "tzA"
    .parameter "tzB"

    .prologue
    .line 402
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryAvaliable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryAvaliable:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->country:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendFakeNitz()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method private triggerTimezonePicker(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const-string v0, "htc.intent.action.timezone_picker"

    .line 593
    .local v0, ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "htc.intent.action.timezone_picker"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    .end local v0           #ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 598
    :cond_0
    const-string v3, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ unable waking-up timezone picker - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 4
    .parameter "infoBS"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 140
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 142
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 143
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    :cond_1
    monitor-exit p0

    .line 150
    return-void

    .line 148
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public displayNitzHistory(Z)V
    .locals 4
    .parameter "longFormat"

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 267
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 268
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 269
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 270
    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V

    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    :cond_1
    monitor-exit p0

    .line 275
    return-void

    .line 273
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method public getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "originalNitzString"
    .parameter "originalNitz"

    .prologue
    .line 679
    move-object v0, p2

    .line 805
    .local v0, translatedNitz:[Ljava/lang/String;
    return-object v0
.end method

.method public getFakeOperatorInfo(Landroid/telephony/ServiceState;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "ss"
    .parameter "country"

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 855
    .local v0, fakeResult:[Ljava/lang/String;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 296
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 331
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendFakeNitz()V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public receiveNitz(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 1
    .parameter "nitz"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V

    .line 161
    return-void
.end method

.method public searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 17
    .parameter "knownTimeZone"
    .parameter "needToCheckCountry"
    .parameter "country"
    .parameter "daylightSavingTime"
    .parameter "timeZoneOffset"
    .parameter "timeInNitz"

    .prologue
    .line 419
    move-object/from16 v6, p3

    .line 420
    .local v6, givenCountry:Ljava/lang/String;
    move-object/from16 v7, p2

    .line 421
    .local v7, givenCountryCheck:Ljava/lang/Boolean;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->getFakeOperatorInfo(Landroid/telephony/ServiceState;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, fakeResult:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 423
    const/4 v14, 0x1

    aget-object v6, v5, v14

    .line 424
    if-eqz v7, :cond_0

    .line 425
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 429
    :cond_0
    const-string v14, "CDMA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NITZ time zone check: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " notify="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;)V

    .line 433
    .local v10, searchItem:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 434
    const/4 v14, 0x0

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 435
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :goto_1
    iput-boolean v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryAvaliable:Z

    .line 436
    iput-object v6, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->country:Ljava/lang/String;

    .line 437
    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    .line 438
    move/from16 v0, p5

    iput v0, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    .line 439
    move-wide/from16 v0, p6

    iput-wide v0, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeInNitz:J

    .line 441
    const/4 v9, 0x0

    .line 442
    .local v9, possibleTimeZone:Ljava/util/TimeZone;
    if-eqz p1, :cond_6

    .line 443
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 444
    move-object/from16 v9, p1

    .line 445
    const/4 v14, 0x2

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 510
    :cond_1
    :goto_2
    const-string v15, "gsm.timezone.isvalid"

    if-eqz v9, :cond_10

    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v8, 0x0

    .line 512
    .local v8, needToTriggerPicker:Z
    if-nez v9, :cond_13

    .line 513
    if-nez v7, :cond_3

    .line 514
    const/4 v8, 0x1

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v14, :cond_12

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    iget-object v15, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v14, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v15, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v14, v15, :cond_2

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v14

    if-nez v14, :cond_11

    const/4 v8, 0x1

    .line 525
    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 527
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 528
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 554
    :cond_3
    :goto_5
    const/4 v12, -0x1

    .line 556
    .local v12, settingAutoTimeZone:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_time_zone"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 559
    :goto_6
    const/4 v11, -0x1

    .line 561
    .local v11, settingAutoTime:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_time"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 564
    :goto_7
    const-string v15, "CDMA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NITZ time zone: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v16, 0xea60

    div-int v16, p5, v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " -> "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "*"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v14

    if-nez v14, :cond_18

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Set="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-object v9

    .line 425
    .end local v8           #needToTriggerPicker:Z
    .end local v9           #possibleTimeZone:Ljava/util/TimeZone;
    .end local v10           #searchItem:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    .end local v11           #settingAutoTime:I
    .end local v12           #settingAutoTimeZone:I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 435
    .restart local v10       #searchItem:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 449
    .restart local v9       #possibleTimeZone:Ljava/util/TimeZone;
    :cond_6
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 450
    .local v13, tryDst:Z
    :goto_a
    iget-boolean v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryAvaliable:Z

    if-eqz v14, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_c

    .line 452
    move/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-static {v0, v13, v1, v2, v6}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 453
    if-eqz v9, :cond_a

    .line 454
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 455
    const/4 v14, 0x4

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 494
    :cond_7
    :goto_b
    if-nez v9, :cond_1

    .line 495
    const/4 v4, 0x0

    .line 496
    .local v4, discardDstMatch:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v14, :cond_8

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v14, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v15, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v14, v15, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v4

    .line 501
    :cond_8
    if-eqz v4, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v9, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 503
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 504
    const/16 v14, 0xc

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto/16 :goto_2

    .line 449
    .end local v4           #discardDstMatch:Z
    .end local v13           #tryDst:Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_a

    .line 457
    .restart local v13       #tryDst:Z
    :cond_a
    if-nez p4, :cond_7

    .line 458
    if-nez v13, :cond_b

    const/4 v14, 0x1

    :goto_c
    move/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-static {v0, v14, v1, v2, v6}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 459
    if-eqz v9, :cond_7

    .line 460
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 461
    const/4 v14, 0x6

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_b

    .line 458
    :cond_b
    const/4 v14, 0x0

    goto :goto_c

    .line 473
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v9

    .line 474
    if-eqz v9, :cond_d

    .line 475
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 476
    const/16 v14, 0x8

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_b

    .line 480
    :cond_d
    if-nez v13, :cond_e

    const/4 v14, 0x1

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v9

    .line 481
    if-eqz v9, :cond_7

    .line 482
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 483
    if-nez p4, :cond_f

    .line 484
    const/16 v14, 0x8

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_b

    .line 480
    :cond_e
    const/4 v14, 0x0

    goto :goto_d

    .line 487
    :cond_f
    const/16 v14, 0xa

    iput v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_b

    .line 510
    .end local v13           #tryDst:Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 519
    .restart local v8       #needToTriggerPicker:Z
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 523
    :cond_12
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 533
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    if-eqz v14, :cond_14

    .line 534
    const/4 v8, 0x1

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 536
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 537
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 539
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v14, :cond_15

    iget v14, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v15, 0x9

    if-ge v14, v15, :cond_16

    .line 541
    :cond_15
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_5

    .line 543
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v14, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_3

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v14, v14, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    iget v15, v10, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    if-lt v14, v15, :cond_3

    .line 545
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_5

    .line 564
    .restart local v11       #settingAutoTime:I
    .restart local v12       #settingAutoTimeZone:I
    :cond_17
    const-string v14, ""

    goto/16 :goto_8

    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 562
    :catch_0
    move-exception v14

    goto/16 :goto_7

    .line 557
    .end local v11           #settingAutoTime:I
    :catch_1
    move-exception v14

    goto/16 :goto_6
.end method

.method public setupNitz(IJJ)V
    .locals 4
    .parameter "type"
    .parameter "setupCompleteTime"
    .parameter "newTime"

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 191
    .local v1, size:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 192
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 194
    iput-wide p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 195
    iput-wide p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    .line 197
    :cond_0
    monitor-exit p0

    .line 199
    return-void

    .line 197
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V

    .line 133
    return-void
.end method

.method public updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V

    .line 123
    return-void
.end method
