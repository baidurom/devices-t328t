.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$PMSInternalAPI;,
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$BrightnessState;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$DumpLockRecordTask;,
        Lcom/android/server/PowerManagerService$LockRecordList;,
        Lcom/android/server/PowerManagerService$WakeLockRecord;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field static ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z = false

.field static ANIMATE_SCREEN_LIGHTS:Z = false

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0xf

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x28

.field private static final AUTO_BRIGHTNESS_ALG_DEFAULT:I = 0x0

.field private static final AUTO_BRIGHTNESS_ALG_TAO:I = 0x1

.field private static final AUTO_BRIGHTNESS_ALG_TPE:I = 0x2

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field private static final DEBUG_ON:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEBUG_SEND_NOTIFICATION:Z = false

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DUMP_LOCK_INTERVAL:J = 0x927c0L

.field private static final EXTEND_LONGEST_KEYLIGHT_DELAY:I = 0xea60

.field private static final EXTEND_LONG_KEYLIGHT_DELAY:I = 0x7530

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0x7d0

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x7f

.field private static final LOG_PARTIAL_WL:Z = false

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final MAX_WAKE_LOCK_RECORD:I = 0x32

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field public static final PEN_BUTTON_AMBER:I = 0x1

.field public static final PEN_BUTTON_BLUE:I = 0x4

.field public static final PEN_BUTTON_GREEN:I = 0x2

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x1f4

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SENSE_VERSION_FOR_DESKDOCK_DIM_BEHAVIOR:F = 3.5f

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static htcDVCSWakeLockCount:I

.field private static final mDebugLightSensor:Z

.field private static final mDebugProximitySensor:Z

.field private static mHasButtonOrientation:Z

.field private static mHasPenMenuButton:Z

.field private static mHtcPMSExtension:Lcom/android/server/HtcPMSExtension;

.field private static mSpew:Z

.field private static mbEnableDeskDockBehavior:Z

.field private static mbExtendTimeOut:Z

.field private static previous_lcdvalue:I

.field private static previous_lsvalue:I


# instance fields
.field private final EnableWakeLockRecord:Z

.field private final IS_AMOLED:Z

.field private final MY_PID:I

.field private final MY_UID:I

.field private final SCREEN_BRIGHT_ANIMATION_MININUM_INIT_VALUE:I

.field private final SCREEN_BRIGHT_ANIMATION_MININUM_TARGET_VALUE:I

.field private holiday_qwerty_color:Ljava/lang/String;

.field private mActivityService:Landroid/app/IActivityManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessAlgorithm:I

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessOffset:I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mClearScreenTimeoutTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCpuPerfCount:I

.field private mDelayInterval:I

.field private mDeskModeEnabled:Z

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mDumpLockRecordHandler:Landroid/os/Handler;

.field private final mDumpLockRecordTask:Lcom/android/server/PowerManagerService$DumpLockRecordTask;

.field private mFacebookBacklightValues:[I

.field private mFacebookBreathBrightnessValues:[I

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighestLightSensorValue:I

.field private mHtcAutoBrightnessCtrl:Lcom/android/server/HtcAutoBrightnessCtrl;

.field private mHtcLocationAwareWifi:Lcom/android/server/HtcLocationAwareWifi;

.field private mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;

.field private volatile mInitComplete:Z

.field private mInitialized:Z

.field private mIsDocked:Z

.field private mIsPowered:Z

.field private mIsScreenOnAnimatingDone:Z

.field private mIsUserActivityScreenDelay:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

.field private mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

.field private mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

.field private mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdBacklightValuesDown:[I

.field private mLcdBacklightValuesUp:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorButtonBrightness:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private mLockRecordList:Lcom/android/server/PowerManagerService$LockRecordList;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mMaximumScreenOffTimeout:I

.field private mNextTimeout:J

.field private mNightMode:Z

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mPartialCount:I

.field private mPenButtonLed:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPortraitAmberLed:Lcom/android/server/LightsService$Light;

.field private mPortraitBlueLed:Lcom/android/server/LightsService$Light;

.field private mPortraitButtonLight:Lcom/android/server/LightsService$Light;

.field private mPortraitGreenLed:Lcom/android/server/LightsService$Light;

.field private mPowerSaverHandler:Landroid/os/Handler;

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private mRebootHandler:Landroid/os/Handler;

.field private mRebootThread:Landroid/os/HandlerThread;

.field private final mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessOverride:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffDelayForDeskDock:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffThread:Landroid/os/HandlerThread;

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mSharekeyBacklight:Lcom/android/server/LightsService$Light;

.field private mSharekeyBreathLight:Lcom/android/server/LightsService$Light;

.field private mShortKeylightDelay:I

.field private mSkippedScreenOn:Z

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field mUnplugTurnsOnScreen:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J

.field private runHtcPowerSaverCheck:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/16 v5, 0x21

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    sput-boolean v2, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    .line 172
    sput-boolean v1, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    .line 232
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xab

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/PowerManagerService;->mHasButtonOrientation:Z

    .line 242
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xab

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/PowerManagerService;->mHasPenMenuButton:Z

    .line 360
    sput-boolean v1, Lcom/android/server/PowerManagerService;->mSpew:Z

    .line 361
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    sput-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    .line 362
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    sput-boolean v0, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    .line 365
    sput v4, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    .line 366
    sput v4, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    .line 372
    sput v1, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    .line 378
    sput-boolean v1, Lcom/android/server/PowerManagerService;->mbEnableDeskDockBehavior:Z

    .line 4710
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_4

    :goto_2
    sput-boolean v2, Lcom/android/server/PowerManagerService;->mbExtendTimeOut:Z

    return-void

    :cond_2
    move v0, v1

    .line 232
    goto :goto_0

    :cond_3
    move v0, v1

    .line 242
    goto :goto_1

    :cond_4
    move v2, v1

    .line 4710
    goto :goto_2
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 689
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 137
    const/16 v4, 0x1770

    iput v4, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 168
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 188
    const-string v4, "ro.qwerty_color"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->holiday_qwerty_color:Ljava/lang/String;

    .line 189
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 191
    iput v3, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 192
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 193
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 194
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 195
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 197
    iput v3, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 198
    iput v3, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    .line 204
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 206
    iput v3, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 207
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 209
    iput v6, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 212
    const v4, 0x7fffffff

    iput v4, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 217
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 220
    new-instance v4, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v4, p0, v7}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 268
    new-instance v4, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v4, p0, v7}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 272
    new-instance v4, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 275
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 283
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 284
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 285
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 286
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 288
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 289
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 290
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 291
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 292
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 293
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 295
    iput v3, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 296
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 302
    iput v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 303
    iput v6, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 311
    iput v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAlgorithm:I

    .line 320
    const/16 v4, 0x10

    iput v4, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 324
    iput v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessOffset:I

    .line 330
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    .line 336
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->EnableWakeLockRecord:Z

    .line 337
    new-instance v4, Lcom/android/server/PowerManagerService$LockRecordList;

    invoke-direct {v4, p0, v7}, Lcom/android/server/PowerManagerService$LockRecordList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mLockRecordList:Lcom/android/server/PowerManagerService$LockRecordList;

    .line 340
    new-instance v4, Lcom/android/server/PowerManagerService$DumpLockRecordTask;

    invoke-direct {v4, p0, v7}, Lcom/android/server/PowerManagerService$DumpLockRecordTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mDumpLockRecordTask:Lcom/android/server/PowerManagerService$DumpLockRecordTask;

    .line 385
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z

    .line 397
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    .line 407
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->IS_AMOLED:Z

    .line 444
    new-instance v2, Lcom/android/server/PowerManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    .line 2031
    new-instance v2, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 2046
    new-instance v2, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 2129
    new-instance v2, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2140
    new-instance v2, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2300
    new-instance v2, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 3271
    new-instance v2, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    .line 3498
    new-instance v2, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 3512
    new-instance v2, Lcom/android/server/PowerManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 4503
    new-instance v2, Lcom/android/server/PowerManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$16;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 4549
    new-instance v2, Lcom/android/server/PowerManagerService$17;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$17;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 4599
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    .line 4656
    iput v3, p0, Lcom/android/server/PowerManagerService;->mOrientation:I

    .line 4797
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/PowerManagerService;->mDelayInterval:I

    .line 4828
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/server/PowerManagerService;->SCREEN_BRIGHT_ANIMATION_MININUM_INIT_VALUE:I

    .line 4829
    const/16 v2, 0x39

    iput v2, p0, Lcom/android/server/PowerManagerService;->SCREEN_BRIGHT_ANIMATION_MININUM_TARGET_VALUE:I

    .line 691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 692
    .local v0, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 693
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    const-wide/32 v4, 0x240c8400

    invoke-static {v4, v5}, Landroid/os/Power;->setLastUserActivityTimeout(J)I

    .line 700
    iput v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 703
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 704
    return-void

    .end local v0           #token:J
    :cond_1
    move v2, v3

    .line 407
    goto/16 :goto_0

    .line 192
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mbEnableDeskDockBehavior:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$2476(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$3300(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockRecordList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLockRecordList:Lcom/android/server/PowerManagerService$LockRecordList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDumpLockRecordHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcPowerSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDelayInterval:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$6202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$7302(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableCpuApDvcs(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method private acquireHtcDVCSWakeLockLocked(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 4728
    const-string v0, "HTC_DVCS_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4730
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-nez v0, :cond_0

    .line 4732
    invoke-static {}, Landroid/os/Power;->acquireCpuApDvcsWakeLock()V

    .line 4733
    const-string v0, "PowerManagerService"

    const-string v1, "acquireHtcDVCSWakeLockLocked: acquireCpuApDvcsWakeLock called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :cond_0
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    .line 4736
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireHtcDVCSWakeLockLocked: htcDVCSWakeLockCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    :cond_1
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    return v0
.end method

.method private adjustHtcScreenDelay()V
    .locals 3

    .prologue
    .line 4088
    const v0, 0x1b7740

    .line 4090
    .local v0, CUSTOMIZED_DIM:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->IS_AMOLED:Z

    if-eqz v1, :cond_0

    .line 4091
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v1, v2, :cond_0

    .line 4092
    const v1, 0x1b7740

    iget v2, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4093
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4099
    :cond_0
    return-void
.end method

.method private adjustHtcScreenTotalDelay(I)I
    .locals 3
    .parameter "totalDelay"

    .prologue
    const/4 v2, -0x1

    .line 4102
    move v0, p1

    .line 4104
    .local v0, adjTotalDelay:I
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v2, v1, :cond_0

    .line 4106
    const v0, 0x7fffffff

    .line 4112
    :cond_0
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mbEnableDeskDockBehavior:Z

    if-eqz v1, :cond_1

    .line 4115
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I

    if-eq v1, v2, :cond_1

    .line 4117
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I

    add-int/lit16 v0, v1, 0x1b58

    .line 4123
    :cond_1
    return v0
.end method

.method private applyButtonState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 3182
    const/4 v0, -0x1

    .line 3183
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3197
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3187
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 3188
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 3192
    :cond_2
    :goto_1
    if-lez v0, :cond_4

    .line 3193
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 3189
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 3190
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    goto :goto_1

    .line 3194
    :cond_4
    if-nez v0, :cond_0

    .line 3195
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 3202
    const/4 v0, -0x1

    .line 3203
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3219
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3207
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 3208
    const/4 v0, 0x0

    .line 3214
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 3215
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 3209
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 3210
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 3211
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 3212
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    goto :goto_1

    .line 3216
    :cond_5
    if-nez v0, :cond_0

    .line 3217
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2647
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1894
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1895
    return-void
.end method

.method private clearAutoBacklightState()V
    .locals 2

    .prologue
    .line 4491
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v0, :cond_0

    .line 4492
    const-string v0, "PowerManagerService"

    const-string v1, "Reset light animator."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    :cond_0
    sget-boolean v0, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v0, :cond_2

    .line 4499
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 4500
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 4502
    :cond_2
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4378
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v2, :cond_0

    .line 4379
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_3

    .line 4383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4385
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4386
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4387
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4388
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 4390
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4392
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4394
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_3

    .line 4395
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 4396
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v2, :cond_2

    .line 4397
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_3

    .line 4401
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 4405
    .end local v0           #identity:J
    :cond_3
    return-void

    .line 4392
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doAnimateScreenAutoBacklights(I)Z
    .locals 1
    .parameter "targetValue"

    .prologue
    .line 4831
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/android/server/PowerManagerService;->doAnimateScreenAutoBacklights(II)Z

    move-result v0

    return v0
.end method

.method private doAnimateScreenAutoBacklights(II)Z
    .locals 5
    .parameter "targetValue"
    .parameter "initValue"

    .prologue
    const/16 v2, 0x39

    .line 4848
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->haveToDoAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4850
    const/16 v3, 0x39

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 4851
    .local v1, backlightTarget:I
    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 4852
    .local v0, backlightInit:I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 4853
    move p2, v0

    .line 4857
    if-le p1, v2, :cond_1

    .line 4858
    :goto_0
    const/16 p2, 0x1e

    .line 4860
    .end local v0           #backlightInit:I
    .end local v1           #backlightTarget:I
    :goto_1
    if-le p1, p2, :cond_4

    .line 4862
    :goto_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-virtual {v2, p2}, Lcom/android/server/PowerManagerService$BrightnessState;->forceValueLocked(I)V

    .line 4865
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/16 v3, 0x28

    const/16 v4, 0xff

    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)Z

    move-result v2

    return v2

    .restart local v0       #backlightInit:I
    .restart local v1       #backlightTarget:I
    :cond_1
    move p1, v2

    .line 4857
    goto :goto_0

    .line 4854
    .end local v0           #backlightInit:I
    .end local v1           #backlightTarget:I
    :catch_0
    move-exception v3

    .line 4857
    if-le p1, v2, :cond_2

    .line 4858
    :goto_3
    const/16 p2, 0x1e

    .line 4859
    goto :goto_1

    :cond_2
    move p1, v2

    .line 4857
    goto :goto_3

    :catchall_0
    move-exception v3

    if-le p1, v2, :cond_3

    .line 4858
    :goto_4
    const/16 p2, 0x1e

    throw v3

    :cond_3
    move p1, v2

    .line 4857
    goto :goto_4

    :cond_4
    move p1, p2

    .line 4860
    goto :goto_2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3526
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3527
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 3528
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_0

    .line 3529
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3531
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3533
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 3534
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3535
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 3537
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 3538
    return-void

    .line 3527
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3537
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private enableCpuApDvcs(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 4769
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4770
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCpuApDvcs: enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", htcDVCSWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    if-eqz p1, :cond_2

    .line 4772
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-nez v0, :cond_0

    .line 4773
    invoke-static {}, Landroid/os/Power;->acquireCpuApDvcsWakeLock()V

    .line 4774
    const-string v0, "PowerManagerService"

    const-string v2, "enableCpuApDvcs: Power.acquireCpuApDvcsWakeLock() is called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_0
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    .line 4792
    :cond_1
    :goto_0
    monitor-exit v1

    .line 4793
    return-void

    .line 4778
    :cond_2
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    .line 4779
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-gtz v0, :cond_1

    .line 4781
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-nez v0, :cond_3

    .line 4782
    invoke-static {}, Landroid/os/Power;->releaseCpuApDvcsWakeLock()V

    .line 4783
    const-string v0, "PowerManagerService"

    const-string v2, "enableCpuApDvcs: Power.releaseCpuApDvcsWakeLock() is called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4785
    :cond_3
    :try_start_1
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCpuApDvcs: wrong DVCS count, htcDVCSWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    invoke-static {}, Landroid/os/Power;->releaseCpuApDvcsWakeLock()V

    .line 4788
    const-string v0, "PowerManagerService"

    const-string v2, "enableCpuApDvcs: Power.releaseCpuApDvcsWakeLock() is called by force!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    const/4 v0, 0x0

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private enableLightSensorLocked(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/high16 v5, -0x4080

    .line 4446
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v2, :cond_0

    .line 4447
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLightSensorLocked enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAutoBrightessEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v2, p1, :cond_2

    .line 4457
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 4460
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 4461
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4466
    .local v0, identity:J
    if-eqz p1, :cond_3

    .line 4467
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 4468
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 4469
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4472
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const v5, 0xf4240

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4479
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4482
    .end local v0           #identity:J
    :cond_2
    return-void

    .line 4475
    .restart local v0       #identity:J
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4476
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4479
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 4361
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v2, :cond_0

    .line 4362
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 4366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4368
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4370
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4375
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 4372
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 2282
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 2283
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :goto_0
    return-void

    .line 2295
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3255
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3257
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput-boolean v3, v1, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 3259
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3260
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 3262
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3263
    return-void
.end method

.method private getAutoBrightnessLevel(I)I
    .locals 2
    .parameter "sensorValue"

    .prologue
    .line 3472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3473
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    .line 3477
    :cond_0
    return v0

    .line 3472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 7
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3483
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3484
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    .line 3488
    :cond_0
    aget v2, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3494
    :goto_1
    return v2

    .line 3483
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3489
    :catch_0
    move-exception v0

    .line 3491
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(Line:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(Line:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    const/16 v2, 0xff

    goto :goto_1
.end method

.method private getCustomizedDelay(III)I
    .locals 1
    .parameter "totalDelay"
    .parameter "delay"
    .parameter "maxDelay"

    .prologue
    .line 3285
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p3, :cond_1

    .line 3287
    :cond_0
    sub-int p2, p3, p1

    .line 3289
    .end local p2
    :cond_1
    return p2
.end method

.method private getPreferredBrightness()I
    .locals 4

    .prologue
    .line 3166
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v2, :cond_0

    .line 3167
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 3177
    :goto_0
    return v2

    .line 3168
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v2, :cond_1

    .line 3170
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 3172
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 3175
    .local v0, brightness:I
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3176
    .end local v0           #brightness:I
    :catch_0
    move-exception v1

    .line 3177
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    goto :goto_0
.end method

.method private goToSleepLocked(JI)V
    .locals 9
    .parameter "time"
    .parameter "reason"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3898
    iget-wide v5, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_4

    .line 3899
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3901
    iput v7, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3902
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3903
    .local v0, N:I
    const/4 v2, 0x0

    .line 3904
    .local v2, numCleared:I
    const/4 v3, 0x0

    .line 3905
    .local v3, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3906
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3907
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3908
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v5, v5, 0x7f

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    const/4 v5, 0x4

    if-ne p3, v5, :cond_1

    .line 3910
    const/4 v3, 0x1

    .line 3905
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3912
    :cond_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v7, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 3913
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3917
    .end local v4           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    if-nez v3, :cond_3

    .line 3918
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 3919
    sget-boolean v5, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v5, :cond_3

    .line 3920
    const-string v5, "PowerManagerService"

    const-string v6, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_3
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3924
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 3925
    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3926
    invoke-direct {p0, v7, v7, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3927
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3929
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v3           #proxLock:Z
    :cond_4
    return-void
.end method

.method private haveToDoAnimating()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4837
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->IS_AMOLED:Z

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdf

    if-ne v1, v2, :cond_1

    .line 4841
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    .line 4843
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 1242
    and-int/lit8 v0, p1, 0x7f

    .line 1243
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3545
    return-void
.end method

.method private lightSensorChangedLocked(IZ)V
    .locals 13
    .parameter "value"
    .parameter "force"

    .prologue
    .line 3554
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_0

    .line 3555
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lightSensorChangedLocked "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    :cond_0
    iget v10, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2

    .line 3560
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_1

    .line 3561
    const-string v10, "PowerManagerService"

    const-string v11, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    :cond_1
    :goto_0
    return-void

    .line 3567
    :cond_2
    iget v10, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 3568
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_1

    .line 3569
    const-string v10, "PowerManagerService"

    const-string v11, "dropping lightSensorChangedLocked because screen is dim"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3575
    :cond_3
    iget v10, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    if-ge v10, p1, :cond_4

    .line 3576
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3582
    :cond_4
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v11, p1

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    if-eqz p2, :cond_1

    .line 3584
    :cond_5
    int-to-float v10, p1

    iput v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3585
    iget v10, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v10, v10, 0x10

    if-nez v10, :cond_1

    .line 3586
    const/4 v6, -0x1

    .line 3587
    .local v6, lcdValue:I
    const/4 v0, -0x1

    .line 3589
    .local v0, bl_tmp:I
    sget v10, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAlgorithm:I

    if-nez v10, :cond_13

    .line 3590
    :cond_6
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_7

    const-string v10, "PowerManagerService"

    const-string v11, "lightsensor first update or no algorithm"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_7
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v6

    .line 3626
    :goto_1
    iget v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessOffset:I

    sub-int/2addr v6, v10

    .line 3627
    const/16 v10, 0x14

    if-ge v6, v10, :cond_8

    const/16 v6, 0x14

    .line 3628
    :cond_8
    const/16 v10, 0xff

    if-le v6, v10, :cond_9

    const/16 v6, 0xff

    .line 3630
    :cond_9
    sput p1, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    .line 3631
    sput v6, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    .line 3634
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mHtcAutoBrightnessCtrl:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-virtual {v10, v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCtrlAutoBrightnessValue(I)I

    move-result v6

    .line 3637
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New lightsensor value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lcdValue:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 3641
    .local v2, buttonValue:I
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v10, :cond_20

    .line 3642
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v5

    .line 3648
    .local v5, keyboardValue:I
    :goto_2
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x10

    if-eq v10, v11, :cond_a

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x42

    if-ne v10, v11, :cond_21

    .line 3651
    :cond_a
    const/4 v4, -0x1

    .line 3652
    .local v4, facebookValue:I
    const/4 v3, -0x1

    .line 3662
    .local v3, facebookBreathValue:I
    :goto_3
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 3663
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 3664
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 3667
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    if-eqz v10, :cond_b

    .line 3668
    const/4 v2, 0x0

    .line 3673
    :cond_b
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_c

    .line 3674
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lcdValue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buttonValue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keyboardValue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_c
    const/4 v9, 0x0

    .line 3680
    .local v9, startAnimation:Z
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v10, :cond_d

    .line 3682
    sget-boolean v10, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v10, :cond_22

    .line 3683
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v10, v10, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v10, v10

    invoke-direct {p0, v6, v10}, Lcom/android/server/PowerManagerService;->doAnimateScreenAutoBacklights(II)Z

    move-result v9

    .line 3695
    :cond_d
    :goto_4
    iget v10, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v10, :cond_f

    .line 3714
    if-ltz v2, :cond_f

    .line 3716
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lightSensorChangedLocked, buttonValue >= 0, mPowerState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    iget v10, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_e

    .line 3718
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v10, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3720
    :cond_e
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mHasButtonOrientation:Z

    if-eqz v10, :cond_f

    .line 3721
    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setOrientationButton(I)V

    .line 3728
    :cond_f
    if-ltz v4, :cond_10

    .line 3729
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v10, v4}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3731
    :cond_10
    if-ltz v3, :cond_11

    .line 3732
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSharekeyBreathLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v10, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3734
    :cond_11
    iget v10, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v10, :cond_12

    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v10, :cond_1

    .line 3749
    :cond_12
    if-ltz v5, :cond_1

    .line 3751
    iget v10, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_1

    .line 3752
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v10, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_0

    .line 3593
    .end local v2           #buttonValue:I
    .end local v3           #facebookBreathValue:I
    .end local v4           #facebookValue:I
    .end local v5           #keyboardValue:I
    .end local v9           #startAnimation:Z
    :cond_13
    sget v10, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    if-gt v10, p1, :cond_16

    .line 3594
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_14

    const-string v10, "PowerManagerService"

    const-string v11, "lightsensor increasing"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_14
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesUp:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 3596
    sget v10, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    if-ge v0, v10, :cond_15

    sget v6, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    :goto_5
    goto/16 :goto_1

    :cond_15
    move v6, v0

    goto :goto_5

    .line 3599
    :cond_16
    sget v10, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    if-le v10, p1, :cond_1f

    .line 3600
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_17

    const-string v10, "PowerManagerService"

    const-string v11, "lightsensor decreasing"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :cond_17
    sget v10, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    invoke-direct {p0, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessLevel(I)I

    move-result v8

    .line 3602
    .local v8, old_level:I
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getAutoBrightnessLevel(I)I

    move-result v7

    .line 3603
    .local v7, new_level:I
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 3605
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_18

    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old_level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,new_level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_18
    iget v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAlgorithm:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1a

    sub-int v10, v8, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1a

    .line 3608
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_19

    const-string v10, "PowerManagerService"

    const-string v11, "auto backlight algorithm TPE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    :cond_19
    move v6, v0

    goto/16 :goto_1

    .line 3610
    :cond_1a
    iget v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAlgorithm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 3611
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_1b

    const-string v10, "PowerManagerService"

    const-string v11, "auto backlight algorithm TAO"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_1b
    sget v10, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    if-ge v0, v10, :cond_1c

    move v6, v0

    :goto_6
    goto/16 :goto_1

    :cond_1c
    sget v6, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    goto :goto_6

    .line 3617
    :cond_1d
    sget-boolean v10, Lcom/android/server/PowerManagerService;->mDebugLightSensor:Z

    if-eqz v10, :cond_1e

    const-string v10, "PowerManagerService"

    const-string v11, "No algorithm"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_1e
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v10}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v6

    goto/16 :goto_1

    .line 3621
    .end local v7           #new_level:I
    .end local v8           #old_level:I
    :cond_1f
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid lightsensor value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3644
    .restart local v2       #buttonValue:I
    :cond_20
    const/4 v5, 0x0

    .restart local v5       #keyboardValue:I
    goto/16 :goto_2

    .line 3659
    :cond_21
    const/4 v4, -0x1

    .line 3660
    .restart local v4       #facebookValue:I
    const/4 v3, -0x1

    .restart local v3       #facebookBreathValue:I
    goto/16 :goto_3

    .line 3687
    .restart local v9       #startAnimation:Z
    :cond_22
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v10, :cond_23

    const/4 v1, 0x1

    .line 3690
    .local v1, brightnessMode:I
    :goto_7
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v10, v6, v1}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto/16 :goto_4

    .line 3687
    .end local v1           #brightnessMode:I
    :cond_23
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1679
    sparse-switch p0, :sswitch_data_0

    .line 1694
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1682
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1684
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1686
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1688
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1690
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1692
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    goto :goto_0

    .line 1679
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 4408
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v0, :cond_0

    .line 4409
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_2

    .line 4412
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    :cond_1
    :goto_0
    return-void

    .line 4415
    :cond_2
    if-eqz p1, :cond_5

    .line 4416
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v0, :cond_3

    .line 4417
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 4421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 4424
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 4429
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 4430
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v0, :cond_6

    .line 4431
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_7

    .line 4435
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 4438
    :cond_7
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_1

    .line 4440
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private releaseHtcDVCSWakeLockLocked(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 4743
    const-string v0, "HTC_DVCS_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4745
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    .line 4746
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-lez v0, :cond_1

    .line 4748
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseHtcDVCSWakeLockLocked: htcDVCSWakeLockCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    :cond_0
    :goto_0
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    return v0

    .line 4750
    :cond_1
    sget v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    if-nez v0, :cond_2

    .line 4752
    invoke-static {}, Landroid/os/Power;->releaseCpuApDvcsWakeLock()V

    .line 4753
    const-string v0, "PowerManagerService"

    const-string v1, "releaseHtcDVCSWakeLockLocked: releaseCpuApDvcsWakeLock called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4757
    :cond_2
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong DVCS count: htcDVCSWakeLockCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    invoke-static {}, Landroid/os/Power;->releaseCpuApDvcsWakeLock()V

    .line 4760
    const/4 v0, 0x0

    sput v0, Lcom/android/server/PowerManagerService;->htcDVCSWakeLockCount:I

    goto :goto_0
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 9
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v5, 0x0

    .line 1516
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v8

    .line 1517
    .local v8, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v8, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1527
    :cond_0
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v0, :cond_1

    .line 1528
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_1
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v8, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1547
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->releaseHtcDVCSWakeLockLocked(Ljava/lang/String;)I

    .line 1550
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1551
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1552
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1553
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_2

    .line 1554
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1557
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mDebugProximitySensor:Z

    if-eqz v0, :cond_2

    .line 1558
    const-string v0, "PowerManagerService"

    const-string v1, "waiting for proximity sensor to go negative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_2
    :goto_1
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v8, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1561
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1565
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1567
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 1570
    :cond_5
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .line 1573
    :cond_6
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1574
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1575
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_2

    .line 1577
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_1

    .line 1580
    :cond_7
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 1581
    iget v0, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    .line 1582
    iget v0, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    if-nez v0, :cond_2

    .line 1583
    invoke-static {}, Landroid/os/Power;->releaseCpuPerfWakeLock()V

    goto :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2629
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2631
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2632
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2634
    .local v0, err:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    .line 2635
    const-string v1, "PowerManagerService"

    const-string v2, "screenOffFinishedAnimatingLocked: Skipped Screen On, no need notification."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_0
    :goto_0
    return v0

    .line 2639
    :cond_1
    if-nez v0, :cond_0

    .line 2640
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2641
    invoke-direct {p0, v6, p1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    goto :goto_0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 8
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v7, 0xaa7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1933
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    if-nez p1, :cond_2

    .line 1950
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 1954
    :cond_2
    const/4 v0, 0x0

    .line 1955
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_3

    .line 1956
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1958
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 1959
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1974
    if-ne v0, v6, :cond_5

    .line 1977
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 1978
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 1980
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 1981
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1982
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v6

    .line 1983
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1984
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1985
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1986
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1987
    const/4 v0, 0x0

    .line 1989
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 1990
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v3

    .line 1991
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1992
    const/4 v0, -0x1

    .line 1995
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1996
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2012
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    .line 2013
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2020
    :cond_7
    if-ltz v0, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2026
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2027
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1958
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 1980
    goto/16 :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 5
    .parameter "mask"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 2947
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    .line 2950
    .local v0, brightnessMode:I
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    .line 2956
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, p2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2958
    :cond_0
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    .line 2962
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p2, v3}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 2963
    .local v1, buttonValue:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    if-eqz v4, :cond_1

    move v1, v2

    .end local v1           #buttonValue:I
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2965
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    .line 2966
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2971
    :cond_3
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_4

    .line 2972
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2974
    :cond_4
    return-void

    .end local v0           #brightnessMode:I
    :cond_5
    move v0, v2

    .line 2947
    goto :goto_0

    .restart local v0       #brightnessMode:I
    :cond_6
    move v2, p2

    .line 2966
    goto :goto_1
.end method

.method private setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "showNow"

    .prologue
    .line 4662
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button light setOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4664
    iput p1, p0, Lcom/android/server/PowerManagerService;->mOrientation:I

    .line 4666
    :cond_0
    if-nez p2, :cond_2

    .line 4673
    :cond_1
    :goto_0
    return-void

    .line 4669
    :cond_2
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mHasButtonOrientation:Z

    if-eqz v0, :cond_1

    .line 4672
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setOrientationButton(I)V

    goto :goto_0
.end method

.method private setOrientationButton(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4680
    iget v0, p0, Lcom/android/server/PowerManagerService;->mOrientation:I

    .line 4681
    .local v0, nOrientation:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mManual:Z

    if-ne v3, v4, :cond_0

    .line 4682
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget v0, v4, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mOrientation:I

    .line 4686
    :cond_0
    if-ne v0, v3, :cond_1

    move v1, v2

    .line 4690
    .local v1, showPortrait:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 4691
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4692
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4701
    :goto_1
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/PowerManagerService;->updatePenMenuButtonLed(IIZ)V

    .line 4702
    return-void

    .end local v1           #showPortrait:Z
    :cond_1
    move v1, v3

    .line 4686
    goto :goto_0

    .line 4695
    .restart local v1       #showPortrait:Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4696
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_1
.end method

.method private setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2436
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2437
    return-void
.end method

.method private setPowerState(IZI)V
    .locals 1
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 2441
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/PowerManagerService;->setPowerState(IZIZ)V

    .line 2442
    return-void
.end method

.method private setPowerState(IZIZ)V
    .locals 18
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"
    .parameter "force"

    .prologue
    .line 2446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v13

    .line 2451
    :try_start_0
    sget-boolean v12, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v12, :cond_0

    .line 2452
    const-string v7, "setPowerState-arg_check"

    .line 2453
    .local v7, logKey:Ljava/lang/String;
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 2454
    .local v4, f:Ljava/util/Formatter;
    const-string v12, "setPowerState: mPowerState=0x%x, newState=0x%x, noChangeLights=%b, reason=%d, force=%b, mProximitySensorActive=%b, mBootCompleted=%b, mUseSoftwareAutoBrightness=%b"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v4, v12, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    :try_start_1
    sget-object v12, Lcom/android/server/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/HtcPMSExtension;

    const-string v14, "setPowerState-arg_check"

    const-string v15, "PowerManagerService"

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/android/server/HtcPMSExtension;->reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2463
    .end local v4           #f:Ljava/util/Formatter;
    .end local v7           #logKey:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2464
    and-int/lit8 v12, p1, -0xf

    :try_start_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v14, v14, 0xe

    or-int p1, v12, v14

    .line 2467
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v12, :cond_2

    if-nez p4, :cond_2

    .line 2469
    and-int/lit8 p1, p1, -0x4

    .line 2482
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v12, :cond_3

    .line 2483
    or-int/lit8 p1, p1, 0xf

    .line 2486
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_c

    const/4 v9, 0x1

    .line 2487
    .local v9, oldScreenOn:Z
    :goto_1
    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_d

    const/4 v8, 0x1

    .line 2489
    .local v8, newScreenOn:Z
    :goto_2
    sget-boolean v12, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v12, :cond_4

    .line 2490
    const-string v7, "setPowerState-state_check"

    .line 2491
    .restart local v7       #logKey:Ljava/lang/String;
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 2492
    .restart local v4       #f:Ljava/util/Formatter;
    const-string v14, "setPowerState: mPowerState=0x%x, newState=0x%x, ScreenOn=%b->%b, ScreenBright=%b->%b, ButtonBright=%b->%b, KeyboardBright=%b->%b, BatteryLow=%b->%b"

    const/16 v12, 0xc

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x3

    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x5

    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    :goto_6
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    :goto_7
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x7

    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    :goto_8
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_14

    const/4 v12, 0x1

    :goto_9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0x9

    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    :goto_a
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0xa

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    :goto_b
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    const/16 v16, 0xb

    and-int/lit8 v12, p1, 0x10

    if-eqz v12, :cond_17

    const/4 v12, 0x1

    :goto_c
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-virtual {v4, v14, v15}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2497
    :try_start_3
    sget-object v12, Lcom/android/server/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/HtcPMSExtension;

    const-string v14, "setPowerState-state_check"

    const-string v15, "PowerManagerService"

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/android/server/HtcPMSExtension;->reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2503
    .end local v4           #f:Ljava/util/Formatter;
    .end local v7           #logKey:Ljava/lang/String;
    :cond_4
    :goto_d
    :try_start_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v12, v0, :cond_18

    const/4 v11, 0x1

    .line 2506
    .local v11, stateChanged:Z
    :goto_e
    if-eqz v11, :cond_5

    .line 2507
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->clearAutoBacklightState()V

    .line 2511
    :cond_5
    if-eq v9, v8, :cond_1d

    .line 2512
    if-eqz v8, :cond_1a

    .line 2517
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    if-eqz v12, :cond_6

    .line 2518
    const/4 v12, 0x0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2526
    :cond_6
    const/4 v10, 0x1

    .line 2527
    .local v10, reallyTurnScreenOn:Z
    sget-boolean v12, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v12, :cond_7

    .line 2528
    const-string v12, "PowerManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- turning screen on...  mPreventScreenOn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v12, :cond_9

    .line 2533
    sget-boolean v12, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v12, :cond_8

    .line 2534
    const-string v12, "PowerManagerService"

    const-string v14, "- PREVENTING screen from really turning on!"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_8
    const/4 v10, 0x0

    .line 2545
    :cond_9
    if-eqz v10, :cond_19

    .line 2546
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v3

    .line 2547
    .local v3, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v5

    .line 2549
    .local v5, identity:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v12}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2554
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2562
    .end local v5           #identity:J
    :goto_f
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2563
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2564
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2565
    const/16 v12, 0xaa8

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2567
    if-nez v3, :cond_b

    .line 2568
    const/4 v12, 0x1

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2573
    if-eqz v11, :cond_a

    .line 2574
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2576
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2613
    .end local v3           #err:I
    .end local v10           #reallyTurnScreenOn:Z
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, -0xf

    and-int/lit8 v14, p1, 0xe

    or-int/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2616
    monitor-exit v13

    .line 2617
    return-void

    .line 2458
    .end local v8           #newScreenOn:Z
    .end local v9           #oldScreenOn:Z
    .end local v11           #stateChanged:Z
    .restart local v4       #f:Ljava/util/Formatter;
    .restart local v7       #logKey:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2459
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v12, "PowerManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2616
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #f:Ljava/util/Formatter;
    .end local v7           #logKey:Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v12

    .line 2486
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2487
    .restart local v9       #oldScreenOn:Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2492
    .restart local v4       #f:Ljava/util/Formatter;
    .restart local v7       #logKey:Ljava/lang/String;
    .restart local v8       #newScreenOn:Z
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 2498
    :catch_1
    move-exception v2

    .line 2499
    .restart local v2       #e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v12, "PowerManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_d

    .line 2503
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #f:Ljava/util/Formatter;
    .end local v7           #logKey:Ljava/lang/String;
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 2551
    .restart local v3       #err:I
    .restart local v5       #identity:J
    .restart local v10       #reallyTurnScreenOn:Z
    .restart local v11       #stateChanged:Z
    :catch_2
    move-exception v2

    .line 2552
    .local v2, e:Landroid/os/RemoteException;
    :try_start_8
    const-string v12, "PowerManagerService"

    const-string v14, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v12, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2554
    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v12

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 2557
    .end local v3           #err:I
    .end local v5           #identity:J
    :cond_19
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2559
    const/4 v3, 0x0

    .restart local v3       #err:I
    goto/16 :goto_f

    .line 2582
    .end local v3           #err:I
    .end local v10           #reallyTurnScreenOn:Z
    :cond_1a
    if-eqz v11, :cond_1b

    .line 2583
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2587
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2588
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2589
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v5

    .line 2593
    .restart local v5       #identity:J
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v12}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 2597
    :try_start_b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2599
    :goto_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2600
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v12, v12, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v12, :cond_1c

    .line 2602
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v3

    .restart local v3       #err:I
    goto/16 :goto_10

    .line 2594
    .end local v3           #err:I
    :catch_3
    move-exception v2

    .line 2595
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_c
    const-string v12, "PowerManagerService"

    const-string v14, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v12, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2597
    :try_start_d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v12

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 2604
    :cond_1c
    const/4 v3, 0x0

    .line 2605
    .restart local v3       #err:I
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto/16 :goto_10

    .line 2608
    .end local v3           #err:I
    .end local v5           #identity:J
    :cond_1d
    if-eqz v11, :cond_b

    .line 2610
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_10
.end method

.method private setScreenBrightnessMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4005
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 4006
    if-ne p1, v0, :cond_2

    .line 4007
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v1, v0, :cond_1

    .line 4008
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 4013
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4014
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4016
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4019
    :cond_1
    monitor-exit v2

    .line 4020
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v1

    .line 4006
    goto :goto_0

    .line 4019
    .restart local v0       #enabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4029
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    if-eqz v1, :cond_0

    .line 4083
    :goto_0
    return-void

    .line 4036
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4037
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4038
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4039
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4040
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4041
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4042
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4043
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4045
    :cond_2
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 4047
    .local v0, totalDelay:I
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->adjustHtcScreenTotalDelay(I)I

    move-result v0

    .line 4049
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_3

    .line 4050
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 4052
    :cond_3
    const/16 v1, 0x1770

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4053
    if-gez v0, :cond_4

    .line 4055
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4064
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x32c8

    if-lt v0, v1, :cond_6

    .line 4065
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4066
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4071
    :goto_2
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->adjustHtcScreenDelay()V

    goto :goto_0

    .line 4056
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_5

    .line 4060
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 4062
    :cond_5
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 4068
    :cond_6
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto :goto_2
.end method

.method private setScreenStateLocked(Z)I
    .locals 8
    .parameter "on"

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 2344
    if-eqz p1, :cond_0

    .line 2345
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v3, :cond_0

    .line 2360
    :cond_0
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScreenStateLocked: on="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-static {p1}, Landroid/os/Power;->setScreenState(Z)I

    move-result v0

    .line 2363
    .local v0, err:I
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 2364
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    .line 2367
    :cond_1
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power.setScreenState: err="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    if-nez v0, :cond_7

    .line 2370
    if-eqz p1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 2371
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_7

    .line 2372
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 2373
    if-nez p1, :cond_c

    .line 2375
    const-string v3, "PowerManagerService"

    const-string v4, "setScreenStateLocked, turn off the button light "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget v1, p0, Lcom/android/server/PowerManagerService;->mOrientation:I

    .line 2380
    .local v1, nOrientation:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget-boolean v3, v3, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mManual:Z

    if-ne v5, v3, :cond_2

    .line 2382
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget v1, v3, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mOrientation:I

    .line 2384
    :cond_2
    if-ne v1, v5, :cond_9

    .line 2388
    .local v2, whilePortrait:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2389
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_4

    .line 2390
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2393
    :cond_4
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mHasButtonOrientation:Z

    if-eqz v3, :cond_5

    .line 2394
    if-eqz v2, :cond_a

    .line 2395
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2400
    :cond_5
    :goto_2
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mHasPenMenuButton:Z

    if-eqz v3, :cond_6

    .line 2401
    if-eqz v2, :cond_b

    .line 2402
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPortraitAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2403
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPortraitGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2404
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPortraitBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2412
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2415
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2417
    iput v7, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2422
    .end local v1           #nOrientation:I
    .end local v2           #whilePortrait:Z
    :cond_7
    :goto_4
    return v0

    .line 2370
    :cond_8
    const-wide/16 v3, 0x0

    goto :goto_0

    .restart local v1       #nOrientation:I
    :cond_9
    move v2, v5

    .line 2384
    goto :goto_1

    .line 2397
    .restart local v2       #whilePortrait:Z
    :cond_a
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_2

    .line 2406
    :cond_b
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2407
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2408
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3

    .line 2419
    .end local v1           #nOrientation:I
    .end local v2           #whilePortrait:Z
    :cond_c
    invoke-direct {p0, v7, v5}, Lcom/android/server/PowerManagerService;->setOrientation(IZ)V

    goto :goto_4
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1814
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1815
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 9
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1821
    move-wide v0, p3

    .line 1822
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 1823
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1824
    const-wide/16 v2, 0x0

    .line 1825
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1826
    packed-switch p5, :pswitch_data_0

    .line 1844
    :pswitch_0
    move-wide v2, p1

    .line 1880
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1881
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1882
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    sub-long v4, p3, v0

    :goto_1
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1885
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1886
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1887
    monitor-exit v6

    .line 1889
    .end local v2           #when:J
    :cond_0
    return-void

    .line 1829
    .restart local v2       #when:J
    :pswitch_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1830
    goto :goto_0

    .line 1832
    :pswitch_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_1

    .line 1833
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1834
    goto :goto_0

    .line 1836
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1840
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1841
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1887
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1849
    :cond_2
    :try_start_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 1850
    add-long v2, p1, v0

    .line 1851
    const/4 p5, 0x0

    .line 1852
    goto :goto_0

    .line 1854
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1856
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_5

    .line 1857
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    .line 1858
    add-long v2, p1, v0

    .line 1859
    const/4 p5, 0x1

    .line 1860
    goto :goto_0

    .line 1862
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1865
    :cond_5
    add-long v2, p1, v0

    .line 1866
    const/4 p5, 0x3

    goto/16 :goto_0

    .line 1882
    :cond_6
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2652
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_1

    .line 2671
    :cond_0
    :goto_0
    return v1

    .line 2663
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2664
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2671
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3240
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3241
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 3242
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 3243
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3244
    monitor-exit v2

    .line 3249
    :goto_0
    return v0

    .line 3245
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 3246
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3247
    monitor-exit v2

    goto :goto_0

    .line 3251
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3249
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private updateLightsLocked(II)V
    .locals 21
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2675
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2679
    .local v10, oldState:I
    and-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2683
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v18, :cond_1

    .line 2684
    and-int/lit8 p1, p1, -0x4

    .line 2688
    :cond_1
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_2

    .line 2691
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyButtonState(I)I

    move-result p1

    .line 2692
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2694
    :cond_2
    xor-int v14, p1, v10

    .line 2695
    .local v14, realDifference:I
    or-int v4, v14, p2

    .line 2696
    .local v4, difference:I
    if-nez v4, :cond_4

    .line 2887
    :cond_3
    :goto_0
    return-void

    .line 2700
    :cond_4
    const/4 v9, 0x0

    .line 2701
    .local v9, offMask:I
    const/4 v5, 0x0

    .line 2702
    .local v5, dimMask:I
    const/4 v11, 0x0

    .line 2704
    .local v11, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v12

    .line 2705
    .local v12, preferredBrightness:I
    const/16 v16, 0x0

    .line 2707
    .local v16, startAnimation:Z
    and-int/lit8 v18, v4, 0x8

    if-eqz v18, :cond_5

    .line 2708
    and-int/lit8 v18, p1, 0x8

    if-nez v18, :cond_14

    .line 2709
    or-int/lit8 v9, v9, 0x8

    .line 2715
    :cond_5
    :goto_1
    and-int/lit8 v18, v4, 0x4

    if-eqz v18, :cond_6

    .line 2716
    and-int/lit8 v18, p1, 0x4

    if-nez v18, :cond_15

    .line 2717
    or-int/lit8 v9, v9, 0x4

    .line 2723
    :cond_6
    :goto_2
    and-int/lit8 v18, v4, 0x3

    if-eqz v18, :cond_a

    .line 2724
    sget-boolean v18, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    if-eqz v18, :cond_1a

    .line 2725
    const/4 v8, -0x1

    .line 2731
    .local v8, nominalCurrentValue:I
    and-int/lit8 v18, v14, 0x3

    if-eqz v18, :cond_7

    .line 2732
    and-int/lit8 v18, v10, 0x3

    packed-switch v18, :pswitch_data_0

    .line 2745
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v8, v0

    .line 2749
    :cond_7
    :goto_3
    move v3, v12

    .line 2750
    .local v3, brightness:I
    const/16 v17, 0xf

    .line 2751
    .local v17, steps:I
    and-int/lit8 v18, p1, 0x2

    if-nez v18, :cond_9

    .line 2755
    const/high16 v15, 0x3fc0

    .line 2756
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 2757
    .local v13, ratio:F
    const/high16 v18, 0x3f80

    cmpl-float v18, v13, v18

    if-lez v18, :cond_8

    const/high16 v13, 0x3f80

    .line 2758
    :cond_8
    and-int/lit8 v18, p1, 0x1

    if-nez v18, :cond_17

    .line 2759
    and-int/lit8 v18, v10, 0x2

    if-eqz v18, :cond_16

    .line 2761
    const/16 v17, 0xf

    .line 2766
    :goto_4
    const/4 v3, 0x0

    .line 2786
    .end local v13           #ratio:F
    .end local v15           #scale:F
    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2788
    .local v6, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2792
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2794
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2796
    const/16 v16, 0x1

    .line 2835
    .end local v3           #brightness:I
    .end local v6           #identity:J
    .end local v8           #nominalCurrentValue:I
    .end local v17           #steps:I
    :cond_a
    :goto_7
    if-eqz v9, :cond_c

    .line 2836
    sget-boolean v18, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v18, :cond_b

    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Setting brightess off: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2839
    :cond_c
    if-eqz v5, :cond_f

    .line 2840
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2841
    .restart local v3       #brightness:I
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_d

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v3, v0, :cond_d

    .line 2843
    const/16 v3, 0xa

    .line 2845
    :cond_d
    sget-boolean v18, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v18, :cond_e

    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Setting brightess dim "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2848
    .end local v3           #brightness:I
    :cond_f
    if-eqz v11, :cond_3

    .line 2852
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 2853
    sget v18, Lcom/android/server/PowerManagerService;->previous_lcdvalue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v3, v18, v19

    .line 2857
    .restart local v3       #brightness:I
    :goto_8
    sget-boolean v18, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    if-nez v18, :cond_10

    sget-boolean v18, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v18, :cond_11

    :cond_10
    and-int/lit8 v18, v10, 0x1

    if-nez v18, :cond_11

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2859
    const/16 v18, -0x1

    sput v18, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    .line 2864
    :cond_11
    :goto_9
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_12

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v3, v0, :cond_12

    .line 2866
    const/16 v3, 0xa

    .line 2868
    :cond_12
    sget-boolean v18, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v18, :cond_13

    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Setting brightess on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    sget-boolean v18, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v18, :cond_1f

    .line 2871
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ScreenBrightness is animating, skip to setLightBrightness("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", brightness="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->updateSharekeyLights()V

    goto/16 :goto_0

    .line 2711
    .end local v3           #brightness:I
    :cond_14
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_1

    .line 2719
    :cond_15
    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_2

    .line 2734
    .restart local v8       #nominalCurrentValue:I
    :pswitch_1
    move v8, v12

    .line 2735
    goto/16 :goto_3

    .line 2737
    :pswitch_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2738
    goto/16 :goto_3

    .line 2740
    :pswitch_3
    const/4 v8, 0x0

    .line 2741
    goto/16 :goto_3

    .line 2764
    .restart local v3       #brightness:I
    .restart local v13       #ratio:F
    .restart local v15       #scale:F
    .restart local v17       #steps:I
    :cond_16
    const/high16 v18, 0x4170

    mul-float v18, v18, v13

    const/high16 v19, 0x3fc0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_4

    .line 2768
    :cond_17
    and-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_19

    .line 2770
    const/high16 v18, 0x4170

    const/high16 v19, 0x3f80

    sub-float v19, v19, v13

    mul-float v18, v18, v19

    const/high16 v19, 0x3fc0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2775
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 2781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2783
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_5

    .line 2773
    :cond_19
    const/high16 v18, 0x4170

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto :goto_b

    .line 2789
    .end local v13           #ratio:F
    .end local v15           #scale:F
    .restart local v6       #identity:J
    :catch_0
    move-exception v18

    .line 2792
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_0
    move-exception v18

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 2804
    .end local v3           #brightness:I
    .end local v6           #identity:J
    .end local v8           #nominalCurrentValue:I
    .end local v17           #steps:I
    :cond_1a
    and-int/lit8 v18, p1, 0x2

    if-nez v18, :cond_1c

    .line 2806
    and-int/lit8 v18, p1, 0x1

    if-nez v18, :cond_1b

    .line 2807
    or-int/lit8 v9, v9, 0x2

    goto/16 :goto_7

    .line 2809
    :cond_1b
    or-int/lit8 v5, v5, 0x2

    goto/16 :goto_7

    .line 2812
    :cond_1c
    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_7

    .line 2856
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .restart local v3       #brightness:I
    goto/16 :goto_8

    .line 2862
    .end local v3           #brightness:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .restart local v3       #brightness:I
    goto/16 :goto_9

    .line 2873
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->haveToDoAnimating()Z

    move-result v18

    if-eqz v18, :cond_20

    .line 2874
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Screen on animating is not done, so set brightness value as SCREEN_BRIGHT_ANIMATION_MININUM_INIT_VALUE=30, mIsScreenOnAnimatingDone="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const/16 v18, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_a

    .line 2878
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_a

    .line 2732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2620
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2623
    return-void

    :cond_0
    move v0, v2

    .line 2620
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updatePenMenuButtonLed(IIZ)V
    .locals 10
    .parameter "penButtonLed"
    .parameter "brightness"
    .parameter "showNow"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4605
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPenMenuButtonLed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    const/4 v7, -0x1

    if-eq p1, v7, :cond_0

    .line 4607
    iput p1, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    .line 4609
    :cond_0
    if-nez p3, :cond_2

    .line 4654
    :cond_1
    :goto_0
    return-void

    .line 4612
    :cond_2
    sget-boolean v7, Lcom/android/server/PowerManagerService;->mHasPenMenuButton:Z

    if-eqz v7, :cond_1

    .line 4618
    iget v3, p0, Lcom/android/server/PowerManagerService;->mOrientation:I

    .line 4619
    .local v3, nOrientation:I
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget-boolean v7, v7, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mManual:Z

    if-ne v6, v7, :cond_3

    .line 4621
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    iget v3, v7, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mOrientation:I

    .line 4627
    :cond_3
    if-ne v3, v6, :cond_4

    move v4, v5

    .line 4628
    .local v4, showPortrait:Z
    :goto_1
    iget v7, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_5

    move v0, p2

    .line 4629
    .local v0, amber:I
    :goto_2
    iget v6, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    move v2, p2

    .line 4630
    .local v2, green:I
    :goto_3
    iget v6, p0, Lcom/android/server/PowerManagerService;->mPenButtonLed:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    move v1, p2

    .line 4632
    .local v1, blue:I
    :goto_4
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set pen menu button led (amber, green, blue) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), portrait = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    if-eqz v4, :cond_8

    .line 4637
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4638
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4639
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4640
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4641
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4642
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto/16 :goto_0

    .end local v0           #amber:I
    .end local v1           #blue:I
    .end local v2           #green:I
    .end local v4           #showPortrait:Z
    :cond_4
    move v4, v6

    .line 4627
    goto :goto_1

    .restart local v4       #showPortrait:Z
    :cond_5
    move v0, v5

    .line 4628
    goto :goto_2

    .restart local v0       #amber:I
    :cond_6
    move v2, v5

    .line 4629
    goto :goto_3

    .restart local v2       #green:I
    :cond_7
    move v1, v5

    .line 4630
    goto :goto_4

    .line 4645
    .restart local v1       #blue:I
    :cond_8
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4646
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4647
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mPortraitBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4648
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4649
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 4650
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto/16 :goto_0
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 4137
    return-void
.end method

.method private updateSharekeyLights()V
    .locals 8

    .prologue
    .line 2892
    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 2893
    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v5, v6

    .line 2894
    .local v5, value:I
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, v5, v6}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 2896
    .local v1, buttonValue:I
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v6, :cond_6

    .line 2897
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, v5, v6}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v4

    .line 2903
    .local v4, keyboardValue:I
    :goto_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x10

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x42

    if-ne v6, v7, :cond_7

    .line 2906
    :cond_0
    const/4 v3, -0x1

    .line 2907
    .local v3, facebookValue:I
    const/4 v2, -0x1

    .line 2915
    .local v2, facebookBreathValue:I
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    if-eqz v6, :cond_1

    .line 2916
    const/4 v1, 0x0

    .line 2918
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v6, :cond_8

    const/4 v0, 0x1

    .line 2921
    .local v0, brightnessMode:I
    :goto_2
    if-ltz v1, :cond_2

    .line 2924
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2926
    :cond_2
    if-ltz v3, :cond_3

    .line 2927
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v3, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2929
    :cond_3
    if-ltz v2, :cond_4

    .line 2930
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSharekeyBreathLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2933
    :cond_4
    if-ltz v4, :cond_5

    .line 2937
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, v4, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2942
    .end local v0           #brightnessMode:I
    .end local v1           #buttonValue:I
    .end local v2           #facebookBreathValue:I
    .end local v3           #facebookValue:I
    .end local v4           #keyboardValue:I
    .end local v5           #value:I
    :cond_5
    return-void

    .line 2899
    .restart local v1       #buttonValue:I
    .restart local v5       #value:I
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #keyboardValue:I
    goto :goto_0

    .line 2912
    :cond_7
    const/4 v3, -0x1

    .line 2913
    .restart local v3       #facebookValue:I
    const/4 v2, -0x1

    .restart local v2       #facebookBreathValue:I
    goto :goto_1

    .line 2918
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 1230
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1233
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1238
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1236
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZ)V
    .locals 13
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 3363
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3367
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3368
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    .line 3369
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 3374
    :cond_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3375
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->getInstance()Lcom/htc/server/HtcDeviceInfoManager;

    move-result-object v8

    .line 3377
    .local v8, deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    if-eqz v8, :cond_3

    .line 3378
    invoke-virtual {v8, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager;->userActivity(J)V

    .line 3386
    .end local v8           #deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_4

    .line 3468
    :cond_2
    :goto_1
    return-void

    .line 3381
    .restart local v8       #deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    :cond_3
    const-string v2, "PowerManagerService"

    const-string v3, "userActivity, deviceInfoManager not ready!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3414
    .end local v8           #deviceManager:Lcom/htc/server/HtcDeviceInfoManager;
    :cond_4
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 3415
    :try_start_0
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v2, :cond_5

    .line 3416
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userActivity mLastEventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUserActivityAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mProximitySensorActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeoutOverride="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_5
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3426
    const-string v2, "PowerManagerService"

    const-string v3, "ignoring user activity while turning off screen"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    monitor-exit v12

    goto/16 :goto_1

    .line 3463
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3431
    :cond_6
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_7

    .line 3432
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3434
    :cond_7
    iget-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_8

    if-eqz p7, :cond_b

    .line 3435
    :cond_8
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3436
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_a

    :cond_9
    if-eqz p7, :cond_b

    .line 3439
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v2, :cond_d

    .line 3440
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_c

    const/16 v2, 0xf

    :goto_2
    iput v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3446
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3447
    .local v11, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 3449
    .local v9, ident:J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v2, v11, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3453
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3456
    :goto_4
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3457
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    const/4 v3, 0x2

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZIZ)V

    .line 3460
    const/4 v7, 0x3

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 3463
    .end local v9           #ident:J
    .end local v11           #uid:I
    :cond_b
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3465
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v2, :cond_2

    .line 3466
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_1

    .line 3440
    :cond_c
    const/4 v2, 0x7

    goto :goto_2

    .line 3443
    :cond_d
    :try_start_4
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto :goto_3

    .line 3450
    .restart local v9       #ident:J
    .restart local v11       #uid:I
    :catch_0
    move-exception v2

    .line 3453
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1259
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1260
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_0
    if-eqz p4, :cond_1

    .line 1264
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1266
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1268
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1269
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 1271
    invoke-direct {p0, p3}, Lcom/android/server/PowerManagerService;->acquireHtcDVCSWakeLockLocked(Ljava/lang/String;)I

    .line 1273
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    return-void

    .line 1273
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1275
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 13
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1317
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v2, :cond_0

    .line 1318
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1322
    const/16 p6, 0x0

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, p2}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v9

    .line 1330
    .local v9, index:I
    if-gez v9, :cond_a

    .line 1331
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1332
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x7f

    sparse-switch v2, :sswitch_data_0

    .line 1354
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_2
    :goto_0
    return-void

    .line 1335
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_8

    .line 1336
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 1358
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 1359
    if-eqz p6, :cond_3

    .line 1360
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1362
    :cond_3
    const/4 v10, 0x1

    .line 1363
    .local v10, newlock:Z
    const/4 v8, 0x0

    .line 1364
    .local v8, diffsource:Z
    const/4 v12, 0x0

    .line 1385
    .local v12, oldsource:Landroid/os/WorkSource;
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1390
    and-int/lit8 v2, p1, 0x7f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    .line 1391
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1392
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1393
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1472
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 1475
    invoke-virtual {p0, v1, v12}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1477
    :cond_6
    if-nez v10, :cond_7

    if-eqz v8, :cond_2

    .line 1478
    :cond_7
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1338
    .end local v8           #diffsource:Z
    .end local v10           #newlock:Z
    .end local v12           #oldsource:Landroid/os/WorkSource;
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    :goto_4
    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    :cond_9
    const/4 v2, 0x7

    goto :goto_4

    .line 1342
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1345
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1366
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v9}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1367
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v10, 0x0

    .line 1368
    .restart local v10       #newlock:Z
    iget-object v12, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1369
    .restart local v12       #oldsource:Landroid/os/WorkSource;
    if-eqz v12, :cond_c

    .line 1370
    if-nez p6, :cond_b

    .line 1371
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1372
    const/4 v8, 0x1

    .line 1381
    .restart local v8       #diffsource:Z
    :goto_5
    if-eqz v8, :cond_4

    .line 1382
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto :goto_2

    .line 1374
    .end local v8           #diffsource:Z
    :cond_b
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v8

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1376
    .end local v8           #diffsource:Z
    :cond_c
    if-eqz p6, :cond_d

    .line 1377
    const/4 v8, 0x1

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1379
    .end local v8           #diffsource:Z
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1396
    :cond_e
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1397
    iget v11, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1398
    .local v11, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1402
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_f

    .line 1404
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1407
    :cond_f
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v2, :cond_10

    .line 1408
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeup here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldwakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v11           #oldWakeLockState:I
    :cond_10
    :goto_6
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_3

    .line 1413
    :cond_11
    sget-boolean v2, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v2, :cond_12

    .line 1414
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLocks.gatherState()=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_12
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_6

    .line 1433
    :cond_13
    and-int/lit8 v2, p1, 0x7f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 1434
    if-eqz v10, :cond_14

    .line 1435
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1436
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1440
    :cond_14
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1442
    :cond_15
    and-int/lit8 v2, p1, 0x7f

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 1443
    iget v2, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    .line 1444
    iget v2, p0, Lcom/android/server/PowerManagerService;->mCpuPerfCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1445
    invoke-static {}, Landroid/os/Power;->acquireCpuPerfWakeLock()V

    goto/16 :goto_3

    .line 1332
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 4262
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 4264
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 4265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 4266
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 4267
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4268
    monitor-exit v6

    .line 4276
    return-void

    .line 4268
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 8
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 3355
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    .line 3357
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 3358
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 3860
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    new-instance v1, Lcom/android/server/PowerManagerService$14;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3866
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3870
    :goto_0
    return-void

    .line 3867
    :catch_0
    move-exception v0

    .line 3868
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1711
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 1713
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1721
    .local v6, now:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 1722
    :try_start_0
    const-string v11, "Power Manager State:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mIsPowered="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPowerState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mScreenOffTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ms"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPartialCount="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mWakeLockState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mUserState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPowerState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLocks.gather="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v13}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mNextTimeout="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " now="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    sub-long/2addr v13, v6

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "s from now"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mDimScreen="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mStayOnConditions="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPreparingForScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mSkippedScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mScreenOffReason="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mUserState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastQueue={"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastWhy={"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPokey="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPokeAwakeonSet="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mKeyboardVisible="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mUserActivityAllowed="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mKeylightDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mDimDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mScreenOffDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPreventScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "  mScreenBrightnessOverride="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "  mButtonBrightnessOverride="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mScreenOffTimeoutSetting="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mMaximumScreenOffTimeout="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLastScreenOnTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastWakeLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mStayOnWhilePluggedInScreenDimLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mStayOnWhilePluggedInPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPreventScreenOnPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityWakeLockCount="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximitySensorEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximitySensorActive="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityPendingValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLastProximityEventTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorPendingValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorPendingDecrease="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorPendingIncrease="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorScreenBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorButtonBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorKeyboardBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mUseSoftwareAutoBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mAutoBrightessEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const-string v13, "  mScreenBrightness: "

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v13}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v11}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v1

    .line 1778
    .local v1, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1779
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLocks.size="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 1781
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v11, v4}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1782
    .local v10, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v11, v11, 0x7f

    invoke-static {v11}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v9

    .line 1783
    .local v9, type:Ljava/lang/String;
    iget v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v11}, Lcom/android/server/HtcPMSExtension;->getWakeLockFlagInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 1788
    .local v3, flagInfo:Ljava/lang/String;
    const-string v2, ""

    .line 1789
    .local v2, activated:Ljava/lang/String;
    iget-boolean v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v11, :cond_1

    .line 1790
    const-string v2, " activated"

    .line 1792
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " \'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " (minState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", uid="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", pid="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1797
    .end local v2           #activated:Ljava/lang/String;
    .end local v3           #flagInfo:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1798
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPokeLocks.size="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1800
    .local v8, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    poke lock \'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v8, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\':"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    const-string v11, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    const-string v11, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_5

    const-string v11, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1810
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1800
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_3
    :try_start_1
    const-string v11, ""

    goto :goto_3

    :cond_4
    const-string v11, ""

    goto :goto_4

    :cond_5
    const-string v11, ""

    goto :goto_5

    .line 1809
    .end local v8           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1810
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 3985
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v0, :cond_0

    .line 3986
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3989
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3990
    if-nez p1, :cond_2

    .line 3992
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 4001
    :cond_1
    :goto_0
    monitor-exit v1

    .line 4002
    return-void

    .line 3996
    :cond_2
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v0, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    if-nez v0, :cond_1

    .line 3997
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    goto :goto_0

    .line 4001
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1250
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 4213
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 4215
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4216
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4220
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getProximitySensorActive()Z
    .locals 1

    .prologue
    .line 4486
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    return v0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 4284
    const/16 v0, 0x5f

    .line 4289
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 4290
    or-int/lit8 v0, v0, 0x20

    .line 4293
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 3792
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 3793
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3803
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3804
    monitor-exit v1

    .line 3805
    return-void

    .line 3804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 5
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 710
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 711
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 712
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 713
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 714
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 716
    invoke-virtual {p2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 717
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 718
    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 719
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 720
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 721
    :cond_0
    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    .line 722
    const/16 v1, 0x16

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSharekeyBreathLight:Lcom/android/server/LightsService$Light;

    .line 725
    :cond_1
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mHasButtonOrientation:Z

    if-eqz v1, :cond_2

    .line 726
    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPortraitButtonLight:Lcom/android/server/LightsService$Light;

    .line 727
    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLandscapeButtonLight:Lcom/android/server/LightsService$Light;

    .line 730
    :cond_2
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mHasPenMenuButton:Z

    if-eqz v1, :cond_3

    .line 731
    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPortraitAmberLed:Lcom/android/server/LightsService$Light;

    .line 732
    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPortraitGreenLed:Lcom/android/server/LightsService$Light;

    .line 733
    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPortraitBlueLed:Lcom/android/server/LightsService$Light;

    .line 734
    invoke-virtual {p2, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLandscapeAmberLed:Lcom/android/server/LightsService$Light;

    .line 735
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLandscapeGreenLed:Lcom/android/server/LightsService$Light;

    .line 736
    const/16 v1, 0x12

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLandscapeBlueLed:Lcom/android/server/LightsService$Light;

    .line 740
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 741
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 743
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 746
    new-instance v1, Lcom/android/server/PowerManagerService$2;

    const-string v2, "PowerManagerService.mScreenOffThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    .line 756
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 758
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 759
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_4

    .line 761
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v1

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 766
    :cond_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 768
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 769
    new-instance v1, Lcom/android/server/PowerManagerService$3;

    const-string v2, "PowerManagerService"

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 776
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 778
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 779
    :goto_1
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_5

    .line 781
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 782
    :catch_1
    move-exception v1

    goto :goto_1

    .line 766
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 786
    :cond_5
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 788
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 789
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 790
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 794
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 795
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 798
    new-instance v0, Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-direct {v0, p0}, Lcom/android/server/PowerManagerService$PMSInternalAPI;-><init>(Lcom/android/server/PowerManagerService;)V

    .line 803
    .local v0, pmsInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    new-instance v1, Lcom/android/server/HtcPowerSaver;

    invoke-direct {v1, p1, v0}, Lcom/android/server/HtcPowerSaver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;

    .line 804
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    .line 808
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHtcAutoBrightnessCtrl:Lcom/android/server/HtcAutoBrightnessCtrl;

    .line 812
    new-instance v1, Lcom/android/server/HtcLocationAwareWifi;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/HtcLocationAwareWifi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHtcLocationAwareWifi:Lcom/android/server/HtcLocationAwareWifi;

    .line 816
    new-instance v1, Lcom/android/server/HtcPMSExtension;

    invoke-direct {v1}, Lcom/android/server/HtcPMSExtension;-><init>()V

    sput-object v1, Lcom/android/server/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/HtcPMSExtension;

    .line 818
    return-void

    .line 786
    .end local v0           #pmsInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .line 795
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1
.end method

.method initInThread()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const v12, 0x1070029

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 821
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 829
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v11, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 831
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v13, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 833
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v11, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 835
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v11, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 837
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v11, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 840
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 841
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 843
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 845
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 847
    .local v8, resources:Landroid/content/res/Resources;
    const v1, 0x1110012

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 850
    const v1, 0x1110011

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 853
    const v1, 0x10e001e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 857
    const v1, 0x111000f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 859
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    .line 860
    const v1, 0x1070025

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 862
    const v1, 0x1070026

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 864
    const v1, 0x1070027

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesUp:[I

    .line 866
    const v1, 0x1070028

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    .line 868
    const v1, 0x10e001f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAlgorithm:I

    .line 870
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_5

    .line 871
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holiday_qwerty_color= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->holiday_qwerty_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->holiday_qwerty_color:Ljava/lang/String;

    const-string v3, "WhiteColor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 875
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 884
    :goto_0
    const v1, 0x107002a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 886
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x42

    if-ne v1, v3, :cond_0

    .line 896
    :cond_0
    const v1, 0x10e0020

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 902
    :cond_1
    const/high16 v6, 0x3f80

    .line 904
    .local v6, fSenseVersion:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 907
    :goto_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DeskDockDimTimeout_flag:Z

    if-eqz v1, :cond_2

    .line 908
    const/high16 v1, 0x4060

    cmpl-float v1, v6, v1

    if-ltz v1, :cond_6

    move v1, v11

    :goto_2
    sput-boolean v1, Lcom/android/server/PowerManagerService;->mbEnableDeskDockBehavior:Z

    .line 911
    :cond_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 912
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v12, "stay_on_while_plugged_in"

    aput-object v12, v4, v5

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const-string v12, "dim_screen"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "deskdock_dim_screen"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    const-string v12, "screen_brightness_mode"

    aput-object v12, v4, v5

    const/4 v5, 0x5

    const-string v12, "window_animation_scale"

    aput-object v12, v4, v5

    const-string v5, "transition_animation_scale"

    aput-object v5, v4, v13

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 929
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v9, v3, v11, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 930
    new-instance v10, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 931
    .local v10, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 934
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v10, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 937
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 938
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 940
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7           #filter:Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 941
    .restart local v7       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 943
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 946
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7           #filter:Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 947
    .restart local v7       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mbEnableDeskDockBehavior:Z

    if-eqz v1, :cond_3

    .line 951
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 952
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    :cond_3
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 958
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v11, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 965
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 967
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 968
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 969
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 970
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    return-void

    .line 879
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #fSenseVersion:F
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v9           #settingsCursor:Landroid/database/Cursor;
    .end local v10           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :cond_4
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    goto/16 :goto_0

    .line 882
    :cond_5
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    goto/16 :goto_0

    .restart local v6       #fSenseVersion:F
    :cond_6
    move v1, v5

    .line 908
    goto/16 :goto_2

    .line 970
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #filter:Landroid/content/IntentFilter;
    .restart local v9       #settingsCursor:Landroid/database/Cursor;
    .restart local v10       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 905
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v9           #settingsCursor:Landroid/database/Cursor;
    .end local v10           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 3230
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3231
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 3224
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3225
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 2160
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2162
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2165
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 2152
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2155
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 4280
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 4281
    return-void

    .line 4280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1280
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1283
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1284
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1295
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1287
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v2

    .line 1292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1298
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1301
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1302
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1313
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1305
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v2

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventScreenOn(Z)V
    .locals 6
    .parameter "prevent"

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2200
    if-eqz p1, :cond_0

    .line 2204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2209
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2210
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2242
    :goto_0
    monitor-exit v2

    .line 2243
    return-void

    .line 2218
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2222
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2227
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2228
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v1, :cond_1

    .line 2229
    const-string v1, "PowerManagerService"

    const-string v3, "preventScreenOn: turning on after a prior preventScreenOn(true)!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2233
    .local v0, err:I
    if-eqz v0, :cond_2

    .line 2234
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from setScreenStateLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    .end local v0           #err:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 2242
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 3813
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reboot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3817
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3820
    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PowerManagerService.reboot"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mRebootThread:Landroid/os/HandlerThread;

    .line 3821
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mRebootThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 3822
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mRebootThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mRebootHandler:Landroid/os/Handler;

    .line 3825
    move-object v0, p1

    .line 3826
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$13;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 3838
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mRebootHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3839
    const-string v2, "PowerManagerService"

    const-string v3, "Reboot runnable posted."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    monitor-enter v1

    .line 3846
    :goto_0
    :try_start_0
    const-string v2, "PowerManagerService"

    const-string v3, "runnable.wait()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3848
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3851
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1506
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1511
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1512
    monitor-exit v2

    .line 1513
    return-void

    .line 1512
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAblActive(I)V
    .locals 1
    .parameter "on"

    .prologue
    .line 4297
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setAblActive(I)V

    .line 4298
    return-void
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 4356
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4357
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 4358
    return-void

    :cond_0
    move v0, v1

    .line 4357
    goto :goto_0
.end method

.method public setAutoBrightnessOffset(ILjava/lang/String;)V
    .locals 3
    .parameter "offset"
    .parameter "appName"

    .prologue
    .line 4349
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness offset is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessOffset:I

    .line 4351
    sget v0, Lcom/android/server/PowerManagerService;->previous_lsvalue:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4352
    return-void
.end method

.method public setBacklightBrightness(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    .line 4301
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 4304
    :try_start_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4305
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4325
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4329
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4333
    :goto_0
    sget-boolean v3, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_AUTO_BACKLIGHTS:Z

    if-eqz v3, :cond_1

    .line 4334
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    int-to-float v5, p1

    iput v5, v3, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 4335
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 4336
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v5, -0x1

    iput v5, v3, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 4342
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4343
    return-void

    .line 4326
    :catch_0
    move-exception v0

    .line 4327
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4329
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4342
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 4329
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setButtonBrightnessOverride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2264
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_1

    .line 2265
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2266
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2270
    :cond_1
    monitor-exit v1

    .line 2271
    return-void

    .line 2270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 3941
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9

    .line 3942
    :try_start_0
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v1, :cond_0

    .line 3943
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyboardVisibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v1, p1, :cond_2

    .line 3946
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 3950
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3951
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_1

    .line 3953
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3954
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v8, v0

    .line 3955
    .local v8, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3956
    invoke-direct {p0, v8}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 3959
    .end local v8           #value:I
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3976
    :cond_2
    :goto_0
    monitor-exit v9

    .line 3977
    return-void

    .line 3963
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v1, :cond_2

    .line 3964
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_4

    .line 3967
    .local v6, brightnessMode:I
    :goto_1
    const/16 v7, 0xff

    .line 3970
    .local v7, keyboardValue:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_0

    .line 3976
    .end local v6           #brightnessMode:I
    .end local v7           #keyboardValue:I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v6, v0

    .line 3964
    goto :goto_1
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 620
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 622
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNightMode(I)V
    .locals 7
    .parameter "nightmode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2311
    const-string v2, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNightMode::nightmode = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    if-ne p1, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    .line 2315
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mNightMode:Z

    if-eqz v2, :cond_4

    .line 2316
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_3

    move v0, v3

    .line 2321
    .local v0, brightnessMode:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2, v4, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2322
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    .line 2323
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2, v4, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2334
    .end local v0           #brightnessMode:I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 2312
    goto :goto_0

    :cond_3
    move v0, v4

    .line 2316
    goto :goto_1

    .line 2327
    :cond_4
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 2328
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v1, v2

    .line 2329
    .local v1, value:I
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2330
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    goto :goto_2
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 4658
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PowerManagerService;->setOrientation(IZ)V

    .line 4659
    return-void
.end method

.method public setPenMenuButtonLed(I)V
    .locals 2
    .parameter "penButtonLed"

    .prologue
    .line 4601
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->updatePenMenuButtonLed(IIZ)V

    .line 4602
    return-void
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 19
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1618
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DEVICE_POWER"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    if-nez p2, :cond_0

    .line 1620
    const-string v15, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :goto_0
    return-void

    .line 1624
    :cond_0
    and-int/lit8 v15, p1, 0x6

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1625
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1629
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1630
    if-eqz p1, :cond_5

    .line 1631
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1632
    .local v13, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v11, 0x0

    .line 1633
    .local v11, oldPokey:I
    if-eqz v13, :cond_4

    .line 1634
    iget v11, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1635
    move/from16 v0, p1

    iput v0, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1640
    :goto_1
    and-int/lit8 v12, v11, 0x6

    .line 1641
    .local v12, oldTimeout:I
    and-int/lit8 v8, p1, 0x6

    .line 1642
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_2

    if-eq v12, v8, :cond_2

    .line 1643
    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1652
    .end local v8           #newTimeout:I
    .end local v11           #oldPokey:I
    .end local v12           #oldTimeout:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1653
    .restart local v11       #oldPokey:I
    const/4 v5, 0x0

    .line 1654
    .local v5, cumulative:I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1655
    .local v9, oldAwakeOnSet:Z
    const/4 v4, 0x0

    .line 1656
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1657
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v15

    .line 1658
    iget-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v15, :cond_3

    .line 1659
    const/4 v4, 0x1

    goto :goto_3

    .line 1637
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #oldAwakeOnSet:Z
    :cond_4
    new-instance v13, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1638
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1674
    .end local v11           #oldPokey:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1646
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1647
    .local v14, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v14, :cond_2

    .line 1648
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1662
    .end local v14           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #oldAwakeOnSet:Z
    .restart local v11       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1663
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1665
    and-int/lit8 v10, v11, 0x6

    .line 1666
    .local v10, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x6

    .line 1668
    .local v7, newCumulativeTimeout:I
    if-eq v10, v7, :cond_7

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v15, v15, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1674
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 4206
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4207
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 4208
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4209
    monitor-exit v1

    .line 4210
    return-void

    .line 4209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightnessOverride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2250
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_1

    .line 2251
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2253
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2256
    :cond_1
    monitor-exit v1

    .line 2257
    return-void

    .line 2256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSpew(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2427
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpew = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    if-eqz p1, :cond_0

    .line 2429
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    .line 2432
    :goto_0
    return-void

    .line 2431
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/PowerManagerService;->mSpew:Z

    goto :goto_0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    return-void
.end method

.method public setVirtualKeyPolicy(Lcom/android/server/wm/InputManager$VirtualKeyPolicy;)V
    .locals 3
    .parameter "vkPolicy"

    .prologue
    .line 4718
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4719
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mVkPolicy:Lcom/android/server/wm/InputManager$VirtualKeyPolicy;

    .line 4720
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->setOrientation(IZ)V

    .line 4721
    monitor-exit v1

    .line 4722
    return-void

    .line 4721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method systemReady()V
    .locals 5

    .prologue
    .line 4224
    new-instance v2, Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4225
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 4227
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_0

    .line 4228
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 4234
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_1

    .line 4236
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 4242
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 4243
    :try_start_0
    const-string v2, "PowerManagerService"

    const-string v4, "system ready!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 4247
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4251
    .local v0, identity:J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 4252
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4256
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4258
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4259
    return-void

    .line 4239
    .end local v0           #identity:J
    :cond_1
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_0

    .line 4253
    .restart local v0       #identity:J
    :catch_0
    move-exception v2

    .line 4256
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 4258
    .end local v0           #identity:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4256
    .restart local v0       #identity:J
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 3932
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3933
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3934
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3936
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 3937
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1484
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1485
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1486
    const/4 p2, 0x0

    .line 1488
    :cond_0
    if-eqz p2, :cond_1

    .line 1489
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1491
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1492
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1493
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1494
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1501
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1496
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1497
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1498
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1499
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1500
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1501
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1502
    return-void

    .line 1498
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 3330
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3332
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3333
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3339
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    .line 3343
    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 3344
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 3347
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 3348
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    .line 3266
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 3268
    return-void
.end method

.method public userActivityWithScreenDelay(JZIII)V
    .locals 11
    .parameter "when"
    .parameter "noChangeLights"
    .parameter "keylightDelay"
    .parameter "dimDelay"
    .parameter "screenOffDelay"

    .prologue
    .line 3303
    const/4 v10, 0x0

    .line 3304
    .local v10, totalDelay:I
    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-gez p6, :cond_2

    .line 3305
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const v9, 0x7fffffff

    .line 3306
    .local v9, maxDelay:I
    :goto_0
    invoke-direct {p0, v10, p4, v9}, Lcom/android/server/PowerManagerService;->getCustomizedDelay(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3307
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    add-int/2addr v10, v1

    .line 3308
    move/from16 v0, p5

    invoke-direct {p0, v10, v0, v9}, Lcom/android/server/PowerManagerService;->getCustomizedDelay(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3309
    iget v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    add-int/2addr v10, v1

    .line 3310
    move/from16 v0, p6

    invoke-direct {p0, v10, v0, v9}, Lcom/android/server/PowerManagerService;->getCustomizedDelay(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3311
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/2addr v10, v1

    .line 3323
    .end local v9           #maxDelay:I
    :goto_1
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 3324
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    int-to-long v3, v10

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z

    .line 3326
    return-void

    .line 3305
    :cond_1
    iget v9, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    goto :goto_0

    .line 3313
    :cond_2
    iput p4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3314
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    add-int/2addr v10, v1

    .line 3315
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3316
    const v1, 0x7fffffff

    sub-int/2addr v1, v10

    iget v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ge v1, v2, :cond_3

    const v1, 0x7fffffff

    sub-int/2addr v1, v10

    :goto_2
    add-int/2addr v10, v1

    .line 3317
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3318
    const v1, 0x7fffffff

    sub-int/2addr v1, v10

    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    if-ge v1, v2, :cond_4

    const v1, 0x7fffffff

    sub-int/2addr v1, v10

    :goto_3
    add-int/2addr v10, v1

    .line 3319
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userActivityWithScreenDelay: totalDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3316
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto :goto_2

    .line 3318
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_3
.end method

.method public watchdog()V
    .locals 3

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    new-instance v0, Lcom/android/server/PowerManagerService$15;

    const-string v1, "PowerManagerService.watchdog()"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$15;->start()V

    .line 3894
    return-void
.end method
