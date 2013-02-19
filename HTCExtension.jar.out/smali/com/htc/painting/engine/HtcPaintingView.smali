.class public Lcom/htc/painting/engine/HtcPaintingView;
.super Landroid/widget/RelativeLayout;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPaintingView$HighlightData;,
        Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INVALIDATE_TIMEOUT:I = 0x32

.field private static final MSG_INVALIDATE_THIS:I = 0x65b9aa

.field private static final MSG_PREPARE_CACHE:I = 0x65b9ab

.field private static final MSG_SHOW_PROGRESS:I = 0x65b9ac

.field public static final NO_SEPARATOR:I = -0x1

.field private static final SHOW_PERFORMANCE_PROPERTY:Ljava/lang/String; = "paintingview.showperformance"

.field private static final SHOW_PROGRESS_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HtcPaintingView"

.field private static final sResetCount:I = 0xa

.field private static sSeparatorPaint:Landroid/graphics/Paint;


# instance fields
.field mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field private volatile mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field private mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

.field private mCacheRatio:[F

.field private mCacheState:I

.field private mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

.field private mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field private mDisplayAlphaPaint:Landroid/graphics/Paint;

.field private mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

.field private mDrawringRect:Landroid/graphics/RectF;

.field protected mEnableEditMode:Z

.field private mEnableTouchPainting:Z

.field mEventCollectCount:J

.field mEventDispatchAccumulateTime:J

.field mEventDispatchTime:J

.field mFps:J

.field mFpsCollectcount:J

.field private mHandler:Landroid/os/Handler;

.field mHighlightDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/HtcPaintingView$HighlightData;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPos:Landroid/graphics/PointF;

.field private mIsEnable:Z

.field private mIsInterceptPenEvent:Z

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mOnDrawTime:J

.field mOnEventQueue:J

.field mOnEventQueueAccumulate:J

.field mOnRender:J

.field mOnRenderAccumulate:J

.field private mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

.field protected mPaintingViewListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mPartialInvalidate:Z

.field private mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field private mPerformanceInfo:Landroid/widget/TextView;

.field mPreviousDrawTime:J

.field mPreviousEventTime:J

.field private mProgress:Landroid/widget/ProgressBar;

.field mSelectionStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

.field private mSeparatorDist:I

.field mService:Lcom/htc/painting/engine/eraser/EraserService;

.field private mShowEraserIndicator:Z

.field private mShowLoadingCursor:Z

.field private mShowPerformanceInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/painting/engine/HtcPaintingView;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 88
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 92
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 93
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 94
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 95
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 96
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 97
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 99
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 105
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 107
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 109
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 112
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 113
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 114
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 119
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 126
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 127
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 128
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 130
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 455
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 564
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 565
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 566
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 567
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1517
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1518
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1519
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1520
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1521
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1522
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1523
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1524
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1537
    new-instance v0, Lcom/htc/painting/engine/eraser/EraserService;

    invoke-direct {v0}, Lcom/htc/painting/engine/eraser/EraserService;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mService:Lcom/htc/painting/engine/eraser/EraserService;

    .line 2714
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 2766
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    .line 164
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void

    .line 120
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 88
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 92
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 93
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 94
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 95
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 96
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 97
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 99
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 105
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 107
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 109
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 112
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 113
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 114
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 119
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 126
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 127
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 128
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 130
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 455
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 564
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 565
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 566
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 567
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1517
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1518
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1519
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1520
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1521
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1522
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1523
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1524
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1537
    new-instance v0, Lcom/htc/painting/engine/eraser/EraserService;

    invoke-direct {v0}, Lcom/htc/painting/engine/eraser/EraserService;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mService:Lcom/htc/painting/engine/eraser/EraserService;

    .line 2714
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 2766
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void

    .line 120
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 88
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 92
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 93
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 94
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 95
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 96
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 97
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 99
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 105
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 107
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 109
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 112
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 113
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 114
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 119
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 126
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 127
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 128
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 130
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 455
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 564
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 565
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 566
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 567
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1517
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1518
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1519
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1520
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1521
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1522
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1523
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1524
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1537
    new-instance v0, Lcom/htc/painting/engine/eraser/EraserService;

    invoke-direct {v0}, Lcom/htc/painting/engine/eraser/EraserService;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mService:Lcom/htc/painting/engine/eraser/EraserService;

    .line 2714
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 2766
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void

    .line 120
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/HtcPaintingView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateSeletion(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/painting/engine/HtcPaintingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    return-void
.end method

.method private checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1844
    iget-object v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v8}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v1

    .line 1845
    .local v1, groupIds:[I
    move-object v0, v1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget v4, v0, v3

    .line 1846
    .local v4, id:I
    iget-object v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v8, v4}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v6

    .line 1847
    .local v6, sg:Lcom/htc/painting/engine/StrokeGroup;
    const/4 v7, 0x0

    .line 1848
    .local v7, viewPort:Lcom/htc/painting/engine/ViewPort;
    if-eqz v6, :cond_0

    .line 1849
    invoke-virtual {v6}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v7

    .line 1850
    :cond_0
    const/4 v2, 0x0

    .line 1851
    .local v2, groupRegion:Landroid/graphics/RectF;
    if-eqz v7, :cond_1

    .line 1852
    invoke-virtual {v7}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 1854
    :cond_1
    if-eqz v2, :cond_2

    .line 1855
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1859
    .end local v2           #groupRegion:Landroid/graphics/RectF;
    .end local v4           #id:I
    .end local v6           #sg:Lcom/htc/painting/engine/StrokeGroup;
    .end local v7           #viewPort:Lcom/htc/painting/engine/ViewPort;
    :goto_1
    return-object v6

    .line 1845
    .restart local v2       #groupRegion:Landroid/graphics/RectF;
    .restart local v4       #id:I
    .restart local v6       #sg:Lcom/htc/painting/engine/StrokeGroup;
    .restart local v7       #viewPort:Lcom/htc/painting/engine/ViewPort;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1859
    .end local v2           #groupRegion:Landroid/graphics/RectF;
    .end local v4           #id:I
    .end local v6           #sg:Lcom/htc/painting/engine/StrokeGroup;
    .end local v7           #viewPort:Lcom/htc/painting/engine/ViewPort;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private createHoverCirclePaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2343
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2344
    .local v0, result:Landroid/graphics/Paint;
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2345
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2346
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2347
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2348
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2349
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2350
    return-object v0
.end method

.method private drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V
    .locals 26
    .parameter "canvas"
    .parameter "foregroundData"
    .parameter "backgroundData"
    .parameter "p"

    .prologue
    .line 753
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 759
    .local v19, refRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 760
    .local v10, curRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v17

    .line 763
    .local v17, matches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v20

    .line 765
    .local v20, result:Landroid/graphics/Matrix;
    if-eqz v17, :cond_9

    .line 769
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 770
    .local v12, delta:Landroid/graphics/Matrix;
    const/16 v22, 0x1

    aget-object v22, v17, v22

    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 771
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 775
    new-instance v14, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 777
    .local v14, foregroundRect:Landroid/graphics/RectF;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;

    .line 781
    .local v11, d:Lcom/htc/painting/engine/HtcPaintingView$HighlightData;
    invoke-virtual {v11}, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->getTransformRect()Landroid/graphics/RectF;

    move-result-object v15

    .line 782
    .local v15, highlightRect:Landroid/graphics/RectF;
    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 783
    invoke-virtual {v11}, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->getTransformRect()Landroid/graphics/RectF;

    move-result-object v22

    invoke-virtual {v11}, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->getPaint()Landroid/graphics/Paint;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 788
    .end local v11           #d:Lcom/htc/painting/engine/HtcPaintingView$HighlightData;
    .end local v15           #highlightRect:Landroid/graphics/RectF;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 793
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v22

    if-nez v22, :cond_6

    const/4 v13, 0x1

    .line 794
    .local v13, drawBackground:Z
    :goto_2
    if-eqz v13, :cond_0

    .line 795
    monitor-enter p3

    .line 796
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v8

    .line 797
    .local v8, bgResult:Landroid/graphics/Matrix;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 798
    .local v7, bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    invoke-static {v10, v7}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v6

    .line 799
    .local v6, bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    if-eqz v6, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 800
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 801
    .local v5, bgDelta:Landroid/graphics/Matrix;
    const/16 v22, 0x1

    aget-object v22, v6, v22

    const/16 v23, 0x0

    aget-object v23, v6, v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 802
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 803
    new-instance v4, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 804
    .local v4, backgroundRect:Landroid/graphics/RectF;
    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 808
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDummyData()Z

    move-result v22

    if-nez v22, :cond_4

    .line 810
    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_7

    .line 811
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 832
    :cond_4
    :goto_3
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 833
    .local v9, bmpR:Landroid/graphics/RectF;
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 834
    .local v21, resultInverse:Landroid/graphics/Matrix;
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 835
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 837
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 841
    .end local v4           #backgroundRect:Landroid/graphics/RectF;
    .end local v5           #bgDelta:Landroid/graphics/Matrix;
    .end local v9           #bmpR:Landroid/graphics/RectF;
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v21           #resultInverse:Landroid/graphics/Matrix;
    :cond_5
    monitor-exit p3

    goto/16 :goto_0

    .end local v6           #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .end local v7           #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .end local v8           #bgResult:Landroid/graphics/Matrix;
    :catchall_0
    move-exception v22

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 793
    .end local v13           #drawBackground:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 815
    .restart local v4       #backgroundRect:Landroid/graphics/RectF;
    .restart local v5       #bgDelta:Landroid/graphics/Matrix;
    .restart local v6       #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .restart local v7       #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .restart local v8       #bgResult:Landroid/graphics/Matrix;
    .restart local v13       #drawBackground:Z
    :cond_7
    :try_start_1
    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_8

    .line 816
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 820
    :cond_8
    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    .line 825
    const-string v22, "HtcPaintingView"

    const-string v23, " Totally overlay, ignore drawing background "

    invoke-static/range {v22 .. v23}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 846
    .end local v4           #backgroundRect:Landroid/graphics/RectF;
    .end local v5           #bgDelta:Landroid/graphics/Matrix;
    .end local v6           #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .end local v7           #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .end local v8           #bgResult:Landroid/graphics/Matrix;
    .end local v12           #delta:Landroid/graphics/Matrix;
    .end local v13           #drawBackground:Z
    .end local v14           #foregroundRect:Landroid/graphics/RectF;
    :cond_9
    const-string v22, "HtcPaintingView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "unable to find matching recrods, don\'t draw "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 648
    const-string v13, "drawInternal"

    .line 650
    .local v13, drawTag:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void

    .line 656
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v12

    .line 657
    .local v12, doPainting:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 659
    .local v9, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-eqz v12, :cond_6

    .line 660
    if-nez v9, :cond_5

    .line 661
    const-string v2, "HtcPaintingView"

    const-string v3, "Dopainting, no cached bitmap"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 689
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    if-eqz v2, :cond_4

    .line 691
    const/high16 v20, 0x3f80

    .line 692
    .local v20, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v14

    .line 693
    .local v14, groups:[I
    if-eqz v14, :cond_3

    array-length v2, v14

    if-lez v2, :cond_3

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v3, 0x0

    aget v3, v14, v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v22

    .line 695
    .local v22, vp:Lcom/htc/painting/engine/ViewPort;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v2

    mul-float v20, v20, v2

    .line 697
    .end local v22           #vp:Lcom/htc/painting/engine/ViewPort;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x4040

    sub-float/2addr v5, v6

    mul-float v5, v5, v20

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 701
    .end local v14           #groups:[I
    .end local v20           #ratio:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/painting/engine/stroke/Stroke;

    .line 703
    .local v21, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 704
    .local v8, count:I
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    .line 705
    .local v16, mp:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 706
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 708
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #mp:Lcom/htc/painting/engine/MotionPoint;
    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    .line 709
    .restart local v16       #mp:Lcom/htc/painting/engine/MotionPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 664
    .end local v8           #count:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #mp:Lcom/htc/painting/engine/MotionPoint;
    .end local v21           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 667
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 669
    .local v17, now:J
    if-eqz v9, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-wide v10, v2, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    .line 673
    .local v10, dirtyTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    .line 674
    invoke-virtual {v9}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getModifyTime()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_7

    .line 675
    const-string v2, "Not painting, draw cacheBitmap on canvas"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    :cond_7
    sub-long v2, v17, v10

    const-wide/16 v5, 0x32

    cmp-long v2, v2, v5

    if-gez v2, :cond_8

    .line 679
    const-string v2, "Not painting, someone just got dirty, do redraw strokes just yet, use cache for now"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v3, 0x65b9aa

    const-wide/16 v5, 0x32

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 683
    :cond_8
    const-string v2, "Not painting, dirty time out, draw cached for now and request new"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto/16 :goto_0

    .line 715
    .end local v10           #dirtyTime:J
    .end local v17           #now:J
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    if-lez v2, :cond_0

    .line 718
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mLeft:I

    int-to-float v3, v3

    aput v3, v19, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mTop:I

    int-to-float v3, v3

    aput v3, v19, v2

    .line 719
    .local v19, orignalPoint:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-object v2, v2, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 720
    const/4 v2, 0x1

    aget v4, v19, v2

    .line 721
    .local v4, offsetY:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 723
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mLeft:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mRight:I

    int-to-float v5, v2

    sget-object v7, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private generateCacheKey()J
    .locals 8

    .prologue
    .line 2043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2044
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2048
    .local v5, snapshots:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 2050
    .local v3, painting:Lcom/htc/painting/engine/HtcPainting;
    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    .line 2060
    :goto_0
    return-wide v6

    .line 2053
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 2054
    .local v4, snapshot:Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 2057
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    const-string v6, " matrix:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2058
    const-string v6, " rect:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2060
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v4           #snapshot:Lcom/htc/painting/engine/ViewPortSnapShot;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    goto :goto_0
.end method

.method private getDisplayDimen()[I
    .locals 3

    .prologue
    .line 1950
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1952
    .local v0, result:[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 1953
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 1954
    return-object v0
.end method

.method private getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/16 v2, 0xa

    .line 2450
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2452
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2453
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2454
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2455
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2456
    return-object v0
.end method

.method private getProgressLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/16 v2, 0xa

    .line 273
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 276
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 277
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    return-object v0
.end method

.method private initCore()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V

    .line 317
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    return-void
.end method

.method private isBackgroundCacheDrawing()Z
    .locals 1

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCacheBitmapValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 495
    const/4 v4, 0x1

    .line 496
    .local v4, result:Z
    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCreateTime()J

    move-result-wide v0

    .line 497
    .local v0, cacheTime:J
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v6, :cond_0

    .line 504
    :goto_0
    return v5

    .line 500
    :cond_0
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getDrawingStamp()J

    move-result-wide v2

    .line 501
    .local v2, lastStamp:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v4, v5

    .line 503
    :goto_1
    const-string v5, "HtcPaintingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTaskEnd: isCacheBitmapValid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 504
    goto :goto_0

    .line 501
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10
    .parameter "s"
    .parameter "vp"

    .prologue
    const/4 v2, 0x1

    .line 1983
    const-string v0, "HtcPaintingView"

    const-string v1, "partialUpdateCache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 1990
    .local v8, dimen:[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 1993
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->partialUpdateCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method private prepareCache()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1958
    const-string v0, "HtcPaintingView"

    const-string v1, "prepare cache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1961
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 1965
    .local v8, dimen:[I
    aget v0, v8, v4

    if-lez v0, :cond_0

    aget v0, v8, v5

    if-lez v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 1970
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v5, :cond_0

    .line 1973
    aget v0, v8, v4

    aget v1, v8, v5

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->prepareFakeCache(II[I)V

    .line 1977
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    aget v4, v8, v4

    aget v5, v8, v5

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->createCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;IILcom/htc/painting/engine/HtcPainting;[I)V

    goto :goto_0
.end method

.method private prepareFakeCache(II[I)V
    .locals 15
    .parameter "width"
    .parameter "height"
    .parameter "groupIds"

    .prologue
    .line 2019
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-nez v1, :cond_1

    .line 2040
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    .line 2022
    move-object/from16 v0, p3

    array-length v1, v0

    new-array v13, v1, [Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    .line 2023
    .local v13, records:[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2024
    .local v6, now:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v14, v1, :cond_3

    .line 2025
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v2, p3, v14

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    .line 2026
    .local v3, viewport:Lcom/htc/painting/engine/ViewPort;
    if-eqz v3, :cond_2

    new-instance v1, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    aget v2, p3, v14

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;-><init>(ILcom/htc/painting/engine/ViewPort;JJ)V

    aput-object v1, v13, v14

    .line 2024
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2030
    .end local v3           #viewport:Lcom/htc/painting/engine/ViewPort;
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    .line 2031
    new-instance v8, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;-><init>(IIII[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V

    .line 2035
    .local v8, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setIsDummyData(Z)V

    .line 2036
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    goto :goto_0
.end method

.method private processEvent(Landroid/view/MotionEvent;)V
    .locals 27
    .parameter "event"

    .prologue
    .line 1543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1544
    .local v12, eventStart:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 1547
    .local v10, N:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 1548
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 1549
    .local v8, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-nez v8, :cond_1

    const/4 v9, 0x0

    .line 1598
    .local v9, canvas:Landroid/graphics/Canvas;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1736
    :cond_0
    :goto_1
    return-void

    .line 1549
    .end local v9           #canvas:Landroid/graphics/Canvas;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRefTransformedCanvas(Ljava/util/Collection;)Landroid/graphics/Canvas;

    move-result-object v9

    goto :goto_0

    .line 1600
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_2

    .line 1605
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1608
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1612
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 1613
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 1615
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1624
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1626
    .local v21, renderStart:J
    if-eqz v10, :cond_8

    move/from16 v18, v10

    .line 1628
    .local v18, pointCount:I
    :goto_2
    const/4 v15, 0x0

    .local v15, j:I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    .line 1630
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_9

    if-nez v10, :cond_9

    .line 1631
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1632
    .local v4, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1633
    .local v5, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    .line 1634
    .local v6, p:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    .line 1641
    .local v7, s:F
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_4

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 1644
    :cond_4
    const/16 v17, 0x1

    .line 1645
    .local v17, outOfBoundary:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v11

    .line 1649
    .local v11, currentRect:Landroid/graphics/RectF;
    invoke-virtual {v11, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v17, 0x1

    .line 1651
    .end local v11           #currentRect:Landroid/graphics/RectF;
    :cond_5
    :goto_5
    if-eqz v17, :cond_6

    .line 1653
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v16

    .line 1654
    .local v16, nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_b

    const/4 v14, 0x1

    .line 1657
    .local v14, inAnotherGroup:Z
    :goto_6
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_c

    .line 1682
    .end local v14           #inAnotherGroup:Z
    .end local v16           #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    :cond_6
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v3, p0

    .line 1683
    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    .line 1628
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1626
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #p:F
    .end local v7           #s:F
    .end local v15           #j:I
    .end local v17           #outOfBoundary:Z
    .end local v18           #pointCount:I
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1636
    .restart local v15       #j:I
    .restart local v18       #pointCount:I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    .line 1637
    .restart local v4       #x:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    .line 1638
    .restart local v5       #y:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v6

    .line 1639
    .restart local v6       #p:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v7

    .restart local v7       #s:F
    goto/16 :goto_4

    .line 1649
    .restart local v11       #currentRect:Landroid/graphics/RectF;
    .restart local v17       #outOfBoundary:Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    .line 1654
    .end local v11           #currentRect:Landroid/graphics/RectF;
    .restart local v16       #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 1659
    .restart local v14       #inAnotherGroup:Z
    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

    .line 1662
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v3, p0

    .line 1664
    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1668
    :cond_d
    const-string v3, "HtcPaintingView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "out of boundary, group id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " pos, x:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " y : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1672
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1677
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1689
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #p:F
    .end local v7           #s:F
    .end local v14           #inAnotherGroup:Z
    .end local v16           #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    .end local v17           #outOfBoundary:Z
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1691
    .local v19, renderEnd:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1692
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_10

    .line 1693
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    move-wide/from16 v25, v0

    sub-long v25, v12, v25

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1695
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    sub-long v25, v19, v21

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1696
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    int-to-long v0, v10

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1697
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1701
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1705
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0xa

    cmp-long v3, v23, v25

    if-nez v3, :cond_10

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    .line 1710
    :cond_10
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    goto/16 :goto_1

    .line 1715
    .end local v15           #j:I
    .end local v18           #pointCount:I
    .end local v19           #renderEnd:J
    .end local v21           #renderStart:J
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1716
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_11

    .line 1717
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 1718
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1721
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 1723
    :cond_12
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1724
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1726
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1727
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_0

    .line 1728
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1730
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1731
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    goto/16 :goto_1

    .line 1598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private redrawDirtyRegion(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10
    .parameter "s"
    .parameter "vp"

    .prologue
    const/4 v2, 0x1

    .line 2000
    const-string v0, "HtcPaintingView"

    const-string v1, "redrawDirtyRegion"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2003
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 2007
    .local v8, dimen:[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 2010
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->addPartialUpdateTask(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method private resetCache()V
    .locals 2

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1}, Lcom/htc/painting/engine/CacheBitmapWorker;->cancelAll()V

    .line 1146
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 1147
    .local v0, temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    .line 1148
    :cond_0
    return-void
.end method

.method private resetEventData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1527
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1528
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1529
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1530
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1531
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1532
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1533
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1534
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1535
    return-void
.end method

.method private resetFpsData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 571
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 572
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 573
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 574
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 575
    return-void
.end method

.method private setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 476
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    .line 479
    const/4 p1, 0x0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 484
    .local v0, temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 485
    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    .line 487
    .end local v0           #temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    :cond_2
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 488
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setRefData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 489
    :cond_3
    const-string v1, "HtcPaintingView"

    const-string v2, "updateCacheDataIfValid: mCacheBmpData updated"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private setShowPerformanceInfo(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2440
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2446
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    .line 2447
    return-void

    .line 2443
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x8

    const/4 v11, -0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 193
    new-instance v5, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010287

    invoke-direct {v5, p1, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 195
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getProgressLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 197
    .local v1, layout:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5, v1}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v5, Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {v5, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 200
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {v5, v12}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    .line 202
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    new-instance v6, Lcom/htc/painting/engine/HtcPaintingView$2;

    invoke-direct {v6, p0}, Lcom/htc/painting/engine/HtcPaintingView$2;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    invoke-virtual {v5, v6}, Lcom/htc/painting/engine/edit/StrokeEditView;->setOnSelectionListener(Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;)V

    .line 225
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v2, lo:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {p0, v5, v2}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object v0, p1

    .line 231
    .local v0, ctxt:Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/painting/engine/HtcPaintingView$3;

    invoke-direct {v5, p0, v0}, Lcom/htc/painting/engine/HtcPaintingView$3;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    .local v3, loadPenThread:Ljava/lang/Thread;
    const-string v5, "Load Pens"

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 240
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 243
    invoke-virtual {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setWillNotDraw(Z)V

    .line 245
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->createHoverCirclePaint()Landroid/graphics/Paint;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 246
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 248
    const-string v5, "paintingview.showperformance"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 250
    iget-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v5, :cond_0

    .line 251
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 252
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 253
    .local v4, para:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setupPerformanceInfoStyle(Landroid/widget/TextView;)V

    .line 255
    invoke-direct {p0, v9}, Lcom/htc/painting/engine/HtcPaintingView;->setShowPerformanceInfo(Z)V

    .line 258
    .end local v4           #para:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v5, Lcom/htc/painting/engine/CacheBitmapWorker;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v7, v7, v9

    invoke-direct {v5, v6, v7}, Lcom/htc/painting/engine/CacheBitmapWorker;-><init>(FF)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 260
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v6, v7, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 261
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 267
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 269
    return-void

    .line 260
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private setupPerformanceInfoStyle(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2354
    if-eqz p1, :cond_0

    .line 2355
    const/high16 v0, 0x41c0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2356
    const/high16 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2357
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2359
    :cond_0
    return-void
.end method

.method private startWorkers()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->start()V

    .line 327
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$4;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$4;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 350
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$5;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$5;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 436
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$6;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$6;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 453
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 454
    return-void
.end method

.method private stopWorkers()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 510
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->stop()V

    .line 511
    return-void
.end method

.method private strokeGroupOnCacheBmpData(Lcom/htc/painting/engine/ViewPortSnapShot;)Z
    .locals 6
    .parameter "groupSnapshot"

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 733
    .local v0, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return v4

    .line 735
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 736
    .local v1, dataArea:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRect(Landroid/graphics/RectF;)V

    .line 738
    const/4 v2, 0x0

    .line 739
    .local v2, result:Z
    if-eqz p1, :cond_2

    .line 740
    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 741
    .local v3, viewPortArea:Landroid/graphics/RectF;
    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    move v2, v4

    .end local v3           #viewPortArea:Landroid/graphics/RectF;
    :cond_2
    :goto_1
    move v4, v2

    .line 745
    goto :goto_0

    .line 741
    .restart local v3       #viewPortArea:Landroid/graphics/RectF;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V
    .locals 5
    .parameter "data"
    .parameter "canvas"
    .parameter "state"

    .prologue
    .line 1817
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 1818
    .local v0, c:Landroid/graphics/Canvas;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1819
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1820
    .local v1, dirtyRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3, v0, v4, v1, p3}, Lcom/htc/painting/engine/HtcPainting;->PaintingEnd(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Landroid/graphics/RectF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    .line 1822
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    .line 1823
    iget-boolean v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v3, :cond_3

    .line 1824
    invoke-direct {p0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1831
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1832
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1841
    .end local v1           #dirtyRect:Landroid/graphics/RectF;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-void

    .line 1817
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    goto :goto_0

    .line 1826
    .restart local v0       #c:Landroid/graphics/Canvas;
    .restart local v1       #dirtyRect:Landroid/graphics/RectF;
    .restart local v2       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_1
.end method

.method private triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "data"
    .parameter "canvas"

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    .line 1791
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1792
    .local v8, dirtyRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingMove(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    .line 1796
    .local v11, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v11, :cond_0

    .line 1797
    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_2

    .line 1798
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1803
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1805
    .local v9, now:J
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1808
    .end local v8           #dirtyRect:Landroid/graphics/RectF;
    .end local v9           #now:J
    .end local v11           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-void

    .line 1800
    .restart local v8       #dirtyRect:Landroid/graphics/RectF;
    .restart local v11       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_2
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "data"
    .parameter "canvas"

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p6, :cond_2

    .line 1749
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    .line 1750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1751
    .local v9, now:J
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1758
    .end local v9           #now:J
    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1759
    .local v8, dirtyRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingStart(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    .line 1763
    .local v11, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v11, :cond_1

    .line 1764
    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_3

    .line 1765
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1772
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isBackgroundCacheDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1773
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    invoke-direct {p0, v11, v1}, Lcom/htc/painting/engine/HtcPaintingView;->redrawDirtyRegion(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    .line 1777
    .end local v8           #dirtyRect:Landroid/graphics/RectF;
    .end local v11           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_2
    return-void

    .line 1767
    .restart local v8       #dirtyRect:Landroid/graphics/RectF;
    .restart local v11       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/RectF;)V
    .locals 8
    .parameter "dirtyRect"

    .prologue
    const/high16 v7, 0x3f00

    .line 1863
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1864
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    .line 1865
    .local v1, vp:Lcom/htc/painting/engine/ViewPort;
    const/4 v2, 0x0

    .line 1866
    .local v2, vpMatrix:Landroid/graphics/Matrix;
    if-eqz v1, :cond_0

    .line 1867
    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1868
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1869
    .local v0, r:Landroid/graphics/RectF;
    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1870
    if-eqz v2, :cond_1

    .line 1871
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1873
    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate(IIII)V

    .line 1876
    .end local v0           #r:Landroid/graphics/RectF;
    .end local v1           #vp:Lcom/htc/painting/engine/ViewPort;
    .end local v2           #vpMatrix:Landroid/graphics/Matrix;
    :cond_2
    return-void
.end method

.method private updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1
    .parameter "data"

    .prologue
    .line 463
    const/4 v0, 0x1

    .line 464
    .local v0, valid:Z
    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 471
    :goto_0
    return v0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method private updateDrawingInfo()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    .line 620
    return-void
.end method

.method private updateDrawingInfo(Z)V
    .locals 8
    .parameter "forceUpdate"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_1

    .line 624
    const-string v6, "HtcPaintingView"

    const-string v7, "HtcPaintingView is not initialized"

    invoke-static {v6, v7}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v6}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .line 631
    .local v0, groupIds:[I
    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 633
    const/4 v5, 0x0

    .line 634
    .local v5, viewport:Lcom/htc/painting/engine/ViewPort;
    array-length v6, v0

    new-array v4, v6, [Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 635
    .local v4, records:[Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 636
    .local v2, now:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 637
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    .line 638
    if-eqz v5, :cond_2

    .line 639
    new-instance v6, Lcom/htc/painting/engine/ViewPortSnapShot;

    aget v7, v0, v1

    invoke-direct {v6, v7, v5, v2, v3}, Lcom/htc/painting/engine/ViewPortSnapShot;-><init>(ILcom/htc/painting/engine/ViewPort;J)V

    aput-object v6, v4, v1

    .line 636
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 644
    :cond_3
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6, v4, p1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    goto :goto_0
.end method

.method private updateSeletion(Landroid/graphics/RectF;)V
    .locals 11
    .parameter "region"

    .prologue
    .line 284
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 285
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v4, v0, v3

    .line 286
    .local v4, id:I
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10, v4}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 287
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 288
    .local v6, m:Landroid/graphics/Matrix;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v9

    .line 289
    .local v9, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/stroke/Stroke;

    .line 290
    .local v8, s:Lcom/htc/painting/engine/stroke/Stroke;
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 291
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 292
    invoke-virtual {p1, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 293
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v7           #r:Landroid/graphics/RectF;
    .end local v8           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 297
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v4           #id:I
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v9           #strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_2
    return-void
.end method

.method private updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1880
    invoke-virtual {p1}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1881
    .local v0, strokeRect:Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1883
    .end local v0           #strokeRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method


# virtual methods
.method public addHighlightRegion(ILandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 3
    .parameter "groupId"
    .parameter "highlightRange"
    .parameter "highlightPaint"

    .prologue
    .line 2817
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    if-nez v2, :cond_0

    .line 2818
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    .line 2821
    :cond_0
    if-nez p3, :cond_1

    .line 2822
    iget-object p3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 2824
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    .line 2825
    .local v1, vp:Lcom/htc/painting/engine/ViewPort;
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {v0, p0, v2, v1, p3}, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Paint;)V

    .line 2826
    .local v0, data:Lcom/htc/painting/engine/HtcPaintingView$HighlightData;
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2827
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->postInvalidate()V

    .line 2828
    return-void
.end method

.method public addHighlightRegion(ILjava/lang/String;Landroid/graphics/Paint;)V
    .locals 17
    .parameter "groupId"
    .parameter "InputRange"
    .parameter "highlightPaint"

    .prologue
    .line 2775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    if-nez v13, :cond_0

    .line 2776
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    .line 2779
    :cond_0
    if-nez p3, :cond_1

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 p3, v0

    .line 2782
    :cond_1
    const-string v13, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2783
    .local v9, ranges:[Ljava/lang/String;
    array-length v8, v9

    .line 2784
    .local v8, rangeLength:I
    sget-boolean v13, Lcom/htc/painting/engine/HtcPaintingView;->$assertionsDisabled:Z

    if-nez v13, :cond_2

    const/4 v13, 0x2

    if-eq v8, v13, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 2786
    :cond_2
    const/4 v2, -0x1

    .line 2787
    .local v2, beginStrokeIndex:I
    const/4 v4, -0x1

    .line 2789
    .local v4, endStrokeIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_6

    .line 2790
    aget-object v13, v9, v5

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2791
    .local v10, strokeInfo:[Ljava/lang/String;
    sget-boolean v13, Lcom/htc/painting/engine/HtcPaintingView;->$assertionsDisabled:Z

    if-nez v13, :cond_3

    array-length v13, v10

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 2792
    :cond_3
    if-nez v5, :cond_4

    .line 2793
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2795
    :cond_4
    const/4 v13, 0x1

    if-ne v5, v13, :cond_5

    .line 2796
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2789
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2800
    .end local v10           #strokeInfo:[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/htc/painting/engine/HtcPaintingView;->getStrokesFromReqGroup(I)Ljava/util/List;

    move-result-object v11

    .line 2801
    .local v11, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/htc/painting/engine/HtcPaintingView;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v12

    .line 2802
    .local v12, vp:Lcom/htc/painting/engine/ViewPort;
    new-instance v7, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v7, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2804
    .local v7, r:Landroid/graphics/RectF;
    move v6, v2

    .local v6, j:I
    :goto_1
    if-gt v6, v4, :cond_7

    .line 2805
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v13}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 2804
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2807
    :cond_7
    new-instance v3, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v7, v12, v1}, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Paint;)V

    .line 2808
    .local v3, data:Lcom/htc/painting/engine/HtcPaintingView$HighlightData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2809
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->postInvalidate()V

    .line 2810
    return-void
.end method

.method public canRedo()Z
    .locals 2

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/4 v0, 0x0

    .line 1109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->canRedo()Z

    move-result v0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/4 v0, 0x0

    .line 1098
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->canUndo()Z

    move-result v0

    goto :goto_0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1130
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1132
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_0
    return-void

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->clearAllStrokeGroups()V

    .line 1137
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1138
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 1139
    .local v1, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v1}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onClearAll()V

    goto :goto_0
.end method

.method public clearHighlightRegions()V
    .locals 1

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2838
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHighlightDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2840
    :cond_0
    return-void
.end method

.method public clearInkDrawingCache()V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    .line 2427
    :cond_0
    return-void
.end method

.method public clearStrokeGroup(I)V
    .locals 3
    .parameter "groupId"

    .prologue
    .line 1919
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeGroup groupId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1921
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    .line 1925
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1926
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearStrokeGroups([I)V
    .locals 7
    .parameter "groupIds"

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1937
    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :goto_0
    return-void

    .line 1940
    :cond_0
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 1941
    .local v2, id:I
    const-string v4, "HtcPaintingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearStrokeGroup groupId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, v2}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    .line 1940
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1944
    .end local v2           #id:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1945
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearUndoRedoHistory()V
    .locals 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->clearUndoManager()V

    goto :goto_0
.end method

.method public deleteStrokeGroup(I)V
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1364
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeStrokeGroup(I)V

    goto :goto_0
.end method

.method destoryInkCacheData()V
    .locals 1

    .prologue
    .line 2108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 2109
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2084
    const-string v0, "HtcPaintingView"

    const-string v1, "destroy htcpainting"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->destroy()V

    .line 2087
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 2088
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->stopWorkers()V

    .line 2090
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2092
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    .line 2097
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->destoryInkCacheData()V

    .line 2100
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1505
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1506
    .local v0, isPen:Z
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    if-eqz v2, :cond_3

    .line 1507
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->processEvent(Landroid/view/MotionEvent;)V

    .line 1508
    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    if-eqz v2, :cond_2

    .line 1512
    :cond_1
    :goto_0
    return v1

    .line 1508
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1509
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1512
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"

    .prologue
    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V

    .line 1224
    return-void
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V
    .locals 9
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "viewport"

    .prologue
    .line 1238
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-nez v0, :cond_2

    .line 1239
    :cond_0
    const-string v0, "HtcPaintingView"

    const-string v2, "bitmap == null || groupId == null || mHtcPainting == null"

    invoke-static {v0, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_1
    :goto_0
    return-void

    .line 1242
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1243
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/engine/StrokeGroup;

    .line 1244
    .local v7, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v7, :cond_1

    .line 1246
    invoke-virtual {v7, p3}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v8

    .line 1247
    .local v8, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPainting;->draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V
    .locals 5
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1202
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1203
    :cond_0
    const-string v3, "HtcPaintingView"

    const-string v4, "bitmap == null || strokeGroupIds == null"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :goto_0
    return-void

    .line 1206
    :cond_1
    new-array v0, v4, [I

    aput p2, v0, v3

    .line 1207
    .local v0, groupIds:[I
    new-array v1, v4, [Lcom/htc/painting/engine/ViewPort;

    aput-object p3, v1, v3

    .line 1208
    .local v1, ports:[Lcom/htc/painting/engine/ViewPort;
    new-instance v2, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v2, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 1209
    .local v2, wrapper:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v4, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v4}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;[I)V
    .locals 3
    .parameter "bitmap"
    .parameter "groupIds"

    .prologue
    .line 1181
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1182
    :cond_0
    const-string v1, "HtcPaintingView"

    const-string v2, "bitmap == null || strokeGroupIds == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_1
    new-instance v0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 1186
    .local v0, wrapper:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v2, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v2}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v1, v0, p2, v2}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    .line 584
    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 596
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPaintingView;->drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    .line 597
    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V
    .locals 7
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "viewport"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPainting;->draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public enableEditMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    if-eqz v0, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    .line 2726
    :goto_0
    return-void

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableEraseMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1893
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1894
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->enableEraseMode(Z)V

    goto :goto_0
.end method

.method public enablePainting(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 2129
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    :goto_0
    return-void

    .line 2133
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2135
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2136
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2138
    :cond_1
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePainting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 2140
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0

    .line 2135
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1
.end method

.method public enableTouchPainting(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2317
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 2318
    return-void
.end method

.method public freezeCacheWorker()V
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->freeze()V

    .line 2741
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->interrupt()Z

    .line 2743
    :cond_0
    return-void
.end method

.method public getBoundingRectF(I)Landroid/graphics/RectF;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 2072
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const/4 v0, 0x0

    .line 2076
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getBoundingRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayAlpha()I
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getRequestedStrokeGroupCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2116
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2117
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getRequestedStrokeGroupIds()[I
    .locals 2

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1463
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const/4 v0, 0x0

    .line 1466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getStroke(II)Ljava/lang/ref/WeakReference;
    .locals 5
    .parameter "groupId"
    .parameter "strokeID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1402
    .local v0, result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1403
    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/4 v3, 0x0

    .line 1414
    :goto_0
    return-object v3

    .line 1406
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 1407
    .local v2, sg:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v2, :cond_1

    .line 1408
    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    .line 1409
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_1

    .line 1410
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0           #result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .restart local v0       #result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_1
    move-object v3, v0

    .line 1414
    goto :goto_0
.end method

.method public getStrokeGroupMemorySize(I)J
    .locals 2
    .parameter "groupId"

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    const-wide/16 v0, 0x0

    .line 2338
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupMemorySize(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    .line 913
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v0

    goto :goto_0
.end method

.method public getStrokesFromReqGroup(I)Ljava/util/List;
    .locals 1
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->getStrokesFromReqGroup(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokesFromReqGroup(IZ)Ljava/util/List;
    .locals 9
    .parameter "groupId"
    .parameter "containIneffectiveStroke"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1435
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1436
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :cond_0
    :goto_0
    return-object v6

    .line 1439
    :cond_1
    const/4 v3, 0x0

    .line 1440
    .local v3, inReqGroups:Z
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget v1, v0, v2

    .line 1441
    .local v1, i:I
    if-ne v1, p1, :cond_3

    .line 1442
    const/4 v3, 0x1

    .line 1446
    .end local v1           #i:I
    :cond_2
    if-nez v3, :cond_4

    .line 1447
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "this group is not requested!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1440
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1449
    .end local v1           #i:I
    :cond_4
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/StrokeGroup;

    .line 1450
    .local v5, sg:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v5, :cond_0

    .line 1451
    invoke-virtual {v5, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public getViewPort(I)Lcom/htc/painting/engine/ViewPort;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Lcom/htc/painting/engine/AbsSerializeDAO;)V
    .locals 1
    .parameter "serializeDAO"

    .prologue
    .line 307
    new-instance v0, Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/HtcPainting;-><init>(Lcom/htc/painting/engine/AbsSerializeDAO;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 308
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->initCore()V

    .line 309
    return-void
.end method

.method public interceptPenEvent(Z)V
    .locals 0
    .parameter "intercept"

    .prologue
    .line 2175
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 2176
    return-void
.end method

.method public isEraseModeOn()Z
    .locals 2

    .prologue
    .line 1905
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v0, 0x0

    .line 1909
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->isEraseMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPainting()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaintingEnable()Z
    .locals 2

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2148
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const/4 v0, 0x0

    .line 2151
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    goto :goto_0
.end method

.method public isStrokeGroupClean(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v0, 0x0

    .line 1387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->isStrokeGroupClean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isStrokeGroupModified(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 2370
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2371
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    const/4 v0, 0x0

    .line 2374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->isStrokeGroupModified(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1490
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 536
    .local v4, start:J
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    .line 538
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 539
    .local v1, now:J
    iget-boolean v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 540
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 541
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    sub-long v8, v1, v8

    div-long/2addr v6, v8

    long-to-float v0, v6

    .line 542
    .local v0, f:F
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    long-to-float v6, v6

    add-float/2addr v6, v0

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 543
    sub-long v6, v1, v4

    long-to-float v3, v6

    .line 544
    .local v3, o:F
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    long-to-float v6, v6

    add-float/2addr v6, v3

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 545
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 548
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 549
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 550
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 551
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \nPaintingView OnDraw Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nEvent Dispatch Time Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nStroke Partial Render Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nEvent Count in Queue Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    .line 558
    .end local v0           #f:F
    .end local v3           #o:F
    :cond_1
    iput-wide v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 560
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2156
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2157
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2158
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2159
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2160
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2162
    if-eqz p1, :cond_0

    .line 2163
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 2164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    .line 2166
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 2651
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 2652
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2654
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2655
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2657
    :cond_0
    return-void

    .line 2654
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public redo()V
    .locals 9

    .prologue
    .line 963
    const/4 v3, 0x0

    .line 964
    .local v3, edit:Lcom/htc/painting/engine/undo/UndoableEdit;
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 965
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canRedo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 969
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    .line 970
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->redo()V

    .line 971
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 972
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 973
    .local v5, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onRedo()V

    goto :goto_1

    .line 983
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    :cond_2
    if-eqz v3, :cond_4

    .line 984
    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 985
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 986
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getUndoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 987
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 988
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 989
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    .line 993
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 994
    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 995
    .local v6, sa:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 2400
    return-void
.end method

.method public removeOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2284
    :cond_0
    return-void
.end method

.method public removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2304
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :goto_0
    return-void

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroup(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(IZ)V

    .line 2190
    return-void
.end method

.method public requestSaveStrokeGroup(IZ)V
    .locals 3
    .parameter "id"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2201
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSaveStrokeGroup, groupId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2203
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    :goto_0
    return-void

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->saveGroup(IZ)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroups([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 2248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroups([IZ)V

    .line 2249
    return-void
.end method

.method public requestSaveStrokeGroups([IZ)V
    .locals 7
    .parameter "ids"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2259
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 2260
    .local v2, id:I
    const-string v4, "HtcPaintingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestSaveStrokeGroups, groupId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2261
    .end local v2           #id:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2262
    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :goto_1
    return-void

    .line 2265
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->SaveGroups([IZ)V

    goto :goto_1
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 1
    .parameter "groupIds"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 2218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    .line 2219
    return-void
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 2
    .parameter "groupIds"
    .parameter "key"
    .parameter "callback"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2232
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2233
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :goto_0
    return-void

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->SaveGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    goto :goto_0
.end method

.method public requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z
    .locals 6
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    const/4 v5, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1303
    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const/4 v3, 0x1

    new-array v2, v3, [Z

    aput-boolean v5, v2, v5

    .line 1317
    :goto_0
    return-object v2

    .line 1307
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    move-result-object v2

    .line 1308
    .local v2, returnArray:[Z
    array-length v3, v2

    new-array v0, v3, [I

    .line 1309
    .local v0, currentStrokeGroupIdArray:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1310
    aget-boolean v3, v2, v1

    if-eqz v3, :cond_1

    .line 1311
    aget v3, p1, v1

    aput v3, v0, v1

    .line 1312
    const-string v3, "HtcPaintingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestStrokeGroups, id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1315
    :cond_2
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 1316
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v4, 0x65b9ab

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 3
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :goto_0
    return-void

    .line 1336
    :cond_0
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$7;

    invoke-direct {v0, p0, p4}, Lcom/htc/painting/engine/HtcPaintingView$7;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    .line 1351
    .local v0, requestCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    .line 1352
    const/4 v0, 0x0

    .line 1353
    goto :goto_0
.end method

.method public setDisplayAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1155
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1161
    return-void
.end method

.method public setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 1
    .parameter "docViewport"

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/DrawingInfo;->setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 2693
    return-void
.end method

.method public setDrawingPartialInvalidate(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2466
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 2467
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2706
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2707
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2709
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2710
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2712
    :cond_0
    return-void

    .line 2709
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public setInkDrawingCacheRatio(FF)V
    .locals 2
    .parameter "xRatio"
    .parameter "yRatio"

    .prologue
    const/high16 v1, 0x3f80

    .line 2383
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 2384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InkDrawingCacheRatio must be greater or equal to 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2387
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 2388
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_2

    .line 2389
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/CacheBitmapWorker;->setCacheSizeRatio(FF)V

    .line 2391
    :cond_2
    return-void
.end method

.method public setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 2396
    return-void
.end method

.method public setOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2274
    :cond_0
    return-void
.end method

.method public setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :goto_0
    return-void

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 3
    .parameter "p"
    .parameter "defaultProperties"

    .prologue
    const/4 v2, 0x1

    .line 868
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .end local p1
    :goto_0
    return-void

    .line 873
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/painting/engine/HtcPen$EraserPen;

    if-eqz v0, :cond_2

    .line 874
    invoke-virtual {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    .line 875
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    .line 876
    if-eqz p2, :cond_1

    .line 877
    invoke-virtual {p2, v2}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 878
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 879
    check-cast p1, Lcom/htc/painting/engine/HtcPen;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/painting/engine/HtcPen;->getDefaultWidth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 887
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    .line 884
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    .line 885
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    goto :goto_1
.end method

.method public setSeparatorDist(I)V
    .locals 0
    .parameter "dist"

    .prologue
    .line 2701
    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 2702
    return-void
.end method

.method public setShowProcessingIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2435
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 2436
    return-void
.end method

.method public setStrokeGroupRotation(II)Z
    .locals 2
    .parameter "groupId"
    .parameter "degree"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const/4 v0, 0x0

    .line 1485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeGroupRotation(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method public setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z
    .locals 4
    .parameter "groupId"
    .parameter "viewPort"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-array v2, v3, [I

    aput p1, v2, v0

    new-array v3, v3, [Lcom/htc/painting/engine/ViewPort;

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/engine/HtcPainting;->setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z

    move-result v0

    goto :goto_0
.end method

.method public transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 3
    .parameter "groupId"
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    .line 2674
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2675
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    const/4 v0, 0x0

    .line 2682
    :goto_0
    return v0

    .line 2679
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    move-result v0

    .line 2681
    .local v0, result:Z
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method public unFreezeCacheworker()V
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->unFreeze()V

    .line 2754
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 2755
    return-void
.end method

.method public undo()V
    .locals 9

    .prologue
    .line 921
    const/4 v3, 0x0

    .line 923
    .local v3, edit:Lcom/htc/painting/engine/undo/UndoableEdit;
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 924
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canUndo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 928
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    .line 929
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->undo()V

    .line 930
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 931
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 932
    .local v5, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onUndo()V

    goto :goto_1

    .line 942
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    :cond_2
    if-eqz v3, :cond_4

    .line 943
    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 944
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 945
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getRedoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 946
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 947
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 948
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    .line 952
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 953
    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 954
    .local v6, sa:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method
