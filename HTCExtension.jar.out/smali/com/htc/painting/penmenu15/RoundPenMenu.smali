.class public Lcom/htc/painting/penmenu15/RoundPenMenu;
.super Landroid/widget/FrameLayout;
.source "RoundPenMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;,
        Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_DATA_REFRESH:Ljava/lang/String; = "com.htc.pen.refreshed"

.field public static final ANIM_SCALE_END:F = 1.0f

.field public static final ANIM_SCALE_START:F = 0.0f

.field private static final MSG_HISTORIES_LOADED:I = 0x322

.field private static final MSG_PENTYPES_LOADED:I = 0x321

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private final INNER_RADIUS:I

.field private final OUTER_RADIUS:I

.field private mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

.field private mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

.field private mCurPenSet:I

.field private mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

.field private mDispatchTouchDelegate:Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;

.field private mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

.field private mDragMenuMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;

.field private mEnableViewCacache:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitLoadMonitor:Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;

.field private mLock:Landroid/widget/CheckBox;

.field private mLockTouchArea:Landroid/graphics/Rect;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

.field private mPaint:Landroid/graphics/Paint;

.field private mPenDataReceiver:Landroid/content/BroadcastReceiver;

.field private mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

.field private mRegistered:Z

.field mRemfil:Landroid/graphics/PaintFlagsDrawFilter;

.field private mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

.field private mScrollMode:I

.field mSetfil:Landroid/graphics/PaintFlagsDrawFilter;

.field private mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

.field private mTouchableRegion:Landroid/graphics/Region;

.field private mViewArea:Landroid/graphics/RectF;

.field private mViewCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWorker:Landroid/os/HandlerThread;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    .line 98
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 99
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    .line 100
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    .line 104
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    .line 105
    iput v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    .line 106
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 108
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 115
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mEnableViewCacache:Z

    .line 116
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    .line 117
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mMatrix:Landroid/graphics/Matrix;

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    .line 425
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mSetfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 426
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRemfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 523
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    invoke-direct {v1, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    .line 1064
    const/16 v1, 0x191

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    .line 2018
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$2;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2035
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    .line 2081
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$3;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$3;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->OUTER_RADIUS:I

    .line 132
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->INNER_RADIUS:I

    .line 133
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->init(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    .line 98
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 99
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    .line 100
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    .line 104
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    .line 105
    iput v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    .line 106
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 108
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 115
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mEnableViewCacache:Z

    .line 116
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    .line 117
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mMatrix:Landroid/graphics/Matrix;

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    .line 425
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mSetfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 426
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRemfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 523
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    invoke-direct {v1, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    .line 1064
    const/16 v1, 0x191

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    .line 2018
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$2;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2035
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    .line 2081
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$3;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$3;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->OUTER_RADIUS:I

    .line 140
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->INNER_RADIUS:I

    .line 141
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->init(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    .line 98
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 99
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    .line 100
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    .line 104
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    .line 105
    iput v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    .line 106
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 108
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 115
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mEnableViewCacache:Z

    .line 116
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    .line 117
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mMatrix:Landroid/graphics/Matrix;

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    .line 425
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mSetfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 426
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRemfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 523
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    invoke-direct {v1, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    .line 1064
    const/16 v1, 0x191

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    .line 2018
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$2;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$2;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2035
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    .line 2081
    new-instance v1, Lcom/htc/painting/penmenu15/RoundPenMenu$3;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$3;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->OUTER_RADIUS:I

    .line 148
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->INNER_RADIUS:I

    .line 149
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->init(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/painting/penmenu15/RoundPenMenu;FF)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/painting/penmenu15/RoundPenMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/painting/penmenu15/RoundPenMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/painting/penmenu15/RoundPenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->contentReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/painting/penmenu15/RoundPenMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/painting/penmenu15/RoundPenMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->loadPenSet(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/ActionPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/OptionPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/CurrentPenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mInitLoadMonitor:Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/PenManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustToScreenCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1855
    if-nez p1, :cond_0

    move-object v2, v5

    .line 1873
    :goto_0
    return-object v2

    .line 1859
    :cond_0
    new-instance v2, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;

    invoke-direct {v2, p1, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    .line 1861
    .local v2, record:Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 1862
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getLocationOnScreen([I)V

    .line 1863
    new-instance v1, Landroid/graphics/Point;

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 1865
    .local v1, offset:Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1866
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1869
    .local v4, y:F
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method private contentReady()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createViewCache()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getMeasuredWidth()I

    move-result v3

    .line 812
    .local v3, width:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getMeasuredHeight()I

    move-result v1

    .line 814
    .local v1, height:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 815
    .local v0, canvas:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 816
    .local v2, result:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 818
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->drawInternal(Landroid/graphics/Canvas;)V

    .line 820
    return-object v2
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 429
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mSetfil:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 431
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 433
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRemfil:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 434
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 435
    return-void
.end method

.method private getChildAt(FF)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 930
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurViewPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1698
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1699
    .local v0, location:[I
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getLocationOnScreen([I)V

    .line 1700
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1702
    .local v1, p:Landroid/graphics/Point;
    return-object v1
.end method

.method private getModeStr(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 1017
    const-string v0, ""

    .line 1018
    .local v0, result:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1039
    :goto_0
    return-object v0

    .line 1020
    :pswitch_0
    const-string v0, "TOUCH_MODE_REST"

    .line 1021
    goto :goto_0

    .line 1023
    :pswitch_1
    const-string v0, "TOUCH_MODE_DOWN"

    .line 1024
    goto :goto_0

    .line 1027
    :pswitch_2
    const-string v0, "TOUCH_MODE_TAP"

    .line 1028
    goto :goto_0

    .line 1031
    :pswitch_3
    const-string v0, "TOUCH_MODE_DONE_WAITING"

    .line 1032
    goto :goto_0

    .line 1035
    :pswitch_4
    const-string v0, "TOUCH_MODE_SCROLL"

    goto :goto_0

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getViewCache()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, result:Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mEnableViewCacache:Z

    if-eqz v2, :cond_2

    .line 835
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 836
    :goto_0
    if-nez v0, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->createViewCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    .line 844
    :cond_0
    :goto_1
    return-object v0

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_0

    .line 841
    :cond_2
    iput-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method private getWinOrigin()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 507
    .local v2, result:[I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 508
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 509
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 510
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aput v3, v2, v4

    .line 511
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    aput v3, v2, v5

    .line 517
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    return-object v2

    .line 512
    :cond_1
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 513
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 514
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v3, v2, v4

    .line 515
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v3, v2, v5

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 154
    const-string v2, "PenMenuNew"

    const-string v3, " init RoundPenMenu "

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const v2, 0x20802e0

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setBackgroundResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 159
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v2, 0x2090070

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->getInstance(Landroid/content/Context;)Lcom/htc/painting/penmenu15/PenManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    .line 163
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setupWorker()V

    .line 166
    const v2, 0x2020151

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/view/CurrentPenView;

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    .line 167
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 170
    .local v0, configuration:Landroid/view/ViewConfiguration;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I
    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$002(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I

    .line 173
    const v2, 0x202014a

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/view/ActionPanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 176
    const v2, 0x202014f

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/view/OptionPanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    .line 179
    const v2, 0x2020152

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    .line 182
    new-instance v2, Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-direct {v2}, Lcom/htc/painting/penmenu15/core/DragDropManager;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 183
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/core/DragDropManager;->addDragViewListener(Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;)V

    .line 184
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setDragDropManager(Lcom/htc/painting/penmenu15/core/DragDropManager;)V

    .line 187
    new-instance v2, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-direct {v2, p1, p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;-><init>(Landroid/content/Context;Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 188
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setupStateInfo()V

    .line 190
    iget v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->loadPenSet(I)V

    .line 192
    return-void
.end method

.method private isChildScrolling()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    const/4 v0, 0x1

    .line 1055
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDragging()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1045
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isChildScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadPenSet(I)V
    .locals 5
    .parameter "penSet"

    .prologue
    .line 209
    const-string v1, "PenMenuNew"

    const-string v2, " loadPenSet "

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x2bd

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method private moveByMotion(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v0, v6

    .line 441
    .local v0, curX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v1, v6

    .line 443
    .local v1, curY:I
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)[I

    move-result-object v6

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    add-int v4, v6, v7

    .line 444
    .local v4, oldX:I
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)[I

    move-result-object v6

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    add-int v5, v6, v7

    .line 446
    .local v5, oldY:I
    sub-int v2, v0, v4

    .line 447
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 449
    .local v3, deltaY:I
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)[I

    move-result-object v6

    aget v6, v6, v8

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)[I

    move-result-object v7

    aget v7, v7, v9

    add-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveWinOrigTo(II)V

    .line 451
    return-void
.end method

.method private moveWinOrigTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 483
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 484
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 485
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 486
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->requestLayout()V

    .line 487
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->requestLayout()V

    .line 495
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->invalidate()V

    .line 496
    return-void

    .line 488
    :cond_1
    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 489
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 490
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 491
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 492
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private registerPenDataReceiver()V
    .locals 3

    .prologue
    .line 2062
    iget-boolean v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    if-nez v1, :cond_0

    .line 2063
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.pen.refreshed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2064
    .local v0, intentfilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2065
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    .line 2067
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseWorker()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorker:Landroid/os/HandlerThread;

    .line 226
    return-void
.end method

.method private resetToRest()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1059
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 1060
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$702(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->reportScrollStateChange(I)V

    .line 1062
    return-void
.end method

.method private selfProcess(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, consumedByChild:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveByMotion(Landroid/view/MotionEvent;)V

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 292
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setViewCacheEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 294
    const-string v1, "PenMenuNew"

    const-string v2, " stop scroll"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragMenuMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragMenuMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;

    invoke-interface {v1}, Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;->onDragMenu()V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->resetToRest()V

    .line 302
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    :cond_3
    return v3

    .line 304
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private setTouchMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1006
    :cond_0
    const-string v0, "PenMenuNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchMode: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v2}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getModeStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getModeStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1008
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setViewCacheEnabled(Z)V

    .line 1009
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getViewCache()Landroid/graphics/Bitmap;

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$102(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I

    goto :goto_0
.end method

.method private setViewCacheEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mEnableViewCacache:Z

    .line 826
    if-nez p1, :cond_0

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewCache:Ljava/lang/ref/SoftReference;

    .line 829
    :cond_0
    return-void
.end method

.method private setupStateInfo()V
    .locals 12

    .prologue
    .line 230
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 233
    .local v0, in:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 235
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 238
    .local v1, out:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 242
    new-instance v10, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0xc8

    invoke-direct {v10, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 243
    .local v10, actionConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    const/4 v2, 0x0

    invoke-virtual {v10, p0, v2, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 244
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v3, v4, v5}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 245
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    const/16 v3, 0x8

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 246
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2, v10}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 249
    new-instance v11, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0xc9

    invoke-direct {v11, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 250
    .local v11, optionConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    const/4 v2, 0x0

    invoke-virtual {v11, p0, v2, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 251
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 252
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 253
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2, v11}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 256
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(I)V

    .line 257
    return-void
.end method

.method private setupWorker()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PenMenuWorker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorker:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;-><init>(Landroid/os/Looper;Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method private startScrollIfNeeded([I)Z
    .locals 9
    .parameter "delta"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 850
    iget v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    const/16 v7, 0x193

    if-ne v6, v7, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v4

    .line 855
    :cond_1
    aget v6, p1, v4

    aget v7, p1, v4

    mul-int/2addr v6, v7

    aget v7, p1, v5

    aget v8, p1, v5

    mul-int/2addr v7, v8

    add-int v1, v6, v7

    .line 856
    .local v1, distanceSqr:I
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isChildScrolling()Z

    move-result v0

    .line 857
    .local v0, childScrolling:Z
    const-string v6, "Scroll"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delta X: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " childScrolling: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/painting/penmenu15/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    mul-int/2addr v6, v7

    if-gt v1, v6, :cond_2

    iget v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    const/16 v7, 0x192

    if-ne v6, v7, :cond_0

    .line 859
    :cond_2
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 860
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 864
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_3

    .line 865
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 867
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 868
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;

    move-result-object v3

    .line 869
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 870
    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 872
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->reportScrollStateChange(I)V

    .line 875
    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v5

    .line 876
    goto/16 :goto_0
.end method

.method private toRadius(FF)D
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1814
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private transformEventToScreenLocation(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWinOrigin()[I

    move-result-object v0

    .line 501
    .local v0, location:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 502
    return-void
.end method

.method private unRegisterPenDataReceiver()V
    .locals 3

    .prologue
    .line 2071
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2077
    :cond_0
    :goto_0
    return-void

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    .line 2175
    return-void
.end method

.method public changeState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1287
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    const-string v0, "PenMenuNew"

    const-string v1, "changeState- PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getStickyShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    invoke-virtual {p0, v1, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->hide(ZZ)V

    goto :goto_0

    .line 1296
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->show(ZZ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getViewCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 269
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDispatchTouchDelegate:Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;

    if-eqz v3, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->adjustToScreenCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;

    move-result-object v0

    .line 271
    .local v0, record:Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDispatchTouchDelegate:Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;

    invoke-interface {v3, p1}, Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;->shouldDispatch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 272
    .local v2, ret:Z
    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;)V

    .line 273
    if-nez v2, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 279
    .end local v0           #record:Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;
    .end local v2           #ret:Z
    :goto_0
    return v1

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->selfProcess(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 279
    goto :goto_0
.end method

.method public forceHideStroke(Z)I
    .locals 3
    .parameter "forceHide"

    .prologue
    const/4 v0, 0x1

    .line 1326
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1327
    const-string v1, "PenMenuNew"

    const-string v2, "forceHideStroke - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    :goto_0
    return v0

    .line 1331
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const-string v2, "key_force_off"

    invoke-virtual {v1, v2, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    .line 1332
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getStickyStrokeVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter(I)Landroid/graphics/Point;
    .locals 7
    .parameter "elementId"

    .prologue
    .line 1649
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1653
    .local v2, ret:Landroid/graphics/Point;
    sparse-switch p1, :sswitch_data_0

    .line 1689
    :goto_0
    const-string v4, "PenMenuNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCenter("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") return: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_0

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-object v2

    .line 1656
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getCurViewPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 1657
    .local v1, p:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1664
    .end local v1           #p:Landroid/graphics/Point;
    :sswitch_1
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v3, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->getButtonPoint(I)Landroid/graphics/Point;

    move-result-object v2

    .line 1665
    goto :goto_0

    .line 1668
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getCurViewPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 1669
    .restart local v1       #p:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, -0x32

    iget v4, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x32

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1673
    .end local v1           #p:Landroid/graphics/Point;
    :sswitch_3
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1674
    .local v0, location:[I
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V

    .line 1675
    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1683
    .end local v0           #location:[I
    :sswitch_4
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v3, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->getButtonPoint(I)Landroid/graphics/Point;

    move-result-object v2

    .line 1684
    goto :goto_0

    .line 1689
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1653
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_0
        0x21 -> :sswitch_2
        0x22 -> :sswitch_4
        0x23 -> :sswitch_1
        0x29 -> :sswitch_3
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
    .end sparse-switch
.end method

.method public getEventCenterOffset()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1880
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1881
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getLocationOnScreen([I)V

    .line 1882
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1884
    .local v1, ret:Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1885
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1887
    return-object v1
.end method

.method public getRoundPanelArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2162
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->OUTER_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->OUTER_RADIUS:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2163
    .local v0, area:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2166
    return-object v0
.end method

.method public getStickyShow()Z
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getStickyShow()Z

    move-result v0

    return v0
.end method

.method public getStrokesAlpha()I
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isStrokeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchArea(I)Landroid/graphics/Region;
    .locals 14
    .parameter "id"

    .prologue
    const/4 v13, 0x0

    .line 1247
    const/4 v5, 0x0

    .line 1250
    .local v5, region:Landroid/graphics/Region;
    const v9, 0x2020151

    if-ne p1, v9, :cond_0

    .line 1251
    const/4 v9, 0x2

    new-array v3, v9, [I

    .line 1252
    .local v3, location:[I
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9, v3}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getLocationInWindow([I)V

    .line 1254
    aget v2, v3, v13

    .line 1255
    .local v2, left:I
    const/4 v9, 0x1

    aget v7, v3, v9

    .line 1256
    .local v7, top:I
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getWidth()I

    move-result v9

    add-int v6, v2, v9

    .line 1257
    .local v6, right:I
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getHeight()I

    move-result v9

    add-int v1, v7, v9

    .line 1260
    .local v1, bottom:I
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v2

    int-to-float v10, v7

    int-to-float v11, v6

    int-to-float v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1261
    .local v8, viewArea:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v7, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1263
    .local v0, area:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Region;

    .end local v5           #region:Landroid/graphics/Region;
    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    .line 1264
    .restart local v5       #region:Landroid/graphics/Region;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1265
    .local v4, path:Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v11, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->INNER_RADIUS:I

    int-to-float v11, v11

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1268
    invoke-virtual {v4, v8, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1269
    invoke-virtual {v5}, Landroid/graphics/Region;->setEmpty()V

    .line 1270
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4, v9}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 1272
    .end local v0           #area:Landroid/graphics/Rect;
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #location:[I
    .end local v4           #path:Landroid/graphics/Path;
    .end local v6           #right:I
    .end local v7           #top:I
    .end local v8           #viewArea:Landroid/graphics/RectF;
    :cond_0
    return-object v5
.end method

.method public getTouchableRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 13
    .parameter "elementId"
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 1719
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1720
    const-string v9, "PenMenuNew"

    const-string v10, "handleMotionEvent - PenMenu has already been destroyed!"

    invoke-static {v9, v10}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 1808
    :cond_0
    :goto_0
    return v3

    .line 1724
    :cond_1
    const/4 v3, 0x0

    .line 1728
    .local v3, ret:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_0

    .line 1733
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1735
    :sswitch_0
    new-array v2, v10, [I

    .line 1736
    .local v2, location:[I
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9, v2}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getLocationOnScreen([I)V

    .line 1738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1739
    .local v6, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1742
    .local v7, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    aget v10, v2, v8

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    aget v11, v2, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1746
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9, p2}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->inRange(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1747
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-virtual {v9}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->performClick()Z

    .line 1748
    const/4 v3, 0x1

    .line 1752
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    aget v8, v2, v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    aget v10, v2, v12

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1758
    .end local v2           #location:[I
    .end local v6           #x:F
    .end local v7           #y:F
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1759
    .restart local v6       #x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1760
    .restart local v7       #y:F
    new-array v2, v10, [I

    .line 1761
    .restart local v2       #location:[I
    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V

    .line 1762
    aget v1, v2, v8

    .line 1763
    .local v1, left:I
    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getWidth()I

    move-result v8

    add-int v4, v1, v8

    .line 1764
    .local v4, right:I
    aget v5, v2, v12

    .line 1765
    .local v5, top:I
    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getHeight()I

    move-result v8

    add-int v0, v5, v8

    .line 1766
    .local v0, bottom:I
    const-string v8, "PenMenuNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " handleMotionEvent - LOCK_PIN_ID  - left: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,top:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,right:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,bottom:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    int-to-float v8, v1

    cmpl-float v8, v6, v8

    if-lez v8, :cond_0

    int-to-float v8, v4

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    int-to-float v8, v5

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    int-to-float v8, v0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    .line 1771
    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->performClick()Z

    .line 1772
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1783
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #location:[I
    .end local v4           #right:I
    .end local v5           #top:I
    .end local v6           #x:F
    .end local v7           #y:F
    :sswitch_2
    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v8, p1, p2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->handleMotionEvent(ILandroid/view/MotionEvent;)Z

    move-result v3

    .line 1784
    goto/16 :goto_0

    .line 1790
    :sswitch_3
    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v8, p1, p2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->handleMotionEvent(ILandroid/view/MotionEvent;)Z

    move-result v3

    .line 1791
    goto/16 :goto_0

    .line 1733
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_2
        0x29 -> :sswitch_1
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_3
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method public hide(ZZ)V
    .locals 3
    .parameter "playAnimation"
    .parameter "turnOffStickyState"

    .prologue
    .line 1383
    if-eqz p2, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setStickyShow(ZZ)V

    .line 1388
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const-string v1, "key_option_tempHide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public initForPenTips()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(I)V

    .line 1630
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public moveCenterTo(II)V
    .locals 7
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    shr-int/lit8 v2, v5, 0x1

    .line 460
    .local v2, oldCenterX:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x1

    .line 462
    .local v3, oldCenterY:I
    sub-int v0, p1, v2

    .line 463
    .local v0, deltaX:I
    sub-int v1, p2, v3

    .line 465
    .local v1, deltaY:I
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWinOrigin()[I

    move-result-object v4

    .line 467
    .local v4, winOrig:[I
    const/4 v5, 0x0

    aget v5, v4, v5

    add-int/2addr v5, v0

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v6, v1

    invoke-direct {p0, v5, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveWinOrigTo(II)V

    .line 468
    return-void
.end method

.method public moveToPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveWinOrigTo(II)V

    .line 478
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2043
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2044
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->contentReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2045
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->registerPenDataReceiver()V

    .line 2047
    :cond_0
    const-string v0, "PenMenuNew"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xc8

    .line 398
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getConfigState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 400
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(I)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1467
    const-string v0, "PenMenuNew"

    const-string v1, " RoundPenMenu.onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->releaseResources()V

    .line 1473
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 1474
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->releaseResources()V

    .line 1475
    iput-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    .line 1478
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->markDestroyed()V

    .line 1479
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->releaseWorker()V

    .line 1481
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2056
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2057
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->unRegisterPenDataReceiver()V

    .line 2058
    const-string v0, "PenMenuNew"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    .line 533
    const/4 v3, 0x0

    .line 534
    .local v3, result:Z
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->contentReady()Z

    move-result v7

    if-nez v7, :cond_0

    .line 586
    :goto_0
    return v6

    .line 539
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 540
    .local v0, action:I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 582
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDragging()Z

    move-result v3

    move v6, v3

    .line 586
    goto :goto_0

    .line 543
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 544
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 545
    .local v5, y:I
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWinOrigin()[I

    move-result-object v8

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->setActivePointerVal(III[I)V
    invoke-static {v6, v7, v4, v5, v8}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$600(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;III[I)V

    .line 546
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 548
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/high16 v8, -0x8000

    iput v8, v7, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    iput v8, v6, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 583
    .end local v0           #action:I
    .end local v4           #x:I
    .end local v5           #y:I
    :catchall_0
    move-exception v6

    throw v6

    .line 555
    .restart local v0       #action:I
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 557
    :pswitch_2
    iget-object v6, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$700(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 558
    .local v2, pointerIndex:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 562
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v4, v6

    .line 563
    .restart local v4       #x:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v6

    .line 564
    .restart local v5       #y:I
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 565
    .local v1, point:[I
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    sub-int v7, v4, v7

    aput v7, v1, v6

    .line 566
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v7

    sub-int v7, v5, v7

    aput v7, v1, v6

    .line 567
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->startScrollIfNeeded([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 568
    const/4 v3, 0x1

    goto :goto_1

    .line 578
    .end local v1           #point:[I
    .end local v2           #pointerIndex:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->resetToRest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 555
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 332
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 334
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 337
    const/4 v9, 0x0

    .line 338
    .local v9, widthBuf:I
    const/4 v8, 0x0

    .line 339
    .local v8, heightBuf:I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLeft()I

    move-result v2

    sub-int/2addr v2, v9

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getTop()I

    move-result v3

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getBottom()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    .end local v8           #heightBuf:I
    .end local v9           #widthBuf:I
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 345
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 347
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 349
    .local v0, path:Landroid/graphics/Path;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getConfigState()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 351
    .local v7, curPanel:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_1

    .line 352
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v7}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getRight()I

    move-result v3

    invoke-virtual {v7}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLockTouchArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 363
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mViewArea:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 365
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 366
    .local v6, area:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v6}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 368
    return-void

    .line 349
    .end local v6           #area:Landroid/graphics/Rect;
    .end local v7           #curPanel:Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1158
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_0

    .line 1159
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1160
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1162
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    .line 1163
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1164
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1165
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1166
    .local v3, width:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1167
    .local v2, height:I
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 1168
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 1169
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    .line 1170
    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setMaxHeight(I)V

    .line 1173
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1174
    return-void
.end method

.method public onMenuClosed()V
    .locals 3

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const-string v1, "key_option_menu_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    .line 1350
    return-void
.end method

.method public onMenuOpened()V
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const-string v1, "key_option_menu_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    .line 1365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "ev"

    .prologue
    .line 600
    const/4 v10, 0x0

    .line 604
    .local v10, result:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_2

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isClickable()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isLongClickable()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v13, 0x1

    .line 805
    :goto_0
    return v13

    .line 607
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 613
    .local v1, action:I
    const/4 v13, 0x2

    new-array v3, v13, [I

    .line 616
    .local v3, delta:[I
    and-int/lit16 v13, v1, 0xff

    packed-switch v13, :pswitch_data_0

    .line 800
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDragging()Z

    move-result v10

    move v13, v10

    .line 805
    goto :goto_0

    .line 619
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 620
    .local v11, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 621
    .local v12, y:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getWinOrigin()[I

    move-result-object v15

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->setActivePointerVal(III[I)V
    invoke-static {v13, v14, v11, v12, v15}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$600(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;III[I)V

    .line 624
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$800(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    if-nez v13, :cond_4

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    new-instance v14, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$802(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 629
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$800(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/painting/penmenu15/RoundPenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/high16 v14, -0x8000

    iput v14, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/high16 v14, -0x8000

    iput v14, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 801
    .end local v1           #action:I
    .end local v3           #delta:[I
    .end local v11           #x:I
    .end local v12           #y:I
    :catchall_0
    move-exception v13

    throw v13

    .line 642
    .restart local v1       #action:I
    .restart local v3       #delta:[I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$700(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 643
    .local v9, pointerIndex:I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_3

    .line 647
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    float-to-int v12, v13

    .line 648
    .restart local v12       #y:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v11, v13

    .line 650
    .restart local v11       #x:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v14

    sub-int v14, v12, v14

    aput v14, v3, v13

    .line 651
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v14

    sub-int v14, v11, v14

    aput v14, v3, v13

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_1

    .line 658
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->startScrollIfNeeded([I)Z

    goto/16 :goto_1

    .line 663
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$900(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Landroid/os/StrictMode$Span;

    move-result-object v13

    if-nez v13, :cond_5

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const-string v14, "AbsListView-scroll"

    invoke-static {v14}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v14

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$902(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 668
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    if-ne v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    if-eq v11, v13, :cond_3

    .line 673
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mGroupFlags:I

    const/high16 v14, 0x8

    and-int/2addr v13, v14

    if-nez v13, :cond_8

    const/4 v13, 0x0

    aget v13, v3, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I
    invoke-static {v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v14

    if-gt v13, v14, :cond_7

    const/4 v13, 0x1

    aget v13, v3, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I
    invoke-static {v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v14

    if-le v13, v14, :cond_8

    .line 675
    :cond_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->requestDisallowInterceptTouchEvent(Z)V

    .line 678
    :cond_8
    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 679
    .local v6, incrementalDelta:[I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    const/high16 v15, -0x8000

    if-eq v13, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    sub-int v13, v12, v13

    :goto_2
    aput v13, v6, v14

    .line 680
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    const/high16 v15, -0x8000

    if-eq v13, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iget v13, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    sub-int v13, v12, v13

    :goto_3
    aput v13, v6, v14

    .line 682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iput v11, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    iput v12, v13, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    goto/16 :goto_1

    .line 679
    :cond_9
    const/4 v13, 0x0

    aget v13, v3, v13

    goto :goto_2

    .line 680
    :cond_a
    const/4 v13, 0x1

    aget v13, v3, v13

    goto :goto_3

    .line 693
    .end local v6           #incrementalDelta:[I
    .end local v9           #pointerIndex:I
    .end local v11           #x:I
    .end local v12           #y:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    packed-switch v13, :pswitch_data_2

    .line 759
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->invalidate()V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 765
    .local v4, handler:Landroid/os/Handler;
    if-eqz v4, :cond_b

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 769
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/4 v14, -0x1

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$702(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$900(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Landroid/os/StrictMode$Span;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$900(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Landroid/os/StrictMode$Span;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/StrictMode$Span;->finish()V

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/4 v14, 0x0

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$902(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 697
    .end local v4           #handler:Landroid/os/Handler;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;

    move-result-object v2

    .line 699
    .local v2, child:Landroid/view/View;
    const/4 v5, 0x1

    .line 701
    .local v5, inList:Z
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-nez v13, :cond_11

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    if-eqz v13, :cond_c

    .line 703
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setPressed(Z)V

    .line 706
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    move-result-object v13

    if-nez v13, :cond_d

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    new-instance v14, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1002(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;)Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    .line 710
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    move-result-object v8

    .line 711
    .local v8, performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    iput-object v2, v8, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->mClickTarget:Landroid/view/View;

    .line 712
    invoke-virtual {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->rememberWindowAttachCount()V

    .line 714
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_14

    .line 715
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 716
    .restart local v4       #handler:Landroid/os/Handler;
    if-eqz v4, :cond_f

    .line 717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v13

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$800(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    :goto_5
    invoke-virtual {v4, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 722
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 723
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/View;->setPressed(Z)V

    .line 724
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 728
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    new-instance v14, Lcom/htc/painting/penmenu15/RoundPenMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v8}, Lcom/htc/painting/penmenu15/RoundPenMenu$1;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/view/View;Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;)V

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1302(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/painting/penmenu15/RoundPenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    :goto_6
    const/4 v10, 0x1

    .line 749
    .end local v4           #handler:Landroid/os/Handler;
    .end local v8           #performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    :cond_11
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->resetToRest()V

    goto/16 :goto_4

    .line 717
    .restart local v4       #handler:Landroid/os/Handler;
    .restart local v8       #performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v13

    goto :goto_5

    .line 742
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->resetToRest()V

    goto :goto_6

    .line 745
    .end local v4           #handler:Landroid/os/Handler;
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 746
    invoke-virtual {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->run()V

    goto :goto_7

    .line 753
    .end local v2           #child:Landroid/view/View;
    .end local v5           #inList:Z
    .end local v8           #performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    :pswitch_6
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 754
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 779
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    .line 782
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V

    .line 783
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;

    move-result-object v7

    .line 785
    .local v7, motionView:Landroid/view/View;
    if-eqz v7, :cond_15

    .line 786
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/View;->setPressed(Z)V

    .line 789
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 790
    .restart local v4       #handler:Landroid/os/Handler;
    if-eqz v4, :cond_16

    .line 791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v13}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 795
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    const/4 v14, -0x1

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I
    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$702(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 693
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->removeShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    .line 2183
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 891
    return-void
.end method

.method public restoreSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1529
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " restoreSetting ,  PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1533
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1534
    return-void
.end method

.method public saveSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1488
    const-string v5, "PenMenuNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " saveSetting ,  PID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v2, 0x0

    .line 1492
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v5, :cond_0

    .line 1493
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenRepresentation()Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v2

    .line 1495
    :cond_0
    const/4 v3, 0x0

    .line 1496
    .local v3, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/view/ActionPanel;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1497
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/view/ActionPanel;->getHistoryPens()Ljava/util/List;

    move-result-object v3

    .line 1499
    :cond_1
    const/4 v0, 0x0

    .line 1500
    .local v0, colors:[I
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/view/OptionPanel;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1501
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/view/OptionPanel;->getHistoryColors()[I

    move-result-object v0

    .line 1504
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1506
    new-instance v4, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;

    invoke-direct {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;-><init>()V

    .line 1507
    .local v4, sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;

    iput-object v5, v4, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mPenManager:Lcom/htc/painting/penmenu15/PenManager;

    .line 1508
    iput-object v2, v4, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 1509
    iput-object v3, v4, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryPens:Ljava/util/List;

    .line 1510
    iput-object v0, v4, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryColors:[I

    .line 1514
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x2bf

    invoke-virtual {v5, v6, v8, v8, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1516
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1522
    .end local v1           #msg:Landroid/os/Message;
    .end local v4           #sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    :goto_0
    return-void

    .line 1519
    :cond_3
    const-string v5, "PenMenuNew"

    const-string v6, " there has null object , cancel savesetting "

    invoke-static {v5, v6}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActionActive(IZ)V
    .locals 1
    .parameter "actionId"
    .parameter "active"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setButtonActive(IZ)V

    .line 1435
    return-void
.end method

.method public setDispatchDelegate(Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDispatchTouchDelegate:Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;

    .line 1237
    return-void
.end method

.method public setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V

    .line 1218
    :cond_0
    return-void
.end method

.method public setDragMenuMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mDragMenuMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;

    .line 1225
    return-void
.end method

.method public setEraserMode(Z)V
    .locals 3
    .parameter "isEraserMode"

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;

    const/16 v2, 0x30c

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 1451
    .local v0, minSize:I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1, p1, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setEraserMode(ZI)V

    .line 1452
    return-void
.end method

.method public setHighLightConfiguration(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)V
    .locals 1
    .parameter "highlightConfig"

    .prologue
    .line 1617
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v0, :cond_1

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    check-cast p1, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setHighLightConfiguration(Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;)V

    .line 1619
    :cond_1
    return-void
.end method

.method public setInitLoadMonitor(Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mInitLoadMonitor:Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;

    .line 1209
    return-void
.end method

.method public setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    .line 1571
    return-void
.end method

.method public setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V
    .locals 1
    .parameter "paintingView"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 1183
    return-void
.end method

.method public setPanel(IZ)V
    .locals 2
    .parameter "panel"
    .parameter "playAnimation"

    .prologue
    .line 1636
    const/16 v0, 0x329

    if-ne p1, v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(IZ)V

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    const/16 v0, 0x328

    if-ne p1, v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setState(IZ)V

    goto :goto_0
.end method

.method public setPenSetType(I)V
    .locals 0
    .parameter "penSetType"

    .prologue
    .line 1590
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->loadPenSet(I)V

    .line 1591
    return-void
.end method

.method public setPin(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    return-void
.end method

.method public setScrollMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1070
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollMode:I

    .line 1071
    return-void
.end method

.method public setShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "PenMenuNew"

    const-string v1, "setStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    return-void
.end method

.method public setStrokeVisibleState(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, visible:Z
    if-nez p1, :cond_1

    .line 1543
    const/4 v0, 0x0

    .line 1549
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setStickyStrokeVisible(Z)V

    .line 1550
    :cond_0
    return-void

    .line 1544
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 3
    .parameter "playAnimation"
    .parameter "turnOnStickyState"

    .prologue
    .line 1407
    if-eqz p2, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setStickyShow(ZZ)V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    const-string v1, "key_option_tempHide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    goto :goto_0
.end method
