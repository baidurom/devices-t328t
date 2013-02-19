.class public Lcom/htc/painting/penmenu/PenMenu;
.super Landroid/widget/FrameLayout;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/PenMenu$11;,
        Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;,
        Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;,
        Lcom/htc/painting/penmenu/PenMenu$DockCorner;,
        Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;,
        Lcom/htc/painting/penmenu/PenMenu$SignatureState;,
        Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;,
        Lcom/htc/painting/penmenu/PenMenu$StateMonitor;,
        Lcom/htc/painting/penmenu/PenMenu$State;
    }
.end annotation


# static fields
.field private static final ALPHA_BLURRED:I = 0xc0

.field public static final BASE_ID:I = 0x0

.field public static final CLEAR_ACTION_ID:I = 0x12c

.field public static final COLOR_MENU_ID:I = 0x3

.field private static final DEFAULT_ACTION_COUNT:I = 0x4

.field private static final DEFAULT_COLOR_COUNT:I = 0x8

.field private static final DEFAULT_HISTORY_COUNT:I = 0x5

.field private static final DEFAULT_MENU_COUNT:I = 0x3

.field private static final DEFAULT_SIZE_COUNT:I = 0x5

.field private static final DEFAULT_TYPE_COUNT:I = 0x7

.field public static final DISMISS_INTERVAL_DEFAULT:J = -0x1L

.field public static final DISMISS_INTERVAL_LONG:J = 0x2710L

.field public static final DISMISS_INTERVAL_MIN:J = 0x3e8L

.field public static final DISMISS_INTERVAL_NEVER:J = -0x1L

.field public static final DISMISS_INTERVAL_SHORT:J = 0x1388L

.field private static final ERASER_MODE_MIN_SIZE:F = 12.0f

.field private static final LOG_TAG:Ljava/lang/String; = "PenMenu"

.field public static final L_SIZE_ID:I = 0x1d

.field private static final MAX_ACTION_COUNT:I = 0x6

.field private static final MAX_HISTORY_COUNT:I = 0x8

.field private static final MAX_MENU_COUNT:I = 0x5

.field private static final MAX_OPTION_COUNT:I = 0x8

.field private static final MIN_ACTION_COUNT:I = 0x1

.field private static final MIN_HISTORY_COUNT:I = 0x1

.field private static final MIN_MENU_COUNT:I = 0x1

.field private static final MIN_OPTION_COUNT:I = 0x1

.field public static final M_SIZE_ID:I = 0x11

.field public static final PENSET_ALL:I = 0x0

.field public static final PENSET_DEFAULT:I = 0x0

.field public static final PENSET_SIMPLE:I = 0x1

.field public static final PENSET_SINGLE:I = 0x2

.field private static final PEN_KEY_ID:I = 0xd8

.field private static final PROMPT_EXTEND_WIDTH:I = 0x3c

.field private static final QUICK_BUTTON_ERASER_RATION:F = 2.5f

.field public static final REDO_ACTION_ID:I = 0x190

.field public static final SIZE_MENU_ID:I = 0x1

.field public static final STROKE_INVISIBLE:I = 0x0

.field public static final STROKE_VISIBLE:I = 0x1

.field public static final S_SIZE_ID:I = 0x9

.field public static final TYPE_MENU_ID:I = 0x2

.field public static final UNDO_ACTION_ID:I = 0x64

.field public static final VISIBLE_ACTION_ID:I = 0xc8

.field public static final XL_SIZE_ID:I = 0x2b

.field public static final XS_SIZE_ID:I = 0x5

.field private static sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/AnimationDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIM_DURATION:I

.field private final STROKE_INVISIBLE_ALPHA:I

.field private final STROKE_VISIBLE_ALPHA:I

.field private mActionCount:I

.field private mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

.field private mActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu/action/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

.field private mAnimInProgress:Z

.field private mAnimationEnabled:Z

.field private mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

.field private mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mColorCount:I

.field private mCurrentPen:Lcom/htc/painting/penmenu/Pen;

.field private volatile mDestoryStarted:Z

.field private mDismissTimerTask:Ljava/lang/Runnable;

.field private mDissmissInterval:J

.field private mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field private mEraserModeSize:F

.field private mForceHideStroke:Z

.field private mHandler:Landroid/os/Handler;

.field private mHistoryCount:I

.field private mIMERecever:Landroid/content/BroadcastReceiver;

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEraserMode:Z

.field private mLastUseTime:J

.field private mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

.field private mMenu:Lcom/htc/painting/penmenu/menu/Menu;

.field private mMenuCount:I

.field private mMenuOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

.field private mMoveInAnim:Landroid/view/animation/Animation;

.field private mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMoveOutAnim:Landroid/view/animation/Animation;

.field private mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

.field private mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

.field private mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

.field private mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

.field private mPenSetType:I

.field mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

.field private mPromptDismissInterval:J

.field private mPromptView:Landroid/widget/TextView;

.field private mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

.field private mRestoreSettingThread:Landroid/os/HandlerThread;

.field private mRestoreSettingToken:I

.field private mSelectedMenuId:I

.field private mSizeCount:I

.field private mState:Lcom/htc/painting/penmenu/PenMenu$State;

.field private mStateManager:Lcom/htc/painting/penmenu/StateManager;

.field private mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

.field private mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

.field private mStrokeVisibility:I

.field private mTypeCount:I

.field private mWarningEraserForFirstStroke:Z

.field private mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 868
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 875
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 881
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    .line 267
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 272
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 278
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$1;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$1;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    .line 290
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    .line 295
    iput v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    .line 300
    iput v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    .line 305
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    .line 310
    iput v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    .line 315
    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    .line 371
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    .line 373
    iput v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 383
    iput v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 389
    iput-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 402
    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 408
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$2;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$2;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 447
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$3;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$3;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 525
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    .line 530
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    .line 535
    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 541
    iput v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 547
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    .line 554
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    .line 566
    iput-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    .line 580
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    .line 682
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$4;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$4;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 718
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$5;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$5;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 818
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$6;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$6;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 839
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$7;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$7;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    .line 1069
    new-instance v2, Lcom/htc/painting/penmenu/StateManager;

    invoke-direct {v2}, Lcom/htc/painting/penmenu/StateManager;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    .line 2510
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$9;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$9;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 2804
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    .line 3665
    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 3963
    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 3965
    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 3967
    iput v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    .line 885
    new-instance v1, Landroid/util/TimingLogger;

    const-string v2, "PenMenu"

    const-string v3, "Constructor"

    invoke-direct {v1, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .local v1, timings:Landroid/util/TimingLogger;
    if-eqz p2, :cond_0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    .line 901
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    .line 902
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    .line 903
    invoke-static {}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->values()[Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 905
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->init()V

    .line 906
    const-string v2, "init()"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 913
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "IME_CURRENT_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, intentfilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$8;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenMenu$8;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    .line 929
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 931
    const-string v2, "finish"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 937
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/painting/penmenu/PenMenu;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/painting/penmenu/PenMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/painting/penmenu/PenMenu;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/htc/painting/penmenu/PenMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/painting/penmenu/PenMenu;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->onPainting()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/painting/penmenu/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/painting/penmenu/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreGlobalState()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->reloadPenData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->saveGlobalState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/painting/penmenu/PenMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    return v0
.end method

.method static synthetic access$2508(Lcom/htc/painting/penmenu/PenMenu;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->refreshAfterRestore()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/history/PenHistory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/action/ActionPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    return-void
.end method

.method private addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1499
    if-nez p1, :cond_0

    .line 1500
    const-string v1, "PenMenu"

    const-string v2, "addAction - item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :goto_0
    return v0

    .line 1504
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAction - action has existed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, item:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v0, 0x0

    .line 1484
    if-nez p1, :cond_0

    .line 1485
    const-string v1, "PenMenu"

    const-string v2, "addMenu - item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :goto_0
    return v0

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMenu - menu has existed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static adjustCanvasByCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "corner"
    .parameter "canvas"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/high16 v2, -0x4080

    .line 3691
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3707
    :goto_0
    return-void

    .line 3693
    :pswitch_0
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3694
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3697
    :pswitch_1
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3698
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3701
    :pswitch_2
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3702
    neg-int v0, p3

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3691
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3098
    if-nez p1, :cond_0

    move-object v2, v5

    .line 3127
    :goto_0
    return-object v2

    .line 3102
    :cond_0
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    invoke-direct {v2, p1, v5}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$1;)V

    .line 3104
    .local v2, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getX()F

    move-result v5

    neg-float v0, v5

    .line 3105
    .local v0, offsetX:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getY()F

    move-result v5

    neg-float v1, v5

    .line 3107
    .local v1, offsetY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 3110
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3111
    .local v4, y:F
    sget-object v5, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3125
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 3113
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 3114
    goto :goto_1

    .line 3116
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 3117
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 3118
    goto :goto_1

    .line 3120
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 3121
    goto :goto_1

    .line 3111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private adjustLayoutByParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .parameter "p"

    .prologue
    const/16 v6, 0x55

    const/16 v5, 0x53

    const/16 v4, 0x35

    const/16 v3, 0x33

    const/4 v1, -0x2

    .line 4213
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4214
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4216
    instance-of v1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_7

    move-object v0, p1

    .line 4217
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4218
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_1

    .line 4219
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4221
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_3

    .line 4222
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4224
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_5

    .line 4225
    :cond_4
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4227
    :cond_5
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_7

    .line 4228
    :cond_6
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4232
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 4233
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4234
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_a

    .line 4235
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4245
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    :goto_0
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 4246
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4247
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_d

    .line 4248
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4257
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    :goto_1
    return-void

    .line 4236
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_b

    .line 4237
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4238
    :cond_b
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_c

    .line 4239
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4240
    :cond_c
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_8

    .line 4241
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4249
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_e

    .line 4250
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 4251
    :cond_e
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_f

    .line 4252
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 4253
    :cond_f
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_9

    .line 4254
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private adjustMotionEvent(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    .locals 5
    .parameter "ev"

    .prologue
    .line 3793
    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$1;)V

    .line 3794
    .local v0, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3795
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3797
    .local v2, y:F
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3811
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3813
    return-object v0

    .line 3799
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 3800
    goto :goto_0

    .line 3802
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 3803
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 3804
    goto :goto_0

    .line 3806
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 3807
    goto :goto_0

    .line 3797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyCurrentPen(Lcom/htc/painting/penmenu/Pen;)V
    .locals 1
    .parameter "pen"

    .prologue
    .line 2024
    if-eqz p1, :cond_0

    .line 2025
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 2029
    :goto_0
    return-void

    .line 2027
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    goto :goto_0
.end method

.method private applyHistoryPens(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, historyPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x1

    .line 2032
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-nez v0, :cond_1

    .line 2033
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-ne v0, v2, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    goto :goto_0

    .line 2038
    :cond_2
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    goto :goto_0
.end method

.method private getColorOptions(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/ColorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/ColorItem;>;"
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1258
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x2070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1259
    .local v1, colors:Landroid/content/res/TypedArray;
    const v6, 0x2080299

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1261
    .local v4, platter:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1262
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1263
    .local v0, color:I
    new-instance v3, Lcom/htc/painting/penmenu/menu/ColorItem;

    invoke-direct {v3, v0, v4}, Lcom/htc/painting/penmenu/menu/ColorItem;-><init>(ILandroid/graphics/Bitmap;)V

    .line 1264
    .local v3, item:Lcom/htc/painting/penmenu/menu/ColorItem;
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v6}, Lcom/htc/painting/penmenu/menu/ColorItem;->setAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 1268
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    .end local v0           #color:I
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/ColorItem;
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1271
    const/4 v4, 0x0

    .line 1272
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1273
    return-void
.end method

.method private getIcon(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resId"

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1908
    .local v0, icon:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;
    .locals 5
    .parameter "typedArrayId"

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1097
    .local v1, iconArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v2, v4, [Landroid/graphics/Bitmap;

    .line 1098
    .local v2, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1099
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1100
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1098
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1104
    return-object v2
.end method

.method private getMostRecentConfigByType(ILjava/util/List;)Lcom/htc/painting/penmenu/Pen;
    .locals 4
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)",
            "Lcom/htc/painting/penmenu/Pen;"
        }
    .end annotation

    .prologue
    .local p2, configList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x0

    .line 1151
    if-nez p2, :cond_0

    move-object v0, v2

    .line 1162
    :goto_0
    return-object v0

    .line 1155
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/Pen;

    .line 1156
    .local v0, config:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1157
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #config:Lcom/htc/painting/penmenu/Pen;
    :cond_2
    move-object v0, v2

    .line 1162
    goto :goto_0
.end method

.method private getPaintingViewUndoRedo()V
    .locals 4

    .prologue
    .line 2632
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    if-eqz v2, :cond_0

    .line 2633
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canUndo()Z

    move-result v1

    .line 2634
    .local v1, enabled:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2635
    .local v0, action:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_1

    .line 2636
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setEnabled(Z)V

    .line 2642
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canRedo()Z

    move-result v1

    .line 2643
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #action:Lcom/htc/painting/penmenu/action/ActionItem;
    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2644
    .restart local v0       #action:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_2

    .line 2645
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setEnabled(Z)V

    .line 2651
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    .line 2653
    .end local v0           #action:Lcom/htc/painting/penmenu/action/ActionItem;
    .end local v1           #enabled:Z
    :cond_0
    return-void

    .line 2638
    .restart local v0       #action:Lcom/htc/painting/penmenu/action/ActionItem;
    .restart local v1       #enabled:Z
    :cond_1
    const-string v2, "PenMenu"

    const-string v3, "getPaintingViewUndoRedo - can\'t find undo action item! PenMenu may be destroyed by onDestroy()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2647
    :cond_2
    const-string v2, "PenMenu"

    const-string v3, "getPaintingViewUndoRedo - can\'t find redo action item! PenMenu may be destroyed by onDestroy()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPenTypeOptions(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/PenType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/PenType;>;"
    .local p2, mostRecentConfig:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p1, :cond_1

    .line 1169
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null input"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v4

    .line 1174
    .local v4, menuPenTypes:Lcom/htc/painting/penmenu/menu/MenuOptions;
    if-nez v4, :cond_2

    .line 1175
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null menu, it could be PenMenu be destroyed by onDestroy."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1179
    :cond_2
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v2

    .line 1180
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    if-nez v2, :cond_3

    .line 1181
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null pen type options!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 1186
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->release()V

    goto :goto_1

    .line 1191
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1193
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 1194
    .local v3, menu:Lcom/htc/painting/penmenu/menu/Menu;
    if-eqz v3, :cond_0

    .line 1195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/PenType;

    .line 1196
    .local v5, penType:Lcom/htc/painting/penmenu/PenType;
    new-instance v6, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;-><init>(Landroid/content/Context;)V

    .line 1197
    .local v6, pti:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v6, v5}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setPenType(Lcom/htc/painting/penmenu/PenType;)V

    .line 1198
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v7

    invoke-direct {p0, v7, p2}, Lcom/htc/painting/penmenu/PenMenu;->getMostRecentConfigByType(ILjava/util/List;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setMostRecentConfig(Lcom/htc/painting/penmenu/Pen;)V

    .line 1199
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Menu;->getMenuPanelSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setInnerRadius(I)V

    .line 1200
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setOuterRadius(I)V

    .line 1201
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1203
    .end local v5           #penType:Lcom/htc/painting/penmenu/PenType;
    .end local v6           #pti:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getPositionFor(I)I
    .locals 6
    .parameter "actionId"

    .prologue
    const/4 v5, 0x4

    .line 4108
    const/4 v1, 0x0

    .line 4109
    .local v1, ind:I
    sparse-switch p1, :sswitch_data_0

    .line 4125
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 4127
    .local v0, corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4133
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 4138
    .local v2, order:[I
    :goto_1
    aget v3, v2, v1

    return v3

    .line 4111
    .end local v0           #corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .end local v2           #order:[I
    :sswitch_0
    const/4 v1, 0x0

    .line 4112
    goto :goto_0

    .line 4114
    :sswitch_1
    const/4 v1, 0x1

    .line 4115
    goto :goto_0

    .line 4117
    :sswitch_2
    const/4 v1, 0x2

    .line 4118
    goto :goto_0

    .line 4120
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 4129
    .restart local v0       #corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    :pswitch_0
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 4130
    .restart local v2       #order:[I
    goto :goto_1

    .line 4109
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch

    .line 4127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 4133
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 4129
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getSizeOptions(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/SizeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1224
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/SizeItem;>;"
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1225
    .local v2, res:Landroid/content/res/Resources;
    const v6, 0x2070014

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 1227
    .local v4, sizeOptionSizes:[I
    const/4 v6, 0x5

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1228
    .local v5, sizeOptions:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 1229
    aget v3, v5, v0

    .line 1230
    .local v3, sizeId:I
    new-instance v1, Lcom/htc/painting/penmenu/menu/SizeItem;

    invoke-direct {v1, v3}, Lcom/htc/painting/penmenu/menu/SizeItem;-><init>(I)V

    .line 1231
    .local v1, item:Lcom/htc/painting/penmenu/menu/SizeItem;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    invoke-virtual {v1, v6}, Lcom/htc/painting/penmenu/menu/SizeItem;->setValidRadius(I)V

    .line 1235
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/SizeItem;
    .end local v3           #sizeId:I
    :cond_0
    return-void

    .line 1227
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 2
    .parameter "resources"

    .prologue
    .line 4172
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 4173
    .local v0, result:Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    if-nez v0, :cond_0

    .line 4174
    invoke-static {p0}, Lcom/htc/painting/penmenu/PenMenu;->makeWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 4175
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    .line 4177
    :cond_0
    return-object v0

    .line 4172
    .end local v0           #result:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    move-object v0, v1

    goto :goto_0
.end method

.method private hideInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1668
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    const-string v0, "PenMenu"

    const-string v1, "hide - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v0, v1, :cond_0

    .line 1674
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v0, v2, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->willChange(Lcom/htc/painting/penmenu/PenMenu$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    :cond_2
    iput-boolean v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1684
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 1685
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1688
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_4

    .line 1689
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1704
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->invalidate()V

    goto :goto_0

    .line 1692
    :cond_4
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_1

    .line 1696
    :cond_5
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1699
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v0, :cond_3

    .line 1700
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 975
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    .line 976
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/StateManager;->init(Landroid/content/Context;)V

    .line 978
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 979
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x209006d

    invoke-virtual {v0, v2, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 981
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v2

    if-ne v2, v8, :cond_0

    .line 982
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 987
    :goto_0
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 990
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/painting/penmenu/PenMenu;->getWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 993
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initTypeMenu()V

    .line 994
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initSizeMenu()V

    .line 995
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initColorMenu()V

    .line 998
    const v2, 0x202014c

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/base/BasePanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 999
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/base/BasePanel;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1003
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initActionItems()V

    .line 1006
    const v2, 0x2020149

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistory;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 1007
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/history/PenHistory;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1008
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V

    .line 1009
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v3, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 1012
    const v2, 0x202014a

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/action/ActionPanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    .line 1013
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1014
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1015
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/action/ActionPanel;->addOnActionClickListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V

    .line 1018
    const v2, 0x202014b

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/menu/Menu;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 1019
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/menu/Menu;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1020
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V

    .line 1021
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->addOnOptionChangeListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V

    .line 1022
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v2, v3, v5}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 1024
    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 1027
    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 1031
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMoveInOutAnims()V

    .line 1034
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setPenTypeLoadingListener(Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;)V

    .line 1035
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->initPenTypes(Landroid/content/Context;)Z

    .line 1038
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreLocalSetting()V

    .line 1040
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    .line 1041
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x55

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1043
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const v3, 0x20802e3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1045
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const v3, 0x20403b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1046
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1047
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20e00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20e00d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1051
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addView(Landroid/view/View;)V

    .line 1055
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1058
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "restore_setting"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 1059
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v8}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 1060
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1062
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;-><init>(Lcom/htc/painting/penmenu/PenMenu;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 1063
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    new-instance v3, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->setListener(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;)V

    .line 1065
    return-void

    .line 984
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    goto/16 :goto_0
.end method

.method private initActionItems()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    .line 1109
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 1114
    .local v0, actionIds:[I
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    .line 1119
    .local v4, iconArrayIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 1120
    new-instance v1, Lcom/htc/painting/penmenu/action/ActionItem;

    aget v5, v0, v3

    aget v6, v0, v3

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->getPositionFor(I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/htc/painting/penmenu/action/ActionItem;-><init>(II)V

    .line 1122
    .local v1, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    aget v5, v4, v3

    if-eqz v5, :cond_0

    .line 1123
    aget v5, v4, v3

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1127
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v2

    .line 1129
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initActionItems - addAction exception for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1133
    .end local v1           #actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 1109
    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 1114
    :array_1
    .array-data 0x4
        0xct 0x0t 0x7t 0x2t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x7t 0x2t
        0x10t 0x0t 0x7t 0x2t
    .end array-data
.end method

.method private initColorMenu()V
    .locals 6

    .prologue
    .line 1241
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1242
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x2070012

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1243
    const-string v3, "color"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1244
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1245
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/ColorItem;>;"
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1246
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getColorOptions(Ljava/util/List;)V

    .line 1248
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_0
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initColorMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSizeMenu()V
    .locals 6

    .prologue
    .line 1209
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1210
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x2070013

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1211
    const-string v3, "size"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1212
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1213
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/SizeItem;>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1214
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getSizeOptions(Ljava/util/List;)V

    .line 1216
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSizeMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTypeMenu()V
    .locals 6

    .prologue
    .line 1137
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1138
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x2070011

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1139
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1140
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1141
    .local v2, menuPenTypes:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1144
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTypeMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static makeWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 5
    .parameter "resources"

    .prologue
    .line 4180
    const/16 v3, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 4197
    .local v2, ripples:[I
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 4198
    .local v1, ret:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 4199
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 4198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4201
    :cond_0
    return-object v1

    .line 4180
    nop

    :array_0
    .array-data 0x4
        0x99t 0x2t 0x8t 0x2t
        0x9at 0x2t 0x8t 0x2t
        0x9bt 0x2t 0x8t 0x2t
        0x9ct 0x2t 0x8t 0x2t
        0x9dt 0x2t 0x8t 0x2t
        0x9et 0x2t 0x8t 0x2t
        0x9ft 0x2t 0x8t 0x2t
        0xa0t 0x2t 0x8t 0x2t
        0xa1t 0x2t 0x8t 0x2t
        0xa2t 0x2t 0x8t 0x2t
        0xa3t 0x2t 0x8t 0x2t
        0xa4t 0x2t 0x8t 0x2t
        0xa5t 0x2t 0x8t 0x2t
        0xa6t 0x2t 0x8t 0x2t
        0xa7t 0x2t 0x8t 0x2t
        0xa8t 0x2t 0x8t 0x2t
        0xa9t 0x2t 0x8t 0x2t
        0xaat 0x2t 0x8t 0x2t
        0xabt 0x2t 0x8t 0x2t
        0xact 0x2t 0x8t 0x2t
        0xadt 0x2t 0x8t 0x2t
        0xaet 0x2t 0x8t 0x2t
        0xaft 0x2t 0x8t 0x2t
        0xb0t 0x2t 0x8t 0x2t
        0xb1t 0x2t 0x8t 0x2t
        0xb2t 0x2t 0x8t 0x2t
        0xb3t 0x2t 0x8t 0x2t
        0xb4t 0x2t 0x8t 0x2t
        0xb5t 0x2t 0x8t 0x2t
        0xb6t 0x2t 0x8t 0x2t
        0xb7t 0x2t 0x8t 0x2t
    .end array-data
.end method

.method private onPainting()V
    .locals 1

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3899
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->hide()V

    .line 3901
    :cond_0
    return-void
.end method

.method private onPenDataStateChanged(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 4143
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 4144
    .local v2, panel:Lcom/htc/painting/penmenu/base/BasePanel;
    if-eqz v2, :cond_0

    .line 4145
    if-eqz p1, :cond_3

    .line 4146
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/base/BasePanel;->hideProgress()V

    .line 4152
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 4153
    .local v1, menu:Lcom/htc/painting/penmenu/menu/Menu;
    if-eqz v1, :cond_1

    .line 4154
    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/menu/Menu;->onPenDataStateChanged(Z)V

    .line 4156
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 4157
    .local v0, history:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v0, :cond_2

    .line 4158
    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->onPenDataStateChanged(Z)V

    .line 4159
    :cond_2
    return-void

    .line 4148
    .end local v0           #history:Lcom/htc/painting/penmenu/history/PenHistory;
    .end local v1           #menu:Lcom/htc/painting/penmenu/menu/Menu;
    :cond_3
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/base/BasePanel;->showProgress()V

    goto :goto_0
.end method

.method private refreshAfterRestore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4031
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-eqz v2, :cond_4

    .line 4032
    const/4 v0, 0x0

    .line 4033
    .local v0, isEraser:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v1

    .line 4034
    .local v1, penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v1, :cond_0

    .line 4035
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 4038
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    .line 4040
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v2, :cond_1

    .line 4041
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2, v3, v0}, Lcom/htc/painting/penmenu/base/BasePanel;->setPen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 4042
    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 4043
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->invalidate()V

    .line 4045
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreUIState()V

    .line 4047
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_2

    .line 4048
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2, v4}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->enablePainting(Z)V

    .line 4049
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 4052
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v2, :cond_3

    .line 4053
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-interface {v2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionInitialized()V

    .line 4063
    .end local v0           #isEraser:Z
    .end local v1           #penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_3
    :goto_0
    return-void

    .line 4059
    :cond_4
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v2, :cond_3

    .line 4060
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendRestoreSettingRequest(J)V

    goto :goto_0
.end method

.method private reloadPenData()V
    .locals 8

    .prologue
    .line 1518
    new-instance v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;

    invoke-direct {v3}, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;-><init>()V

    .line 1522
    .local v3, resourcce:Lcom/htc/painting/penmenu/PenManager$PenTypeResources;
    :try_start_0
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/htc/painting/penmenu/PenManager;->getPenTypeResource(ILcom/htc/painting/penmenu/PenManager$PenTypeResources;Landroid/content/Context;)Z

    move-result v4

    .line 1525
    .local v4, ret:Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1526
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mPenTypeList:Ljava/util/List;

    iget-object v6, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mMostRecentConfig:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeOptions(Ljava/util/List;Ljava/util/List;)V

    .line 1528
    const/4 v1, 0x0

    .line 1529
    .local v1, filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    packed-switch v5, :pswitch_data_0

    .line 1540
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown penset type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_0
    if-eqz v1, :cond_0

    .line 1543
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 1544
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;
    if-eqz v2, :cond_0

    .line 1545
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/htc/painting/penmenu/IPenSetFilter;->filter(Ljava/util/List;)V

    .line 1549
    .end local v2           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;
    :cond_0
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->applyCurrentPen(Lcom/htc/painting/penmenu/Pen;)V

    .line 1551
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mHistoryPenList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->applyHistoryPens(Ljava/util/List;)V

    .line 1563
    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    .end local v4           #ret:Z
    :goto_1
    return-void

    .line 1531
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    .restart local v4       #ret:Z
    :pswitch_0
    new-instance v1, Lcom/htc/painting/penmenu/AllPenSetFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/AllPenSetFilter;-><init>()V

    .line 1532
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1534
    :pswitch_1
    new-instance v1, Lcom/htc/painting/penmenu/SimplePenFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/SimplePenFilter;-><init>()V

    .line 1535
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1537
    :pswitch_2
    new-instance v1, Lcom/htc/painting/penmenu/SinglePenFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/SinglePenFilter;-><init>()V

    .line 1538
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1553
    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1556
    .end local v4           #ret:Z
    :catch_0
    move-exception v0

    .line 1557
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-boolean v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    if-eqz v5, :cond_2

    .line 1558
    const-string v5, "PenMenu"

    const-string v6, "PenMenu is destroyed while restoring"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1560
    :cond_2
    throw v0

    .line 1529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private restoreGlobalState()V
    .locals 5

    .prologue
    .line 3948
    invoke-static {}, Lcom/htc/painting/penmenu/menu/Menu$State;->values()[Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v1

    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v2, "menu_state"

    sget v3, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_MENU_STATE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 3950
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "selected_menu_id"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 3952
    return-void
.end method

.method private restoreLocalSetting()V
    .locals 6

    .prologue
    .line 3933
    invoke-static {}, Lcom/htc/painting/penmenu/PenMenu$State;->values()[Lcom/htc/painting/penmenu/PenMenu$State;

    move-result-object v2

    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    const-string v3, "penmenu_state"

    sget v4, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_PENMENU_STATE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/painting/penmenu/PenManager;->getFromSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 3935
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    const-string v2, "sticky_state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/painting/penmenu/PenManager;->getFromSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3937
    .local v0, stickyState:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3938
    return-void
.end method

.method private restoreTempState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3915
    const-string v0, "warningEraserForFirstStroke"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    .line 3916
    const-string v0, "penSetType"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 3918
    const-string v0, "strokeVisibility"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 3919
    const-string v0, "animationEnabled"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 3920
    const-string v0, "lastUseTime"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 3921
    const-string v0, "dismissTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 3922
    return-void
.end method

.method private restoreUIState()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 2354
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 2356
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v4, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v3, v4, :cond_1

    .line 2357
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {v3, v4, v9}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    .line 2358
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 2359
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 2367
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v4, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v3, v4, :cond_2

    .line 2368
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 2369
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    .line 2375
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v4, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v3, v4, :cond_4

    .line 2376
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2378
    iget-wide v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_0

    .line 2379
    iget-wide v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    sub-long/2addr v5, v7

    sub-long v0, v3, v5

    .line 2380
    .local v0, delayTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 2381
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    .line 2382
    iput-wide v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 2396
    .end local v0           #delayTime:J
    :cond_0
    :goto_2
    return-void

    .line 2362
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->MENU:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {v3, v4, v9}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    .line 2363
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 2364
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v3, v9}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    goto :goto_0

    .line 2371
    :cond_2
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 2372
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_1

    .line 2386
    .restart local v0       #delayTime:J
    :cond_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 2387
    .local v2, ret:Z
    if-nez v2, :cond_0

    .line 2388
    const-string v3, "PenMenu"

    const-string v4, "restoreUIState - postDelayed failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2392
    .end local v0           #delayTime:J
    .end local v2           #ret:Z
    :cond_4
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenManager;->isPromptHowToShowPenMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2393
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->showPrompt()V

    goto :goto_2
.end method

.method private saveGlobalState()V
    .locals 4

    .prologue
    .line 3941
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "menu_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/Menu$State;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3943
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "selected_menu_id"

    iget v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3945
    return-void
.end method

.method private saveLocalState()V
    .locals 4

    .prologue
    .line 3926
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "penmenu_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$State;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setToSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3928
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "sticky_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getRawStickyState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setToSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3930
    return-void
.end method

.method private saveTempState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3905
    const-string v0, "dismissTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3906
    const-string v0, "lastUseTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3907
    const-string v0, "penSetType"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3908
    const-string v0, "animationEnabled"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3910
    const-string v0, "strokeVisibility"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3911
    const-string v0, "warningEraserForFirstStroke"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3912
    return-void
.end method

.method private setActionCount(I)V
    .locals 1
    .parameter "actionCount"

    .prologue
    .line 1920
    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 1921
    const/4 p1, 0x6

    .line 1926
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    .line 1927
    return-void

    .line 1923
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1924
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setAnimInProgress(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 4162
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vicky setProgress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 4164
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 4165
    return-void
.end method

.method private setColorCount(I)V
    .locals 1
    .parameter "colorCount"

    .prologue
    .line 1984
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1985
    const/16 p1, 0x8

    .line 1990
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    .line 1991
    return-void

    .line 1987
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1988
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setHistoryCount(I)V
    .locals 1
    .parameter "historyCount"

    .prologue
    .line 1936
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1937
    const/16 p1, 0x8

    .line 1942
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    .line 1943
    return-void

    .line 1939
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1940
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setMenuCount(I)V
    .locals 1
    .parameter "menuCount"

    .prologue
    .line 1952
    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 1953
    const/4 p1, 0x5

    .line 1958
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    .line 1959
    return-void

    .line 1955
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1956
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setPaintingViewDisplayAlpha()V
    .locals 2

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_1

    .line 2693
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    if-nez v0, :cond_2

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setDisplayAlpha(I)V

    .line 2701
    :cond_1
    :goto_0
    return-void

    .line 2698
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setDisplayAlpha(I)V

    goto :goto_0
.end method

.method private setPaintingViewStroke()V
    .locals 9

    .prologue
    .line 2656
    iget-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2689
    :cond_0
    :goto_0
    return-void

    .line 2660
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-eqz v6, :cond_0

    .line 2661
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v2

    .line 2662
    .local v2, penId:I
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v1

    .line 2663
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-nez v1, :cond_2

    .line 2664
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPaintingViewStroke - no PenTypeItem found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2668
    :cond_2
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    .line 2669
    .local v3, penType:Lcom/htc/painting/penmenu/PenType;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v6

    if-nez v6, :cond_4

    .line 2670
    :cond_3
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPaintingViewStroke - no PenType found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2680
    :cond_4
    new-instance v5, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v5}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 2681
    .local v5, sp:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 2682
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/painting/penmenu/PenType;->getPenSize(I)F

    move-result v4

    .line 2683
    .local v4, size:F
    invoke-virtual {v5, v4}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 2684
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 2685
    .local v0, isEraser:Z
    invoke-virtual {v5, v0}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 2687
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method private setRotateInOut()V
    .locals 12

    .prologue
    const/high16 v1, 0x42b4

    const/high16 v7, -0x3d4c

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3859
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v11

    .line 3860
    .local v11, size:I
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 3887
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3888
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3890
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3891
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3892
    return-void

    .line 3862
    :pswitch_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v6, v11

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3864
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v10, v11

    move v5, v2

    move v6, v1

    move v7, v3

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3868
    :pswitch_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, v7

    move v4, v2

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3870
    new-instance v4, Landroid/view/animation/RotateAnimation;

    move v5, v2

    move v6, v7

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3874
    :pswitch_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v4, v11

    int-to-float v6, v11

    move v1, v7

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3876
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v8, v11

    int-to-float v10, v11

    move v5, v2

    move v6, v7

    move v7, v3

    move v9, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3880
    :pswitch_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v4, v11

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3882
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v8, v11

    move v5, v2

    move v6, v1

    move v7, v3

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3860
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setSizeCount(I)V
    .locals 1
    .parameter "sizeCount"

    .prologue
    .line 2000
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 2001
    const/16 p1, 0x8

    .line 2006
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    .line 2007
    return-void

    .line 2003
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2004
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1468
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne p1, v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->setVisibility(I)V

    .line 1470
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/menu/Menu;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    .line 1480
    :goto_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 1481
    return-void

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanel;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTranstalteInOut()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3823
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v11

    .line 3824
    .local v11, size:I
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 3851
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3852
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3854
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3855
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3856
    return-void

    .line 3826
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v11

    int-to-float v2, v2

    int-to-float v6, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3828
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v11

    int-to-float v6, v0

    int-to-float v10, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3832
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v11

    int-to-float v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3834
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v11

    int-to-float v6, v0

    neg-int v0, v11

    int-to-float v10, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3838
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v11

    int-to-float v6, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3840
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v11

    int-to-float v10, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3844
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v11

    neg-int v3, v11

    int-to-float v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3846
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v11

    neg-int v0, v11

    int-to-float v10, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 3824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setTypeCount(I)V
    .locals 1
    .parameter "typeCount"

    .prologue
    .line 1968
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1969
    const/16 p1, 0x8

    .line 1974
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    .line 1975
    return-void

    .line 1971
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1972
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setWidthForPrompt(Z)V
    .locals 2
    .parameter "showPrompt"

    .prologue
    .line 3594
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3595
    .local v0, param:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3596
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3600
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3601
    return-void

    .line 3598
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setupHitoryPens(ZILjava/util/List;)V
    .locals 5
    .parameter "isSimplePen"
    .parameter "currentPenOrder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p3, historyPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p3, :cond_1

    .line 966
    :cond_0
    return-void

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 953
    .local v2, penHistory:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistory;->reset()V

    .line 956
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/Pen;

    .line 957
    .local v1, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v1, :cond_2

    .line 958
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->refreshHistorySeqNo()I

    move-result v3

    .line 959
    .local v3, sn:I
    if-ne v3, p2, :cond_3

    .line 960
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->refreshHistorySeqNo()I

    .line 962
    :cond_3
    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->addPen(Lcom/htc/painting/penmenu/Pen;)I

    goto :goto_0
.end method

.method private setupMenus()V
    .locals 13

    .prologue
    .line 1279
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v9

    .line 1281
    .local v9, typeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    packed-switch v10, :pswitch_data_0

    .line 1295
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v5

    .line 1296
    .local v5, penTypeId:I
    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v4

    .line 1298
    .local v4, pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v1

    .line 1299
    .local v1, colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v8

    .line 1300
    .local v8, sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-nez v4, :cond_2

    .line 1301
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1302
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1397
    :cond_1
    :goto_1
    return-void

    .line 1284
    .end local v1           #colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v4           #pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v5           #penTypeId:I
    .end local v8           #sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :pswitch_0
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 1287
    :pswitch_1
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1288
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 1289
    const/4 v10, 0x3

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    goto :goto_0

    .line 1307
    .restart local v1       #colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .restart local v4       #pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .restart local v5       #penTypeId:I
    .restart local v8       #sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :cond_2
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1310
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 1311
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 1313
    :cond_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1319
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1322
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1323
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 1325
    :cond_4
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1332
    :goto_3
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1333
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1334
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1336
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    packed-switch v10, :pswitch_data_1

    .line 1349
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1350
    .local v0, colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1351
    .local v3, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v11

    if-ne v10, v11, :cond_8

    .line 1352
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 1358
    :goto_6
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v10

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/PenType;->isColorSupported(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1360
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_5

    .line 1316
    .end local v0           #colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_6
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_2

    .line 1328
    :cond_7
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_3

    .line 1338
    :pswitch_2
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1341
    :pswitch_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1344
    :pswitch_4
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1355
    .restart local v0       #colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_6

    .line 1363
    :cond_9
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_5

    .line 1368
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1369
    .local v7, sizeItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1370
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 1371
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 1377
    :goto_8
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_7

    .line 1374
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_8

    .line 1381
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1382
    .local v6, pentypeItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1383
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v11

    if-ne v10, v11, :cond_d

    .line 1384
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_9

    .line 1387
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_9

    .line 1391
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_e
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v11, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    iget v12, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v10, v11, v12}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 1394
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v10, :cond_1

    .line 1395
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto/16 :goto_1

    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setupMoveInOutAnims()V
    .locals 0

    .prologue
    .line 3818
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setRotateInOut()V

    .line 3819
    return-void
.end method

.method private setupStrokeVisibleActionItem(I)V
    .locals 3
    .parameter "strokeState"

    .prologue
    .line 2264
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2265
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_0

    .line 2266
    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;

    invoke-direct {v1, p0, v0, p1}, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;-><init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setState(Lcom/htc/painting/penmenu/action/ActionState;)V

    .line 2270
    :goto_0
    return-void

    .line 2268
    :cond_0
    const-string v1, "PenMenu"

    const-string v2, "setupStrokeVisibleState - can\'t find stroke visible action item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1582
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    const-string v1, "PenMenu"

    const-string v2, "show - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/StateManager;->wouldShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v1, v2, :cond_5

    .line 1599
    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v1, v4, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v1, :cond_2

    .line 1603
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->willChange(Lcom/htc/painting/penmenu/PenMenu$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    :cond_2
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1609
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1611
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v1, :cond_3

    .line 1612
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 1615
    :cond_3
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 1616
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1618
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_4

    .line 1620
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v2, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 1622
    :cond_4
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1641
    :cond_5
    :goto_1
    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 1643
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 1644
    .local v0, ret:Z
    if-nez v0, :cond_0

    .line 1645
    const-string v1, "PenMenu"

    const-string v2, "show - postDelayed failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    .end local v0           #ret:Z
    :cond_6
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_7

    .line 1627
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1628
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    .line 1634
    :goto_2
    iput-boolean v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1635
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v1, :cond_5

    .line 1636
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    goto :goto_1

    .line 1631
    :cond_7
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1632
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_2
.end method

.method private toAngle(FF)D
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3353
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, p1

    .line 3354
    .local v3, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, p2

    .line 3356
    .local v2, h:F
    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 3357
    .local v0, arc:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private toRadius(FF)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 3363
    .local v1, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 3365
    .local v0, h:F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private updateBlockConditions(Ljava/lang/String;Z)V
    .locals 3
    .parameter "conditionKey"
    .parameter "block"

    .prologue
    const/4 v2, 0x0

    .line 3955
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/penmenu/StateManager;->updateBlockCondition(Ljava/lang/String;Z)Z

    move-result v0

    .line 3956
    .local v0, show:Z
    if-eqz v0, :cond_0

    .line 3957
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    .line 3961
    :goto_0
    return-void

    .line 3959
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public OnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 2502
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    const-string v0, "PenMenu"

    const-string v1, "OnRestoreInstanceState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :goto_0
    return-void

    .line 2507
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->restoreTempState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public OnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2478
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    const-string v0, "PenMenu"

    const-string v1, "OnSaveInstanceState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    :goto_0
    return-void

    .line 2483
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->saveTempState(Landroid/os/Bundle;)V

    .line 2485
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z

    goto :goto_0
.end method

.method public changeAction(II[I)Z
    .locals 11
    .parameter "fromActionId"
    .parameter "toActionId"
    .parameter "iconResIds"

    .prologue
    const/4 v7, 0x0

    .line 2948
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2949
    const-string v8, "PenMenu"

    const-string v9, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2983
    :goto_0
    return v5

    .line 2953
    :cond_0
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2954
    .local v1, fromItem:Lcom/htc/painting/penmenu/action/ActionItem;
    if-nez v1, :cond_1

    .line 2955
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction - the action id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2956
    goto :goto_0

    .line 2959
    :cond_1
    new-instance v6, Lcom/htc/painting/penmenu/action/ActionItem;

    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->getPositionFor(I)I

    move-result v8

    invoke-direct {v6, p2, v8}, Lcom/htc/painting/penmenu/action/ActionItem;-><init>(II)V

    .line 2961
    .local v6, toItem:Lcom/htc/painting/penmenu/action/ActionItem;
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v8

    int-to-float v4, v8

    .line 2962
    .local v4, inner:F
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/action/ActionPanel;->getSize()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getBeginAngleByDegree()F

    move-result v9

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleRangeByDegree()F

    move-result v10

    invoke-virtual {v6, v4, v8, v9, v10}, Lcom/htc/painting/penmenu/action/ActionItem;->setPosition(FFFF)V

    .line 2964
    if-eqz p3, :cond_3

    array-length v8, p3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 2965
    array-length v8, p3

    new-array v3, v8, [Landroid/graphics/Bitmap;

    .line 2966
    .local v3, icons:[Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, p3

    if-ge v2, v8, :cond_2

    .line 2967
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aget v9, p3, v2

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v3, v2

    .line 2966
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2970
    :cond_2
    invoke-virtual {v6, v3}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 2973
    .end local v2           #i:I
    .end local v3           #icons:[Landroid/graphics/Bitmap;
    :cond_3
    const/4 v5, 0x0

    .line 2975
    .local v5, ret:Z
    :try_start_0
    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2980
    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/action/ActionPanel;->resetActions()V

    .line 2981
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->release()V

    goto :goto_0

    .line 2976
    :catch_0
    move-exception v0

    .line 2977
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction - addAction exception for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2978
    goto/16 :goto_0
.end method

.method public changeMenuState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1774
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1775
    const-string v1, "PenMenu"

    const-string v2, "changeMenuState - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_0
    :goto_0
    return v0

    .line 1779
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    iget-boolean v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v2, v1, :cond_0

    .line 1786
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1788
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->changeState(I)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 1789
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v2, v3, :cond_2

    .line 1790
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1791
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    :goto_1
    move v0, v1

    .line 1797
    goto :goto_0

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_1
.end method

.method changePen(II)V
    .locals 6
    .parameter "menuId"
    .parameter "optionId"

    .prologue
    const/4 v5, 0x1

    .line 637
    const/4 v2, 0x0

    .line 638
    .local v2, tempPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 639
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v2

    .line 649
    :cond_0
    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 650
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenColor(I)V

    .line 661
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getHistoryPens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 664
    .local v0, countBefore:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getSamePen(Lcom/htc/painting/penmenu/Pen;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 665
    .local v1, sameHistoryPen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v1, :cond_2

    .line 666
    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 667
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 671
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu/Pen;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_3

    .line 672
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->addPen(Lcom/htc/painting/penmenu/Pen;)I

    .line 677
    :cond_3
    return-void

    .line 643
    .end local v0           #countBefore:I
    .end local v1           #sameHistoryPen:Lcom/htc/painting/penmenu/Pen;
    :cond_4
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->isFromHistory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v2

    goto :goto_0

    .line 652
    :cond_5
    if-ne p1, v5, :cond_6

    .line 653
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenSizeId(I)V

    goto :goto_1

    .line 655
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 657
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenType(I)V

    .line 658
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    goto :goto_1
.end method

.method public changeState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1716
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    const-string v0, "PenMenu"

    const-string v1, "changeState- PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :goto_0
    return-void

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v0, v1, :cond_1

    .line 1722
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_0

    .line 1725
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    goto :goto_0
.end method

.method public dismissPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3554
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3557
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setWidthForPrompt(Z)V

    .line 3558
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z

    .line 3560
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/high16 v2, -0x4080

    .line 3715
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3716
    const-string v0, "PenMenu"

    const-string v1, "dispatchDraw - not visible, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :goto_0
    return-void

    .line 3720
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3721
    const-string v0, "PenMenu"

    const-string v1, "dispatchDraw - receive event after destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3725
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3727
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3744
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 3729
    :pswitch_0
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3730
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3733
    :pswitch_1
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3734
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3737
    :pswitch_2
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3738
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 3771
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3776
    .local v1, isPen:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3777
    const-string v3, "PenMenu"

    const-string v4, "dispatchPenEvent - receive event after destroyed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    const/4 v0, 0x0

    .line 3787
    :goto_0
    return v0

    .line 3781
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 3783
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->adjustMotionEvent(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v2

    .line 3784
    .local v2, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3785
    .local v0, consumed:Z
    invoke-static {p1, v2}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v0, 0x0

    .line 3750
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3766
    :goto_0
    :pswitch_0
    return v0

    .line 3754
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-ne p2, v1, :cond_1

    .line 3756
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3766
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 3758
    :pswitch_1
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3759
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public forceHideStroke(Z)I
    .locals 2
    .parameter "forceHide"

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    const-string v0, "PenMenu"

    const-string v1, "forceHideStroke - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 3017
    :goto_0
    return v0

    .line 3012
    :cond_0
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    .line 3013
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    .line 3015
    const-string v0, "key_force_off"

    invoke-direct {p0, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    .line 3017
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    goto :goto_0
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 1916
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/action/ActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1452
    :goto_0
    return-object v0

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1451
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getActionPanelSize()I
    .locals 2

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1087
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->getSize()I

    move-result v0

    .line 1091
    :cond_0
    return v0
.end method

.method public getBasePanelSize()I
    .locals 2

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1076
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v0

    .line 1080
    :cond_0
    return v0
.end method

.method public getCenter(I)Landroid/graphics/Point;
    .locals 8
    .parameter "elementId"

    .prologue
    .line 3052
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3053
    const-string v4, "PenMenu"

    const-string v5, "getCenter - PenMenu has already been destroyed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    const/4 v3, 0x0

    .line 3089
    :goto_0
    return-object v3

    .line 3057
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3059
    .local v3, ret:Landroid/graphics/Point;
    sparse-switch p1, :sswitch_data_0

    .line 3081
    const/4 v3, 0x0

    goto :goto_0

    .line 3061
    :sswitch_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3062
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 3067
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 3068
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v1

    .line 3069
    .local v1, menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3070
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 3076
    .end local v1           #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v2           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :sswitch_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 3077
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3078
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 3059
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public getColorCount()I
    .locals 1

    .prologue
    .line 1980
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    return v0
.end method

.method public getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    return-object v0
.end method

.method public getCurrentOptionPosition(I)I
    .locals 6
    .parameter "menuId"

    .prologue
    .line 3189
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3190
    const-string v4, "PenMenu"

    const-string v5, "getCurrentOptionPosition - PenMenu has already been destroyed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const/4 v3, -0x1

    .line 3210
    :cond_0
    :goto_0
    return v3

    .line 3194
    :cond_1
    const/4 v3, -0x1

    .line 3195
    .local v3, ret:I
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 3196
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v2, :cond_0

    .line 3197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 3198
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 3199
    .local v1, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getFocus()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3200
    move v3, v0

    .line 3201
    goto :goto_0

    .line 3197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCurrentPen()Lcom/htc/painting/penmenu/Pen;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    return-object v0
.end method

.method public getCurrentPenCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1425
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 1427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPenColor()I
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1418
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPenSizeId()I
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, -0x1

    .line 1412
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPenType()I
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1402
    const/4 v0, -0x1

    .line 1404
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getHistoryCount()I
    .locals 1

    .prologue
    .line 1932
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    return v0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 1948
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    return v0
.end method

.method public getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;
    .locals 3
    .parameter "menuId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1459
    :cond_0
    const/4 v0, 0x0

    .line 1463
    :goto_0
    return-object v0

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 1463
    .local v0, ret:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    goto :goto_0
.end method

.method public getMenuOptionsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1440
    :goto_0
    return-object v0

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1439
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getMenuState()Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method public getOptionCenter(II)Landroid/graphics/Point;
    .locals 9
    .parameter "menuId"
    .parameter "optionPos"

    .prologue
    const/high16 v8, 0x42b4

    const/high16 v7, 0x4000

    const/4 v5, 0x0

    .line 3266
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3267
    const-string v6, "PenMenu"

    const-string v7, "getOptionCenter - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_0
    :goto_0
    return-object v5

    .line 3271
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getOptionCount(I)I

    move-result v2

    .line 3272
    .local v2, count:I
    if-lez v2, :cond_0

    .line 3276
    if-ltz p2, :cond_0

    if-ge p2, v2, :cond_0

    .line 3280
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v5, v7

    .line 3281
    .local v0, ICON_ORBIT_RADIUS:F
    int-to-float v5, v2

    mul-float/2addr v5, v7

    div-float v5, v8, v5

    int-to-float v6, v2

    div-float v6, v8, v6

    int-to-float v7, p2

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 3282
    .local v1, angle:F
    float-to-double v5, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 3283
    .local v3, x:I
    float-to-double v5, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 3285
    .local v4, y:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getOptionCount(I)I
    .locals 7
    .parameter "menuId"

    .prologue
    const/4 v4, 0x0

    .line 3156
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3157
    const-string v5, "PenMenu"

    const-string v6, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_0
    :goto_0
    return v4

    .line 3161
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v3

    .line 3162
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v3, :cond_0

    .line 3166
    const/4 v1, 0x0

    .line 3169
    .local v1, ignoredCount:I
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v2

    .line 3170
    .local v2, itemsCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3171
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->isIgnored()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3172
    add-int/lit8 v1, v1, 0x1

    .line 3170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3176
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    goto :goto_0
.end method

.method public getPenSetType()I
    .locals 1

    .prologue
    .line 2076
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    return v0
.end method

.method public getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .locals 7
    .parameter "penTypeId"

    .prologue
    const/4 v4, 0x0

    .line 1884
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1885
    const-string v5, "PenMenu"

    const-string v6, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 1901
    :goto_0
    return-object v1

    .line 1889
    :cond_0
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 1890
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    if-eqz v3, :cond_2

    .line 1893
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1894
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 1895
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getId()I

    move-result v5

    if-ne v5, p1, :cond_1

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    :cond_2
    move-object v1, v4

    .line 1901
    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 3022
    const/4 v0, 0x0

    .line 3023
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v1, :cond_0

    .line 3024
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v0

    .line 3026
    :cond_0
    return v0
.end method

.method public getSizeCount()I
    .locals 1

    .prologue
    .line 1996
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    return v0
.end method

.method public getState()Lcom/htc/painting/penmenu/PenMenu$State;
    .locals 1

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    return-object v0
.end method

.method public getStickyState()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v0

    return v0
.end method

.method public getStrokesAlpha()I
    .locals 2

    .prologue
    .line 3031
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    if-nez v0, :cond_1

    .line 3036
    :cond_0
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    .line 3042
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    goto :goto_0
.end method

.method public getTypeCount()I
    .locals 1

    .prologue
    .line 1964
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    return v0
.end method

.method public handleChangeOptionMotionEvent(IILandroid/view/MotionEvent;)Z
    .locals 10
    .parameter "menuId"
    .parameter "optionPos"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3224
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3225
    const-string v6, "PenMenu"

    const-string v7, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 3251
    :goto_0
    return v0

    .line 3229
    :cond_0
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v7, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v7, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    if-eq v6, p1, :cond_2

    :cond_1
    move v0, v5

    .line 3232
    goto :goto_0

    .line 3235
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v3

    .line 3236
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-nez v3, :cond_3

    move v0, v5

    .line 3237
    goto :goto_0

    .line 3241
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 3243
    .local v2, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-direct {p0, p3}, Lcom/htc/painting/penmenu/PenMenu;->adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v4

    .line 3244
    .local v4, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    const/4 v0, 0x0

    .line 3245
    .local v0, consumed:Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/htc/painting/penmenu/menu/OptionItem;->contain(DD)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3246
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p3}, Lcom/htc/painting/penmenu/menu/Menu;->handlePenEvent(ZLandroid/view/MotionEvent;)Z

    move-result v0

    .line 3248
    :cond_4
    invoke-static {p3, v4}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3250
    .end local v0           #consumed:Z
    .end local v2           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    .end local v4           #record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    move v0, v5

    .line 3251
    goto :goto_0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2087
    const/4 v0, 0x0

    .line 2096
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2097
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2097
    goto :goto_0

    .line 2100
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2101
    const-string v1, "PenMenu"

    const-string v3, "handleKeyEvent - PenMenu has already been destroyed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2102
    goto :goto_0

    .line 2105
    :cond_3
    const/16 v3, 0xd8

    if-ne p1, v3, :cond_6

    .line 2107
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 2116
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    const-string v4, "key_ime_show"

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/StateManager;->isBlocked(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_7

    .line 2118
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 2120
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_4

    .line 2121
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2123
    :cond_4
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v1, :cond_5

    .line 2124
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/base/BasePanel;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2138
    :cond_5
    :goto_1
    const/4 v0, 0x1

    :cond_6
    move v1, v0

    .line 2141
    goto :goto_0

    .line 2126
    :cond_7
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    const-string v3, "key_overlay_ui"

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/StateManager;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_8

    .line 2127
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    goto :goto_1

    .line 2129
    :cond_8
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->changeState()V

    goto :goto_1

    .line 2132
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 2135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    goto :goto_1
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 17
    .parameter "elementId"
    .parameter "event"

    .prologue
    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3299
    const-string v15, "PenMenu"

    const-string v16, "handleMotionEvent - PenMenu has already been destroyed!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    const/4 v12, 0x0

    .line 3348
    :goto_0
    return v12

    .line 3303
    :cond_0
    const/4 v12, 0x0

    .line 3305
    .local v12, ret:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v11

    .line 3307
    .local v11, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    sparse-switch p1, :sswitch_data_0

    .line 3346
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V

    goto :goto_0

    .line 3309
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/htc/painting/penmenu/base/BasePanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 3310
    goto :goto_1

    .line 3314
    :sswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v8

    .line 3315
    .local v8, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v7

    .line 3316
    .local v7, menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toRadius(FF)D

    move-result-wide v13

    .line 3317
    .local v13, rm:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toAngle(FF)D

    move-result-wide v5

    .line 3318
    .local v5, am:D
    double-to-float v15, v13

    double-to-float v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/htc/painting/penmenu/menu/MenuItem;->contain(FF)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->handlePenEvent(ZLandroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_1

    .line 3326
    .end local v5           #am:D
    .end local v7           #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v8           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v13           #rm:D
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 3327
    .local v4, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toRadius(FF)D

    move-result-wide v9

    .line 3328
    .local v9, ra:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toAngle(FF)D

    move-result-wide v2

    .line 3329
    .local v2, aa:D
    double-to-float v15, v9

    double-to-float v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/htc/painting/penmenu/action/ActionItem;->contain(FF)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_1

    .line 3307
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public hide()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    .line 1659
    return-void
.end method

.method public hide(ZZ)V
    .locals 3
    .parameter "playAnimation"
    .parameter "turnOffStickyState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3384
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3385
    const-string v0, "PenMenu"

    const-string v1, "hide - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    :goto_0
    return-void

    .line 3389
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    const/4 p1, 0x0

    .line 3393
    :cond_1
    if-ne p2, v1, :cond_2

    .line 3394
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3397
    :cond_2
    if-eqz p1, :cond_3

    .line 3398
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3399
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    goto :goto_0

    .line 3401
    :cond_3
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3402
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    .line 3403
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method public isAnimactionEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2791
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstCreated()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3635
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3636
    const-string v2, "PenMenu"

    const-string v3, "hide - PenMenu has already been destroyed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3653
    :cond_0
    :goto_0
    return v0

    .line 3640
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->isFirstCreate(Landroid/content/Context;)Z

    move-result v0

    .line 3641
    .local v0, ret:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3645
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3646
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/htc/painting/penmenu/PenManager;->saveFirstCreate(ZLandroid/content/Context;)Z

    goto :goto_0
.end method

.method public isFistCreated()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3625
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isFirstCreated()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4261
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4262
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setShowSWPenButton(Z)Z

    .line 4263
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2806
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    .line 2811
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2812
    const-string v6, "PenMenu"

    const-string v7, "onDestroy - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :goto_0
    return-void

    .line 2817
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->clearAnimation()V

    .line 2819
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->setVisibility(I)V

    .line 2821
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2823
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v6, :cond_1

    .line 2824
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->removeMessages(I)V

    .line 2825
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 2827
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    if-eqz v6, :cond_2

    .line 2828
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    .line 2829
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 2832
    :cond_2
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v6, :cond_3

    .line 2833
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v6, v7}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2834
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    .line 2837
    :cond_3
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_4

    .line 2838
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2839
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    .line 2842
    :cond_4
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2844
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->saveLocalState()V

    .line 2846
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/base/BasePanel;->releaseResources()V

    .line 2847
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 2849
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistory;->releaseResources()V

    .line 2850
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 2852
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/Menu;->releaseResources()V

    .line 2853
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 2855
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 2856
    .local v4, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->release()V

    .line 2857
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2858
    .local v3, items:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 2859
    .local v5, optionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/OptionItem;->release()V

    goto :goto_1

    .line 2862
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #items:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v4           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v5           #optionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_6
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2864
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/action/ActionPanel;->releaseResources()V

    .line 2865
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2866
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->release()V

    goto :goto_2

    .line 2868
    .end local v0           #actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    :cond_7
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2869
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    .line 2871
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    .line 2873
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->removeAllViews()V

    .line 2875
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2876
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 2878
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 2879
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 2880
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 2881
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 2882
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    .line 2884
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/painting/penmenu/PenManager;->setPenTypeLoadingListener(Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;)V

    .line 2886
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4267
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4268
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setShowSWPenButton(Z)Z

    .line 4269
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2766
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2767
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2768
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2769
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 2771
    :cond_0
    return-void
.end method

.method public onMenuClosed()V
    .locals 2

    .prologue
    .line 3484
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3485
    const-string v0, "PenMenu"

    const-string v1, "onMenuClosed - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :goto_0
    return-void

    .line 3489
    :cond_0
    const-string v0, "key_overlay_ui"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onMenuOpened()V
    .locals 2

    .prologue
    .line 3459
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3460
    const-string v0, "PenMenu"

    const-string v1, "onMenuOpened - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    :goto_0
    return-void

    .line 3464
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 3466
    const-string v0, "key_overlay_ui"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public refreshPaintingViewState()V
    .locals 2

    .prologue
    .line 2623
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2624
    const-string v0, "PenMenu"

    const-string v1, "refreshPaintingViewState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :goto_0
    return-void

    .line 2628
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    goto :goto_0
.end method

.method public restoreSetting()V
    .locals 3

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2451
    const-string v0, "PenMenu"

    const-string v1, "restoreSetting - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2455
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 2457
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 2459
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setStrokeVisibleState(I)V

    .line 2461
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    .line 2463
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendRestoreSettingRequest(J)V

    goto :goto_0
.end method

.method public savePens()V
    .locals 12

    .prologue
    .line 2155
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2156
    const-string v9, "PenMenu"

    const-string v10, "savePens - PenMenu has already been destroyed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 2161
    .local v0, curPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 2163
    .local v1, history:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2170
    if-eqz v0, :cond_0

    .line 2171
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v4

    .line 2175
    .local v4, orderInHistory:I
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistory;->getHistoryPens()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/painting/penmenu/PenManager;->saveHistoryPens(Ljava/util/List;Landroid/content/Context;)Z

    .line 2179
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->isFromHistory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2180
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/htc/painting/penmenu/history/PenHistory;->findOrderInHistory(I)I

    move-result v4

    .line 2183
    :cond_2
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v0, v4, v10}, Lcom/htc/painting/penmenu/PenManager;->saveCurrentPen(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z

    .line 2186
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v6

    .line 2187
    .local v6, penTypeOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v6, :cond_0

    .line 2189
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v7

    .line 2190
    .local v7, penTypesCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v7, :cond_0

    .line 2191
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    .local v8, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 2193
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 2194
    .local v3, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2195
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v5

    .line 2196
    .local v5, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v5, :cond_3

    .line 2197
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2206
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_4
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/htc/painting/penmenu/PenManager;->saveMostRecentPenTypeConfig(Ljava/util/List;Landroid/content/Context;)Z

    goto :goto_0
.end method

.method public saveSetting()V
    .locals 3

    .prologue
    .line 2413
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2414
    const-string v0, "PenMenu"

    const-string v1, "saveSetting - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_0
    :goto_0
    return-void

    .line 2418
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendSaveSettingRequest(J)V

    goto :goto_0
.end method

.method public setActionActive(IZ)V
    .locals 3
    .parameter "actionId"
    .parameter "active"

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2723
    const-string v1, "PenMenu"

    const-string v2, "setActionActive - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_0
    :goto_0
    return-void

    .line 2727
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2728
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_0

    .line 2729
    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu/action/ActionItem;->setActive(Z)V

    .line 2730
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_0

    .line 2731
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2783
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 2784
    return-void
.end method

.method public setCleanMode(Z)V
    .locals 1
    .parameter "isCleanMode"

    .prologue
    .line 3502
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenManager;->setCleanMode(Z)V

    .line 3503
    return-void
.end method

.method public setCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;)V
    .locals 0
    .parameter "dockCorner"

    .prologue
    .line 3673
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 3674
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMoveInOutAnims()V

    .line 3675
    return-void
.end method

.method public setCurrentPen(Lcom/htc/painting/penmenu/Pen;)V
    .locals 3
    .parameter "pen"

    .prologue
    const/4 v2, 0x0

    .line 1843
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1844
    const-string v1, "PenMenu"

    const-string v2, "setCurrentPen - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1848
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    if-eqz p1, :cond_0

    .line 1855
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 1856
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 1857
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1858
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1859
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1860
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    .line 1861
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->changePen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 1863
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0
.end method

.method public setDismissInterval(J)V
    .locals 2
    .parameter "dismissMillis"

    .prologue
    .line 2015
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2016
    const-wide/16 p1, 0x3e8

    .line 2019
    :cond_0
    iput-wide p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 2020
    return-void
.end method

.method public setEraserMode(Z)V
    .locals 7
    .parameter "isEraserMode"

    .prologue
    .line 2902
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    .line 2904
    new-instance v3, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v3}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 2906
    .local v3, sp:Lcom/htc/painting/engine/StrokeProperties;
    if-eqz p1, :cond_3

    .line 2907
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v4, :cond_0

    .line 2908
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v1

    .line 2909
    .local v1, penId:I
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 2910
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-nez v0, :cond_1

    .line 2911
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode - no PenTypeItem found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    .end local v0           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v1           #penId:I
    :cond_0
    :goto_0
    return-void

    .line 2915
    .restart local v0       #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .restart local v1       #penId:I
    :cond_1
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    .line 2916
    .local v2, penType:Lcom/htc/painting/penmenu/PenType;
    if-nez v2, :cond_2

    .line 2917
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode - no PenType found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2921
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/painting/penmenu/PenType;->getPenSize(I)F

    move-result v4

    const/high16 v5, 0x4020

    mul-float/2addr v4, v5

    const/high16 v5, 0x4140

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    .line 2929
    iget v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    invoke-virtual {v3, v4}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 2930
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 2931
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v4, v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    .line 2935
    .end local v0           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v1           #penId:I
    .end local v2           #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_3
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 4206
    if-eqz p1, :cond_0

    .line 4207
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->adjustLayoutByParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4208
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4209
    return-void
.end method

.method public setOnActionPerformListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2755
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2756
    const-string v0, "PenMenu"

    const-string v1, "setOnActionPerformListener - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :goto_0
    return-void

    .line 2760
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    goto :goto_0
.end method

.method public setOnOptionChangedListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    const-string v0, "PenMenu"

    const-string v1, "setOnOptionChangedListener - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 625
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-interface {v0}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionInitialized()V

    goto :goto_0
.end method

.method public setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V
    .locals 2
    .parameter "paintingView"

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2581
    const-string v0, "PenMenu"

    const-string v1, "setPaintingView - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :goto_0
    return-void

    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_1

    .line 2590
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2593
    :cond_1
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    .line 2595
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_3

    .line 2596
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_2

    .line 2600
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->enablePainting(Z)V

    .line 2603
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2604
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    .line 2605
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    .line 2606
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0

    .line 2609
    :cond_3
    const-string v0, "PenMenu"

    const-string v1, "setPaintingView - paintingView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setPenColor(I)V
    .locals 2
    .parameter "penColor"

    .prologue
    .line 1813
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1815
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1816
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1818
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->changePenColor(I)V

    .line 1819
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1820
    return-void
.end method

.method public setPenMenuUIState(ZI)V
    .locals 2
    .parameter "isMenuExpand"
    .parameter "selectedMenuId"

    .prologue
    .line 3516
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3517
    const-string v0, "PenMenu"

    const-string v1, "setPenMenuUIState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :goto_0
    return-void

    .line 3521
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3522
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 3526
    :goto_1
    iput p2, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 3527
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreUIState()V

    goto :goto_0

    .line 3524
    :cond_1
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    goto :goto_1
.end method

.method public setPenSetType(I)V
    .locals 2
    .parameter "penSetType"

    .prologue
    .line 2060
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    const-string v0, "PenMenu"

    const-string v1, "setPenSetType - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-eq v0, p1, :cond_0

    .line 2069
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 2071
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreSetting()V

    goto :goto_0
.end method

.method setPenSizeId(I)V
    .locals 3
    .parameter "penSizeId"

    .prologue
    .line 1802
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1804
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1805
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1807
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->changePenSize(F)V

    .line 1808
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1809
    return-void
.end method

.method setPenType(I)V
    .locals 5
    .parameter "penTypeId"

    .prologue
    .line 1824
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 1825
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1826
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 1827
    .local v1, lastConfig:Lcom/htc/painting/penmenu/Pen;
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1828
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1829
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setUniqueName(Ljava/lang/String;)V

    .line 1836
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu/base/BasePanel;->changePen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 1837
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1838
    return-void
.end method

.method public setPromptDismissInterval(J)V
    .locals 2
    .parameter "dismissMillis"

    .prologue
    .line 3611
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 3612
    const-wide/16 p1, 0x3e8

    .line 3615
    :cond_0
    iput-wide p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    .line 3616
    return-void
.end method

.method public setSelectedMenuId(I)Z
    .locals 2
    .parameter "menuId"

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    :goto_0
    return v0

    .line 602
    :cond_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 603
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setStateMonitor(Lcom/htc/painting/penmenu/PenMenu$StateMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "PenMenu"

    const-string v1, "setStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    goto :goto_0
.end method

.method public setStrokeVisibleState(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2335
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    const-string v0, "PenMenu"

    const-string v1, "setStrokeVisibleState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :goto_0
    return-void

    .line 2340
    :cond_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 2341
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupStrokeVisibleActionItem(I)V

    .line 2342
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    goto :goto_0
.end method

.method public declared-synchronized setUseTime(Z)Z
    .locals 10
    .parameter "check"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1731
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1732
    const-string v5, "PenMenu"

    const-string v6, "setUseTime - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 1736
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1738
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1742
    .local v0, currentTimeMillis:Ljava/lang/Long;
    if-ne p1, v5, :cond_3

    .line 1743
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    sub-long v1, v6, v8

    .line 1744
    .local v1, diffTime:J
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v6, v1, v6

    if-ltz v6, :cond_2

    .line 1748
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->hide()V

    .line 1749
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    move v4, v5

    .line 1750
    goto :goto_0

    .line 1753
    :cond_2
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    sub-long/2addr v6, v1

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 1754
    .local v3, ret:Z
    if-nez v3, :cond_0

    .line 1755
    const-string v5, "PenMenu"

    const-string v6, "setUseTime - postDelayed failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1731
    .end local v0           #currentTimeMillis:Ljava/lang/Long;
    .end local v1           #diffTime:J
    .end local v3           #ret:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1761
    .restart local v0       #currentTimeMillis:Ljava/lang/Long;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #currentTimeMillis:Ljava/lang/Long;
    :cond_4
    move v4, v5

    .line 1764
    goto :goto_0
.end method

.method public setupSignatureAction(I[II)V
    .locals 3
    .parameter "id"
    .parameter "resIds"
    .parameter "initState"

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    const-string v1, "PenMenu"

    const-string v2, "setupSignatureAction - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :goto_0
    return-void

    .line 2321
    :cond_0
    array-length v1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 2322
    const-string v1, "PenMenu"

    const-string v2, "setupSignatureAction - res id count should be 6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2325
    :cond_1
    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/htc/painting/penmenu/PenMenu;->changeAction(II[I)Z

    .line 2326
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2327
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$SignatureState;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/htc/painting/penmenu/PenMenu$SignatureState;-><init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I[I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setState(Lcom/htc/painting/penmenu/action/ActionState;)V

    goto :goto_0
.end method

.method public show()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    .line 1573
    return-void
.end method

.method public show(ZZ)V
    .locals 2
    .parameter "playAnimation"
    .parameter "turnOnStickyState"

    .prologue
    const/4 v1, 0x1

    .line 3423
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3424
    const-string v0, "PenMenu"

    const-string v1, "show - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :goto_0
    return-void

    .line 3428
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3429
    const/4 p1, 0x0

    .line 3432
    :cond_1
    if-eqz p2, :cond_2

    .line 3433
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3436
    :cond_2
    if-eqz p1, :cond_3

    .line 3437
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3438
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    goto :goto_0

    .line 3440
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3441
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    .line 3442
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method public showPrompt()V
    .locals 4

    .prologue
    .line 3566
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3567
    const-string v0, "PenMenu"

    const-string v1, "showPrompt - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_0
    :goto_0
    return-void

    .line 3571
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3578
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setWidthForPrompt(Z)V

    .line 3580
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3581
    iget-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3582
    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$10;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/PenMenu$10;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
