.class public Lcom/android/server/wm/HtcGlAnimManager;
.super Ljava/lang/Object;
.source "HtcGlAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;,
        Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final CUSTOMIZE_FOR_ROSIE:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_CHOOSEN:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_PROGRESS:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_API:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_TO_NATIVE:Z = false

#the value of this static final field might be set in the static constructor
.field static final HIDE_STATUS_BAR:Z = false

#the value of this static final field might be set in the static constructor
.field static final SKIP_OOBE_DO_ZOOM_ANIM:Z = false

.field static final TAG:Ljava/lang/String; = "HtcGlAnimation"

#the value of this static final field might be set in the static constructor
.field static final USE_HTC_TRANSITION_ANIM:Z = false

.field static final overrideHtcGlAnimString:Ljava/lang/String; = "overrideHtcGlAnim:: "


# instance fields
.field final DELTA_CONTINUOUS_ANIM:I

.field final FOR_CONTENTZOOM_AREA:Z

.field final FOR_ZOOM_POINT:Z

.field final OOBE_LANGUGE_SETUP:Ljava/lang/String;

.field final OOBE_PACKAGE_NAME:Ljava/lang/String;

.field mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

.field private mAnimatingWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field private mIsClearingCurrentAnim:Z

.field mIsHomeKeyPressed:Z

.field mIsMeetContinuousTrans:Z

.field mIsOpen:Z

.field mIsOverrideAppTranAnim:Z

.field mIsRecentAppInvolve:Z

.field mIsRosieInvolve:Z

.field mLastAnimMillis:F

.field mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAppTranAnimType:I

.field mOverrideIsOpen:I

.field mOverrideTouchPoint:Landroid/graphics/Point;

.field mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSetAppTranAnimDuration:I

.field mSetAppTranAnimRate:I

.field mTouchPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    sget-boolean v2, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->USE_HTC_TRANSITION_ANIM:Z

    .line 35
    const-string v2, "debug_more_htcgl_log"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM:Z

    .line 37
    const-string v2, "debug_api"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_API:Z

    .line 39
    const-string v2, "debug_to_native"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_TO_NATIVE:Z

    .line 41
    const-string v2, "debug_anim_progress"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_PROGRESS:Z

    .line 43
    const-string v2, "debug_anim_choosen"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_CHOOSEN:Z

    .line 101
    const-string v2, "skip_OOBE_do_zoom"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    .line 110
    const-string v2, "customize_for_rosie"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdf

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    .line 116
    const-string v0, "hide_status_bar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->HIDE_STATUS_BAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    .line 54
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 55
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    .line 56
    const-string v0, "cont_anim_criteria"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->DELTA_CONTINUOUS_ANIM:I

    .line 60
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 63
    new-instance v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlTransAnimFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    .line 67
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    .line 80
    iput v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    .line 95
    const-string v0, "for_contentzoom_area"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_CONTENTZOOM_AREA:Z

    .line 96
    const-string v0, "for_zoom_point"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_ZOOM_POINT:Z

    .line 103
    const-string v0, "com.htc.android.htcsetupwizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 104
    const-string v0, "com.android.settings.LocalePickerSetupWizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->OOBE_LANGUGE_SETUP:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    return-void
.end method

.method private checkContinuousTrans()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float v1, v2

    .line 271
    .local v1, time:F
    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    sub-float v0, v1, v2

    .line 273
    .local v0, delta:F
    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->DELTA_CONTINUOUS_ANIM:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 274
    iput-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 275
    iput-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 283
    :cond_0
    iput v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    .line 284
    return-void
.end method

.method private debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 9
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    .line 992
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    move-object v0, p1

    .line 996
    .local v0, animObj:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anim name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transit type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1056
    :goto_0
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API end ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    :pswitch_0
    move-object v1, v0

    .line 1005
    check-cast v1, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 1007
    .local v1, animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    :try_start_0
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "point="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v5

    .line 1010
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    move-object v2, v0

    .line 1015
    check-cast v2, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 1017
    .local v2, animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    :try_start_1
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1023
    :catch_1
    move-exception v5

    .line 1024
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    move-object v3, v0

    .line 1029
    check-cast v3, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 1031
    .local v3, animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    :try_start_2
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1037
    :catch_2
    move-exception v5

    .line 1038
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_3
    move-object v4, v0

    .line 1043
    check-cast v4, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 1045
    .local v4, animObj5:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    :try_start_3
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1049
    :catch_3
    move-exception v5

    .line 1050
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private debugTransitType(I)V
    .locals 2
    .parameter "transit"

    .prologue
    .line 1060
    sparse-switch p1, :sswitch_data_0

    .line 1086
    :goto_0
    return-void

    .line 1062
    :sswitch_0
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    :sswitch_1
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    :sswitch_2
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_FRONT"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1074
    :sswitch_3
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1078
    :sswitch_4
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    :sswitch_5
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_BACK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_1
        0x100a -> :sswitch_2
        0x2007 -> :sswitch_3
        0x2009 -> :sswitch_4
        0x200b -> :sswitch_5
    .end sparse-switch
.end method

.method private handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 8
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 794
    move-object v0, p2

    check-cast v0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 796
    .local v0, centralAnim:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 799
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 808
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 813
    :cond_2
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 814
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 819
    :cond_3
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 820
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 822
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 823
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 824
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 827
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 828
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 829
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 832
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 834
    .local v1, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 839
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 840
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 841
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 842
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 862
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 863
    move-object v1, v5

    .line 864
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 865
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 867
    :cond_7
    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 844
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 846
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 848
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 849
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 850
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 851
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 852
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 854
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 855
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 856
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 857
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 7
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 875
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 877
    .local v1, contentAnim:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 880
    .local v3, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_2

    .line 889
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 894
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_0

    .line 895
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 897
    .local v4, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 898
    .local v2, header:Landroid/graphics/Rect;
    if-nez v2, :cond_3

    .line 899
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #header:Landroid/graphics/Rect;
    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 902
    .restart local v2       #header:Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 904
    .local v0, content:Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_6

    .line 907
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 908
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 909
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 910
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 922
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 923
    move-object v0, v4

    .line 924
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 926
    :cond_5
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 912
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_4

    .line 914
    iget-boolean v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_CONTENTZOOM_AREA:Z

    if-eqz v5, :cond_4

    .line 915
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 916
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 917
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 918
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 8
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 713
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 715
    .local v1, cubicAnim:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 718
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 727
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 732
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 733
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 738
    :cond_3
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 739
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 741
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 742
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 743
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 746
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 747
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 748
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 751
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 753
    .local v0, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 758
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 759
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 760
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 761
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 781
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 782
    move-object v0, v5

    .line 783
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 784
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 786
    :cond_7
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 763
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 765
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 767
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 768
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 769
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 770
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 771
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 773
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 774
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 775
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 776
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 6
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v0, 0x1

    .line 663
    sget-boolean v4, Lcom/android/server/wm/HtcGlAnimManager;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    if-eqz v4, :cond_4

    .line 664
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 666
    .local v1, mainWin:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_3

    .line 667
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.android.htcsetupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.LocalePickerSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 673
    .local v0, isSkip:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 677
    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setDuration(J)V

    .line 709
    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    return-void

    .line 667
    .restart local v1       #mainWin:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 671
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #isSkip:Z
    goto :goto_0

    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_4
    move-object v2, p2

    .line 683
    check-cast v2, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 686
    .local v2, zoomAnim:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    iget-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_ZOOM_POINT:Z

    if-eqz v4, :cond_7

    .line 687
    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 688
    .local v3, zoomPoint:Landroid/graphics/Point;
    if-nez v3, :cond_1

    .line 690
    iget-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    if-eqz v4, :cond_6

    .line 691
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    .line 692
    if-nez v3, :cond_5

    .line 693
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 695
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    :cond_5
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 697
    :cond_6
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 698
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 706
    .end local v3           #zoomPoint:Landroid/graphics/Point;
    :cond_7
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 707
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method


# virtual methods
.method public applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Z)Z
    .locals 7
    .parameter "wtoken"
    .parameter "a"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 407
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_1

    :cond_0
    move-object v0, p2

    .line 453
    check-cast v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 454
    .local v0, baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    iget-boolean v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    .line 455
    invoke-virtual {v0, p3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setEnterOrExit(Z)V

    .line 456
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOrientation(I)V

    .line 457
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getStatusBarRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setStatusBarRect(Landroid/graphics/Rect;)V

    .line 461
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 479
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setHtcGlAnimation(Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    .line 480
    const/4 v5, 0x1

    .end local v0           #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :goto_1
    return v5

    .line 414
    :cond_1
    instance-of v5, p2, Landroid/view/animation/AnimationSet;

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 417
    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 419
    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 421
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 426
    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    .line 427
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 428
    .local v1, child:Landroid/view/animation/Animation;
    instance-of v5, v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_4

    .line 429
    move-object p2, v1

    .line 433
    .end local v1           #child:Landroid/view/animation/Animation;
    :cond_3
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-nez v5, :cond_0

    move v5, v6

    .line 442
    goto :goto_1

    .line 426
    .restart local v1       #child:Landroid/view/animation/Animation;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1           #child:Landroid/view/animation/Animation;
    .end local v2           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_5
    move v5, v6

    .line 449
    goto :goto_1

    .line 463
    .restart local v0       #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :pswitch_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 467
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 471
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 475
    :pswitch_3
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 3
    .parameter "isEnter"

    .prologue
    const-wide/16 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    .line 392
    :goto_0
    return-object v0

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    if-eqz v0, :cond_1

    .line 309
    if-eqz p1, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_8

    .line 361
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    if-eqz v0, :cond_6

    .line 366
    if-eqz p1, :cond_5

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 319
    :cond_2
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 326
    :pswitch_1
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 338
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 343
    :cond_4
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 350
    :pswitch_4
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 353
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 373
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    if-eqz v0, :cond_8

    .line 378
    if-eqz p1, :cond_7

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 389
    :cond_8
    if-eqz p1, :cond_9

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 392
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method checkIfRoiseInvolve(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p1, openingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, closingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v4, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v4, :cond_1

    .line 938
    const/4 v2, 0x0

    .line 941
    .local v2, tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 942
    .local v0, NN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 943
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 944
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 945
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    :cond_0
    if-eqz v2, :cond_2

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/android/server/wm/HtcGlAnimManager;->doZoomTransition()V

    .line 965
    .end local v0           #NN:I
    .end local v1           #i:I
    .end local v2           #tokenName:Ljava/lang/String;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :goto_1
    return-void

    .line 942
    .restart local v0       #NN:I
    .restart local v1       #i:I
    .restart local v2       #tokenName:Ljava/lang/String;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 954
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 955
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 956
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_4

    .line 957
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    :cond_4
    if-eqz v2, :cond_5

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 960
    invoke-virtual {p0}, Lcom/android/server/wm/HtcGlAnimManager;->doZoomTransition()V

    goto :goto_1

    .line 954
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public cleanAnimParamsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 489
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 490
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 491
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 493
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 494
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 495
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 497
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 498
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 499
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 501
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 502
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 503
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 505
    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    .line 509
    return-void
.end method

.method public clearCurrentAnimationLocked()V
    .locals 4

    .prologue
    .line 639
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    .line 640
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 650
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 651
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 652
    .local v1, appToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearHtcGlAnimation()V

    .line 650
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 656
    .end local v1           #appToken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 657
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    .line 658
    return-void
.end method

.method public deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .parameter "appToken"

    .prologue
    .line 613
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_3

    .line 614
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 615
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 616
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 618
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, p1, :cond_2

    .line 619
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 620
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy3DAnimation()V

    .line 627
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    if-nez v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 630
    :cond_1
    const/high16 v3, -0x4080

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 615
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 634
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method doZoomTransition()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 972
    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 976
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 981
    return-void
.end method

.method public includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;III)V
    .locals 8
    .parameter "w"
    .parameter "attrs"
    .parameter "attrFlags"
    .parameter "innerDw"
    .parameter "innerDh"

    .prologue
    const/4 v7, 0x1

    .line 513
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_1

    .line 524
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    sget-boolean v5, Lcom/android/server/wm/HtcGlAnimManager;->HIDE_STATUS_BAR:Z

    if-eqz v5, :cond_4

    .line 533
    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 536
    .local v2, mainWin:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_2

    .line 540
    const/4 v0, 0x0

    .line 551
    .end local v2           #mainWin:Lcom/android/server/wm/WindowState;
    .local v0, isHideStatusBarArea:Z
    :goto_0
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5, v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsHideStatusBarArea(Z)V

    .line 554
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v7, :cond_0

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 556
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_5

    .line 558
    const/4 v1, 0x1

    .line 568
    .local v1, isMainWindow:Z
    :goto_1
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsMainWindow(Z)V

    .line 572
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeGlobalParamsToArray()[Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, outputGParams:[Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeSpecificParamsToArray()[Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, outputSParams:[Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3, v4}, Landroid/view/Surface;->set3DAnimationAttribute([Ljava/lang/String;[Ljava/lang/String;)V

    .line 589
    const/high16 v5, -0x4080

    iput v5, p1, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 591
    .end local v0           #isHideStatusBarArea:Z
    .end local v1           #isMainWindow:Z
    .end local v3           #outputGParams:[Ljava/lang/String;
    .end local v4           #outputSParams:[Ljava/lang/String;
    :cond_1
    return-void

    .line 542
    .restart local v2       #mainWin:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 545
    .end local v0           #isHideStatusBarArea:Z
    .end local v2           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 549
    .end local v0           #isHideStatusBarArea:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 560
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #isMainWindow:Z
    goto :goto_1

    .line 566
    .end local v1           #isMainWindow:Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #isMainWindow:Z
    goto :goto_1
.end method

.method public isOverrideAnimDuration()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    if-ltz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrideAnimRate()Z
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 155
    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-gt v0, v1, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 0
    .parameter "targetAnim"
    .parameter "isStart"

    .prologue
    .line 986
    invoke-virtual {p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->monitorTransAnim(Z)V

    .line 987
    return-void
.end method

.method public overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 3
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    const/4 v2, 0x1

    .line 192
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 202
    if-ne p1, p2, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "swipe_cubic"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object p2

    move-object v0, p2

    .line 209
    check-cast v0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    move-object v1, p1

    check-cast v1, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setDirection(I)V

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    move-object v0, p2

    .line 217
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 218
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 225
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/HtcGlAnimManager;->debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    goto :goto_0

    .line 221
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 222
    iput-object p2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_1
.end method

.method public progressAnimationLocked()V
    .locals 4

    .prologue
    .line 596
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 597
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 598
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getCurrentProgress()F

    move-result v1

    .line 599
    .local v1, progress:F
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    .line 605
    iput v1, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 606
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->step3DAnimation(F)V

    goto :goto_0

    .line 610
    .end local v1           #progress:F
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
    .locals 3
    .parameter "win"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 168
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    .line 136
    return-void
.end method

.method public setAnimationRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    .line 144
    return-void
.end method

.method public setTransitLocked(I)V
    .locals 1
    .parameter "transit"

    .prologue
    .line 249
    sparse-switch p1, :sswitch_data_0

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/HtcGlAnimManager;->checkContinuousTrans()V

    .line 267
    return-void

    .line 253
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    goto :goto_0

    .line 258
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    goto :goto_0

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method public startHomeByHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 233
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_0

    .line 237
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method
