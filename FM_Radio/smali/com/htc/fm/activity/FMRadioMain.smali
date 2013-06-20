.class public Lcom/htc/fm/activity/FMRadioMain;
.super Landroid/app/Activity;
.source "FMRadioMain.java"

# interfaces
.implements Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;


# static fields
.field public static final ACTION_DO_UPDATE_FREROLLBAR:I = 0x1f

.field public static final ACTION_START_PRESETS_ACTIVITY:I = 0x20

.field private static final AUDIO_MANAGER_STREAM_FM:I = 0xa

.field private static final DIALOG_ON_AIRPLANE:I = 0x3

.field public static final FREQ_INCREMENT:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final JAPAN_BAND:Z = false

.field private static final RSSI_LADDER_GAP:I = 0x7

.field private static final START_PRESETS_ACTIVITY_DELAY_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FMRadioMain"


# instance fields
.field private isStereo:Z

.field private isTuning:Z

.field mActionHandler:Landroid/os/Handler;

.field private mBackground:Landroid/widget/ImageView;

.field private mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

.field private mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

.field private mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

.field private mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

.field private mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

.field private mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneDownRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

.field private mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneUpRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

.field private mChannelName:Landroid/widget/TextView;

.field private mCoverPanel:Landroid/widget/ImageView;

.field private mCurrentFrequency:I

.field private mHasInitial:Z

.field private mIsGetPowerState:Z

.field private mIsHeadsetPlugged:Z

.field private mIsMute:Z

.field private mIsPresetsPressed:Z

.field private mIsPreviousForeground:Z

.field private mIsRivaLocked:Z

.field private mIsScanFinish:Z

.field private mIsTurnOffPressed:Z

.field private mIsTurnOn:Z

.field private mIsVisible:Z

.field private mMenu:Landroid/view/Menu;

.field private mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

.field private mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

.field private mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

.field private mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mScanningDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSeekDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

.field private mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

.field private mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

.field private mSoundHoundIntent:Landroid/content/Intent;

.field private mSupportSoundHound:Z

.field private mTimeStampOfUIStartingAdjust:J

.field private mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x51

    .line 72
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    .line 77
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/activity/FMRadioMain;->JAPAN_BAND:Z

    .line 78
    const v0, 0x128e0

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    .line 79
    const v0, 0x15f90

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    .line 84
    :goto_0
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAPAN_BAND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/activity/FMRadioMain;->JAPAN_BAND:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 82
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/activity/FMRadioMain;->JAPAN_BAND:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    .line 104
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    .line 106
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z

    .line 107
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOffPressed:Z

    .line 108
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z

    .line 109
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    .line 110
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mHasInitial:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPreviousForeground:Z

    .line 112
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J

    .line 120
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    .line 121
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z

    .line 123
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    .line 124
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    .line 125
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    .line 126
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    .line 128
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 129
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 130
    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 132
    new-instance v0, Lcom/htc/fm/ui/helper/ServiceHelper;

    const-class v1, Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {v0, p0, v1}, Lcom/htc/fm/ui/helper/ServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    .line 536
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$3;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$4;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

    .line 560
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$5;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$5;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneUpRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    .line 573
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$6;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$6;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneDownRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    .line 602
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$7;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$7;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

    .line 616
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$8;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$8;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

    .line 675
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$9;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$9;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mActionHandler:Landroid/os/Handler;

    .line 779
    new-instance v0, Lcom/htc/fm/activity/FMRadioMain$10;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioMain$10;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->frequencyUp()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->frequencyDown()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showSeekDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/fm/activity/FMRadioMain;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/htc/fm/activity/FMRadioMain;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mTimeStampOfUIStartingAdjust:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/FreqRollBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/MirrorFace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->startPresetsActivity()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/activity/FMRadioMain;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hidePowerOffDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideScanConfirmDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideScanningDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideNoChannelFoundDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showPowerOffDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsGetPowerState:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideNoHeadsetDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOffPressed:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/fm/activity/FMRadioMain;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->lockUi(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/fm/activity/FMRadioMain;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/widget/SignalBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/fm/activity/FMRadioMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->getPresetsCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showNoChannelFoundDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/fm/activity/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPreviousForeground:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->scanning()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showPowerOnDialog()V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->turnOn()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/fm/activity/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mHasInitial:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fm/activity/FMRadioMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    return v0
.end method

.method private changeRollBarValue(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 742
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+changeRollBarValue() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/activity/FMRadioMain;->changeRollBarValue(IZ)V

    .line 744
    const-string v0, "FMRadioMain"

    const-string v1, "-changeRollBarValue()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private changeRollBarValue(IZ)V
    .locals 5
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 748
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+changeRollBarValue() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    if-eqz p2, :cond_0

    .line 751
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setRotateTime(IIII)V

    .line 752
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/htc/fm/ui/widget/MirrorFace;->setRotateTime(IIII)V

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreq(IZ)V

    .line 759
    const-string v0, "FMRadioMain"

    const-string v1, "-changeRollBarValue()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/htc/fm/ui/widget/FreqRollBar;->setRotateTime(IIII)V

    .line 755
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/htc/fm/ui/widget/MirrorFace;->setRotateTime(IIII)V

    goto :goto_0
.end method

.method private enableControls(Z)V
    .locals 3
    .parameter "pIsEnabled"

    .prologue
    .line 1001
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+enableControls() enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    if-eqz p1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCoverPanel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->lockUi(Z)V

    .line 1013
    const-string v0, "FMRadioMain"

    const-string v1, "-enableControls()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCoverPanel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private frequencyDown()V
    .locals 3

    .prologue
    .line 595
    const-string v0, "FMRadioMain"

    const-string v1, "+frequencyDown()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 597
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 598
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 599
    const-string v0, "FMRadioMain"

    const-string v1, "-frequencyDown()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private frequencyUp()V
    .locals 3

    .prologue
    .line 587
    const-string v0, "FMRadioMain"

    const-string v1, "+frequencyUp()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 589
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 590
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 591
    const-string v0, "FMRadioMain"

    const-string v1, "-frequencyUp()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private getMenuItemByResourceId(I)Landroid/view/MenuItem;
    .locals 3
    .parameter "pResourceId"

    .prologue
    .line 763
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+getMenuItemByResourceId() pResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 768
    :goto_0
    return-object v0

    .line 767
    :cond_0
    const-string v0, "FMRadioMain"

    const-string v1, "-getMenuItemByResourceId()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getPresetsCount()I
    .locals 5

    .prologue
    .line 1273
    const-string v2, "FMRadioMain"

    const-string v3, "+getPresetsCount()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const/4 v1, 0x0

    .line 1275
    .local v1, tCount:I
    invoke-static {p0}, Lcom/htc/fm/ui/helper/PresetsHelper;->getCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 1276
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1277
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1278
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1279
    const/4 v0, 0x0

    .line 1281
    :cond_0
    const-string v2, "FMRadioMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-getPresetsCount() count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    return v1
.end method

.method private hideNoChannelFoundDialog()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const-string v0, "FMRadioMain"

    const-string v1, "hideNoChannelFoundDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->hide()V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1244
    :cond_1
    return-void
.end method

.method private hideNoHeadsetDialog()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    const-string v0, "FMRadioMain"

    const-string v1, "hideNoHeadsetDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->hide()V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1084
    :cond_1
    return-void
.end method

.method private hidePowerOffDialog()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    const-string v0, "FMRadioMain"

    const-string v1, "hidePowerOffDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1132
    :cond_1
    return-void
.end method

.method private hidePowerOnDialog()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const-string v0, "FMRadioMain"

    const-string v1, "hidePowerOnDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1108
    :cond_1
    return-void
.end method

.method private hideScanConfirmDialog()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const-string v0, "FMRadioMain"

    const-string v1, "hideScanConfirmDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->hide()V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1184
    :cond_1
    return-void
.end method

.method private hideScanningDialog()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "FMRadioMain"

    const-string v1, "hideScanningDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1220
    :cond_1
    return-void
.end method

.method private hideSeekDialog()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    const-string v0, "FMRadioMain"

    const-string v1, "hideSeekDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1155
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const v11, 0x3f19999a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 452
    const-string v3, "FMRadioMain"

    const-string v4, "+initViews()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBackground:Landroid/widget/ImageView;

    .line 454
    const v3, 0x7f05001a

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mCoverPanel:Landroid/widget/ImageView;

    .line 456
    const v3, 0x7f05001f

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    .line 457
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    const-string v4, "common_b_transport_middle_outer"

    const v5, 0x2080011

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_transport_middle_pressed"

    const v6, 0x2080012

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_transport_middle_rest"

    const v7, 0x2080013

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 461
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    const v4, 0x20800bc

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setIconResource(I)V

    .line 462
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneUpRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setRepeatListener(Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;J)V

    .line 464
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setFastEnabled(Z)V

    .line 466
    const v3, 0x7f05001c

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    .line 467
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    const-string v4, "common_b_transport_middle_outer"

    const v5, 0x2080011

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_transport_middle_pressed"

    const v6, 0x2080012

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_transport_middle_rest"

    const v7, 0x2080013

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 471
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setIconResource(I)V

    .line 472
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnTuneDownRepeatListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setRepeatListener(Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;J)V

    .line 474
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setFastEnabled(Z)V

    .line 476
    const v3, 0x7f050014

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/MirrorFace;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    .line 477
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    invoke-virtual {v3, v10, v8, v8}, Lcom/htc/fm/ui/widget/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 478
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    invoke-virtual {v3, v9, v8, v8}, Lcom/htc/fm/ui/widget/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 479
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v8}, Lcom/htc/fm/ui/widget/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 480
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8, v8}, Lcom/htc/fm/ui/widget/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 481
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v3, v9, v4}, Lcom/htc/fm/ui/widget/MirrorFace;->OnCreate(ZI)V

    .line 483
    const v3, 0x7f05000f

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/FreqRollBar;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    .line 484
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-virtual {v3, v10, v8, v11}, Lcom/htc/fm/ui/widget/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 485
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-virtual {v3, v9, v8, v11}, Lcom/htc/fm/ui/widget/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 486
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v11}, Lcom/htc/fm/ui/widget/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 487
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8, v11}, Lcom/htc/fm/ui/widget/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 488
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v3, v9, v4}, Lcom/htc/fm/ui/widget/FreqRollBar;->OnCreate(ZI)V

    .line 489
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setHandler(Landroid/os/Handler;)V

    .line 490
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mRollBar:Lcom/htc/fm/ui/widget/FreqRollBar;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setMirror(Lcom/htc/fm/ui/widget/MirrorFace;)V

    .line 492
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mChannelName:Landroid/widget/TextView;

    .line 494
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/FMSeekBar;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

    .line 495
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

    invoke-virtual {v3, p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->setTouchListener(Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;)V

    .line 496
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/widget/FMSeekBar;->setFreq(I)V

    .line 498
    const v3, 0x7f050019

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/ui/widget/SignalBar;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

    .line 499
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

    invoke-virtual {v3, v10}, Lcom/htc/fm/ui/widget/SignalBar;->setFocusable(Z)V

    .line 501
    const v3, 0x7f05001d

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    .line 502
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_b_transport_outer"

    const v5, 0x2080014

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_transport_pressed"

    const v6, 0x2080015

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_transport_rest"

    const v7, 0x2080016

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 506
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 507
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 509
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 511
    const v3, 0x7f05001e

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    .line 512
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_b_transport_outer"

    const v5, 0x2080014

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_transport_pressed"

    const v6, 0x2080015

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_transport_rest"

    const v7, 0x2080016

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 516
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020024

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 517
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 519
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 521
    sget-boolean v3, Lcom/htc/fm/activity/FMRadioMain;->JAPAN_BAND:Z

    if-eqz v3, :cond_0

    .line 522
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 523
    .local v2, tTunerNumberView:Landroid/widget/ImageView;
    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/ui/widget/FMSeekBar;

    .line 526
    .local v1, tSeekBar:Lcom/htc/fm/ui/widget/FMSeekBar;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 528
    invoke-virtual {v1, v0}, Lcom/htc/fm/ui/widget/FMSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/fm/ui/widget/FMSeekBar;->setLength(I)V

    .line 532
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #tSeekBar:Lcom/htc/fm/ui/widget/FMSeekBar;
    .end local v2           #tTunerNumberView:Landroid/widget/ImageView;
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    .line 533
    const-string v3, "FMRadioMain"

    const-string v4, "-initViews()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private isOnAirplane()Z
    .locals 2

    .prologue
    .line 1260
    const-string v0, "FMRadioMain"

    const-string v1, "isOnAirplane()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private lockUi(Z)V
    .locals 12
    .parameter "pIsLock"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1017
    const-string v7, "FMRadioMain"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+lockUi() isLock: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnBack:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    if-nez p1, :cond_7

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setEnabled(Z)V

    .line 1019
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnNext:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    if-nez p1, :cond_8

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setEnabled(Z)V

    .line 1020
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekBack:Lcom/htc/widget/HtcRimImageButton;

    if-nez p1, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1021
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mBtnSeekNext:Lcom/htc/widget/HtcRimImageButton;

    if-nez p1, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1022
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

    if-nez p1, :cond_b

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Lcom/htc/fm/ui/widget/FMSeekBar;->setEnabled(Z)V

    .line 1023
    iget-object v10, p0, Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

    if-nez p1, :cond_c

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Lcom/htc/fm/ui/widget/SignalBar;->setEnabled(Z)V

    .line 1024
    iget-object v7, p0, Lcom/htc/fm/activity/FMRadioMain;->mSignalBar:Lcom/htc/fm/ui/widget/SignalBar;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Lcom/htc/fm/ui/widget/SignalBar;->setRssi(I)V

    .line 1025
    const v7, 0x7f05002c

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1026
    .local v2, tPresetMenuItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 1027
    if-nez p1, :cond_d

    move v7, v8

    :goto_6
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1029
    :cond_0
    const v7, 0x7f05002b

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1030
    .local v4, tSoundHoundMenuItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_1

    .line 1031
    if-nez p1, :cond_e

    move v7, v8

    :goto_7
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1033
    :cond_1
    const v7, 0x7f05002e

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1034
    .local v0, tAddMenuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1035
    if-nez p1, :cond_f

    move v7, v8

    :goto_8
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1037
    :cond_2
    const v7, 0x7f05002f

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1038
    .local v1, tMuteMenuItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 1039
    if-nez p1, :cond_10

    move v7, v8

    :goto_9
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1041
    :cond_3
    const v7, 0x7f050032

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1042
    .local v3, tScanSaveMenuItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_4

    .line 1043
    if-nez p1, :cond_11

    move v7, v8

    :goto_a
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1045
    :cond_4
    const v7, 0x7f050031

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1046
    .local v5, tSpeakerMenuItem:Landroid/view/MenuItem;
    if-eqz v5, :cond_5

    .line 1047
    if-nez p1, :cond_12

    move v7, v8

    :goto_b
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1049
    :cond_5
    const v7, 0x7f050030

    invoke-direct {p0, v7}, Lcom/htc/fm/activity/FMRadioMain;->getMenuItemByResourceId(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1050
    .local v6, tStereoMenuItem:Landroid/view/MenuItem;
    if-eqz v6, :cond_6

    .line 1051
    if-nez p1, :cond_13

    :goto_c
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1053
    :cond_6
    const-string v7, "FMRadioMain"

    const-string v8, "-lockUi()"

    invoke-static {v7, v8}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void

    .end local v0           #tAddMenuItem:Landroid/view/MenuItem;
    .end local v1           #tMuteMenuItem:Landroid/view/MenuItem;
    .end local v2           #tPresetMenuItem:Landroid/view/MenuItem;
    .end local v3           #tScanSaveMenuItem:Landroid/view/MenuItem;
    .end local v4           #tSoundHoundMenuItem:Landroid/view/MenuItem;
    .end local v5           #tSpeakerMenuItem:Landroid/view/MenuItem;
    .end local v6           #tStereoMenuItem:Landroid/view/MenuItem;
    :cond_7
    move v7, v9

    .line 1018
    goto/16 :goto_0

    :cond_8
    move v7, v9

    .line 1019
    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 1020
    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 1021
    goto/16 :goto_3

    :cond_b
    move v7, v9

    .line 1022
    goto/16 :goto_4

    :cond_c
    move v7, v9

    .line 1023
    goto/16 :goto_5

    .restart local v2       #tPresetMenuItem:Landroid/view/MenuItem;
    :cond_d
    move v7, v9

    .line 1027
    goto :goto_6

    .restart local v4       #tSoundHoundMenuItem:Landroid/view/MenuItem;
    :cond_e
    move v7, v9

    .line 1031
    goto :goto_7

    .restart local v0       #tAddMenuItem:Landroid/view/MenuItem;
    :cond_f
    move v7, v9

    .line 1035
    goto :goto_8

    .restart local v1       #tMuteMenuItem:Landroid/view/MenuItem;
    :cond_10
    move v7, v9

    .line 1039
    goto :goto_9

    .restart local v3       #tScanSaveMenuItem:Landroid/view/MenuItem;
    :cond_11
    move v7, v9

    .line 1043
    goto :goto_a

    .restart local v5       #tSpeakerMenuItem:Landroid/view/MenuItem;
    :cond_12
    move v7, v9

    .line 1047
    goto :goto_b

    .restart local v6       #tStereoMenuItem:Landroid/view/MenuItem;
    :cond_13
    move v8, v9

    .line 1051
    goto :goto_c
.end method

.method private scanning()V
    .locals 3

    .prologue
    .line 772
    const-string v0, "FMRadioMain"

    const-string v1, "+scanning()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsScanFinish:Z

    .line 774
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showScanningDialog()V

    .line 775
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 776
    const-string v0, "FMRadioMain"

    const-string v1, "-scanning()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method private setActionBar()V
    .locals 6

    .prologue
    .line 434
    const-string v4, "FMRadioMain"

    const-string v5, "+setActionBar()"

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 436
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 437
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v1, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 439
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v1, :cond_0

    .line 441
    new-instance v3, Lcom/htc/widget/ActionBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 442
    .local v3, titleView:Lcom/htc/widget/ActionBarText;
    const v4, 0x7f040012

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 444
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 445
    .local v2, actionContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 448
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v2           #actionContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v3           #titleView:Lcom/htc/widget/ActionBarText;
    :cond_0
    const-string v4, "FMRadioMain"

    const-string v5, "-setActionBar()"

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private showMessage(I)V
    .locals 3
    .parameter "pStringId"

    .prologue
    .line 631
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+showMessage() pStringId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(Ljava/lang/String;)V

    .line 633
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-showMessage() pStringId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "pMsg"

    .prologue
    .line 637
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+showMessage() pMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_1
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-showMessage() pMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  showMessage() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private showNoChannelFoundDialog()V
    .locals 3

    .prologue
    .line 1223
    const-string v0, "FMRadioMain"

    const-string v1, "+showNoChannelFoundDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/htc/fm/activity/FMRadioMain$16;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioMain$16;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoChannelFoundDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1232
    const-string v0, "FMRadioMain"

    const-string v1, "-showNoChannelFoundDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private showPowerOffDialog()V
    .locals 3

    .prologue
    .line 1111
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+showPowerOffDialog() mIsVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_1

    .line 1114
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1115
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1117
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOffDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1120
    const-string v0, "FMRadioMain"

    const-string v1, "-showPowerOffDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showPowerOnDialog()V
    .locals 3

    .prologue
    .line 1087
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+showPowerOnDialog() mIsVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_1

    .line 1090
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1091
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1093
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mPowerOnDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1096
    const-string v0, "FMRadioMain"

    const-string v1, "-showPowerOnDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showScanConfirmDialog()V
    .locals 3

    .prologue
    .line 1158
    const-string v0, "FMRadioMain"

    const-string v1, "+showScanConfirmDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/htc/fm/activity/FMRadioMain$13;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioMain$13;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/htc/fm/activity/FMRadioMain$12;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioMain$12;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1172
    const-string v0, "FMRadioMain"

    const-string v1, "-showScanConfirmDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private showScanningDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1187
    const-string v0, "FMRadioMain"

    const-string v1, "+showScanningDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1190
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1191
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1193
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1194
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/activity/FMRadioMain$14;

    invoke-direct {v3, p0}, Lcom/htc/fm/activity/FMRadioMain$14;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/fm/activity/FMRadioMain$15;

    invoke-direct {v1, p0}, Lcom/htc/fm/activity/FMRadioMain$15;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1208
    const-string v0, "FMRadioMain"

    const-string v1, "-showScanningDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method private showSeekDialog()V
    .locals 3

    .prologue
    .line 1135
    const-string v0, "FMRadioMain"

    const-string v1, "+showSeekDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1138
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1140
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1143
    const-string v0, "FMRadioMain"

    const-string v1, "-showSeekDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method private startPresetsActivity()V
    .locals 3

    .prologue
    .line 1265
    const-string v1, "FMRadioMain"

    const-string v2, "+startPresetsActivity()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "freq"

    iget v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1269
    const-string v1, "FMRadioMain"

    const-string v2, "-startPresetsActivity()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method private turnOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 405
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+turnOn() FreqUtils.FREQUENCY_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const v0, 0x128e0

    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    invoke-virtual {v0, v3, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 411
    :goto_0
    const-string v0, "FMRadioMain"

    const-string v1, "-turnOn()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    goto :goto_0
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 995
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+updateTitle() title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    const-string v0, "FMRadioMain"

    const-string v1, "-updateTitle()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1247
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+onActivityResult() intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    if-eqz p3, :cond_0

    .line 1249
    const-string v1, "freq"

    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1250
    .local v0, tFrequency:I
    iget v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    if-eq v0, v1, :cond_0

    .line 1251
    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 1252
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 1255
    .end local v0           #tFrequency:I
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->getRDS()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->updateTitle(Ljava/lang/String;)V

    .line 1256
    const-string v1, "FMRadioMain"

    const-string v2, "-onActivityResult()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 225
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onConfigurationChanged() orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setContentView(I)V

    .line 230
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->initViews()V

    .line 232
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V

    .line 234
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 235
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 236
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->getRDS()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->updateTitle(Ljava/lang/String;)V

    .line 238
    const-string v0, "FMRadioMain"

    const-string v1, "-onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 136
    const-string v0, "FMRadioMain"

    const-string v1, "+onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x2080001

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 141
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setVolumeControlStream(I)V

    .line 143
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    sget-object v1, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/activity/FMRadioMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    const/4 v1, -0x1

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 147
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->setActionBar()V

    .line 151
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->initViews()V

    .line 153
    const-string v0, "FMRadioMain"

    const-string v1, "-onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 416
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+onCreateDialog() id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, tDialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    const-string v1, "FMRadioMain"

    const-string v2, "-onCreateDialog()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v0

    .line 420
    :pswitch_0
    const-string v1, "FMRadioMain"

    const-string v2, "  onCreateDialog() DIALOG_ON_AIRPLANE"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040023

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/htc/fm/activity/FMRadioMain$2;

    invoke-direct {v3, p0}, Lcom/htc/fm/activity/FMRadioMain$2;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 243
    const-string v3, "FMRadioMain"

    const-string v4, "+onCreateOptionsMenu()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 246
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 247
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0b

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mMenu:Landroid/view/Menu;

    .line 251
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    .line 252
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v4, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v5, "htc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v4, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v3}, Lcom/htc/fm/utils/DeviceUtils;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    .line 256
    const-string v3, "FMRadioMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  onCreateOptionsMenu() SupportSoundHound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    if-nez v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v4, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v3}, Lcom/htc/fm/utils/DeviceUtils;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v3}, Lcom/htc/fm/utils/DeviceUtils;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    .line 263
    const-string v3, "FMRadioMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  onCreateOptionsMenu() SupportSoundHound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const v3, 0x7f05002b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 266
    .local v2, tSoundHound:Landroid/view/MenuItem;
    const v3, 0x7f05002c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 267
    .local v1, tPresets:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mSupportSoundHound:Z

    if-eqz v3, :cond_1

    .line 268
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 273
    :cond_1
    const-string v3, "FMRadioMain"

    const-string v4, "-onCreateOptionsMenu()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v6
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "FMRadioMain"

    const-string v1, "+onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideNoHeadsetDialog()V

    .line 215
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hidePowerOffDialog()V

    .line 216
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hidePowerOnDialog()V

    .line 217
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideScanningDialog()V

    .line 218
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->hideSeekDialog()V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    const-string v0, "FMRadioMain"

    const-string v1, "-onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    const-string v3, "FMRadioMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+onOptionsItemSelected() mIsRivaLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsRivaLocked:Z

    if-eqz v3, :cond_0

    .line 321
    const-string v1, "FMRadioMain"

    const-string v2, "-onOptionsItemSelected()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 401
    :goto_0
    return v1

    .line 324
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 400
    :cond_1
    :goto_1
    const-string v1, "FMRadioMain"

    const-string v2, "-onOptionsItemSelected()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 326
    :pswitch_0
    const-string v3, "FMRadioMain"

    const-string v4, "  onOptionsItemSelected() OPTION_POWER"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->showDialog(I)V

    goto :goto_1

    .line 330
    :cond_2
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    if-eqz v3, :cond_4

    .line 331
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    if-eqz v3, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showPowerOffDialog()V

    .line 333
    iput-boolean v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOffPressed:Z

    .line 334
    iput-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    .line 335
    invoke-direct {p0, v2}, Lcom/htc/fm/activity/FMRadioMain;->enableControls(Z)V

    .line 336
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showPowerOnDialog()V

    .line 339
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->turnOn()V

    goto :goto_1

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->showNoHeadsetDialog()V

    goto :goto_1

    .line 347
    :pswitch_1
    const-string v1, "FMRadioMain"

    const-string v2, "  onOptionsItemSelected() OPTION_ADD"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 349
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/fm/ui/helper/PresetsHelper;->startAddPreset(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 352
    .end local v0           #data:Landroid/net/Uri;
    :pswitch_2
    const-string v2, "FMRadioMain"

    const-string v3, "  onOptionsItemSelected() OPTION_PRESETS"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->getPresetsCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 354
    iput-boolean v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPresetsPressed:Z

    .line 355
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->scanning()V

    goto :goto_1

    .line 357
    :cond_5
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->startPresetsActivity()V

    goto/16 :goto_1

    .line 361
    :pswitch_3
    const-string v3, "FMRadioMain"

    const-string v4, "  onOptionsItemSelected() OPTION_MUTE"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    if-eqz v3, :cond_6

    .line 363
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 364
    const v3, 0x7f040015

    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    .line 369
    :goto_2
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    if-nez v3, :cond_7

    :goto_3
    iput-boolean v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    goto/16 :goto_1

    .line 366
    :cond_6
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 367
    const v3, 0x204036d

    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 369
    goto :goto_3

    .line 372
    :pswitch_4
    const-string v3, "FMRadioMain"

    const-string v4, "  onOptionsItemSelected() OPTION_STEREO"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    if-eqz v3, :cond_8

    .line 374
    const v3, 0x7f040017

    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    .line 378
    :goto_4
    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    if-nez v3, :cond_9

    :goto_5
    iput-boolean v1, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    .line 379
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    goto/16 :goto_1

    .line 376
    :cond_8
    const v3, 0x7f040016

    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    goto :goto_4

    :cond_9
    move v1, v2

    .line 378
    goto :goto_5

    .line 382
    :pswitch_5
    const-string v1, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onOptionsItemSelected() OPTION_SPEAKER isSpeaker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isSpeaker()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isSpeaker()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 384
    const v1, 0x7f04001d

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    .line 388
    :goto_6
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    goto/16 :goto_1

    .line 386
    :cond_a
    const v1, 0x7f04001c

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->showMessage(I)V

    goto :goto_6

    .line 391
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->showScanConfirmDialog()V

    goto/16 :goto_1

    .line 394
    :pswitch_7
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioMain;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x7f05002b
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 200
    const-string v0, "FMRadioMain"

    const-string v1, "+onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    .line 203
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isForeground(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPreviousForeground:Z

    .line 204
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  foreground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsPreviousForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    const/4 v1, -0x1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 207
    const-string v0, "FMRadioMain"

    const-string v1, "-onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const v6, 0x7f050031

    const v5, 0x7f050030

    const v4, 0x7f05002f

    .line 279
    const-string v0, "FMRadioMain"

    const-string v2, "+onPrepareOptionsMenu()"

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const v0, 0x7f05002c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 282
    const v0, 0x7f05002e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isMuteItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 284
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 285
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    const v0, 0x7f050032

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 287
    const v0, 0x7f05002b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsTurnOn:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 289
    const-string v0, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onPrepareOptionsMenu() isMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsMute:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isMuteItemEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f040015

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 297
    :goto_1
    const-string v0, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onPrepareOptionsMenu() isStereo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->isStereo:Z

    if-eqz v0, :cond_3

    .line 300
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f040017

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 305
    :goto_2
    const-string v0, "FMRadioMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onPrepareOptionsMenu() isSpeaker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isSpeaker()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->isSpeaker()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f04001b

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 313
    :goto_3
    const-string v0, "FMRadioMain"

    const-string v2, "-onPrepareOptionsMenu()"

    invoke-static {v0, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return v1

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 294
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x204036d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 302
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f040016

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 310
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f04001a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onProgressChanged(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 724
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onProgressChanged() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/activity/FMRadioMain;->changeRollBarValue(IZ)V

    .line 726
    const-string v0, "FMRadioMain"

    const-string v1, "-onProgressChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 158
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onResume() isOnAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioMain;->isOnAirplane()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isHeadsetPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsVisible:Z

    .line 161
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mIsHeadsetPlugged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mHasInitial:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioMain;->showNoHeadsetDialog()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    const/4 v1, -0x1

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 166
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/fm/activity/FMRadioMain$1;

    invoke-direct {v1, p0}, Lcom/htc/fm/activity/FMRadioMain$1;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 195
    const-string v0, "FMRadioMain"

    const-string v1, "-onResume()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onStartTrackingTouch(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 717
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onStartTrackingTouch() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->changeRollBarValue(I)V

    .line 719
    const-string v0, "FMRadioMain"

    const-string v1, "-onStartTrackingTouch()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 731
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onStopTrackingTouch() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, p1}, Lcom/htc/fm/activity/FMRadioMain;->setFreq(I)V

    .line 733
    iget v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/fm/activity/FMRadioMain;->showFreq(IZZ)V

    .line 734
    iget-boolean v0, p0, Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;

    iget v1, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 736
    iput-boolean v3, p0, Lcom/htc/fm/activity/FMRadioMain;->isTuning:Z

    .line 738
    :cond_0
    const-string v0, "FMRadioMain"

    const-string v1, "-onStopTrackingTouch()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public setFreq(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 650
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setFreq() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iput p1, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 653
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-le v0, p1, :cond_1

    .line 654
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    .line 659
    :cond_0
    :goto_0
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  setFreq() mCurrentFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->getRDS()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioMain;->updateTitle(Ljava/lang/String;)V

    .line 662
    const-string v0, "FMRadioMain"

    const-string v1, "-setFreq()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void

    .line 655
    :cond_1
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    if-ge v0, p1, :cond_0

    .line 656
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    iput v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mCurrentFrequency:I

    goto :goto_0

    .line 661
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public showFreq(IZZ)V
    .locals 3
    .parameter "pFreq"
    .parameter "pUseAnimation"
    .parameter "pSetSeekBar"

    .prologue
    .line 666
    const-string v0, "FMRadioMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+showFreq() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/activity/FMRadioMain;->changeRollBarValue(IZ)V

    .line 668
    if-eqz p3, :cond_0

    .line 669
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mSeekbar:Lcom/htc/fm/ui/widget/FMSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/fm/ui/widget/FMSeekBar;->setFreq(I)V

    .line 671
    :cond_0
    const-string v0, "FMRadioMain"

    const-string v1, "-showFreq()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public showNoHeadsetDialog()V
    .locals 3

    .prologue
    .line 1057
    const-string v0, "FMRadioMain"

    const-string v1, "+showNoHeadsetDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1062
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040020

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/htc/fm/activity/FMRadioMain$11;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioMain$11;-><init>(Lcom/htc/fm/activity/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1071
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain;->mNoHeadsetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1072
    const-string v0, "FMRadioMain"

    const-string v1, "-showNoHeadsetDialog()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    return-void
.end method
