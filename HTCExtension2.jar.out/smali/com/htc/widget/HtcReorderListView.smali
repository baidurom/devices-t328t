.class public Lcom/htc/widget/HtcReorderListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;,
        Lcom/htc/widget/HtcReorderListView$TangentInterpolator;,
        Lcom/htc/widget/HtcReorderListView$WaveRunnable;,
        Lcom/htc/widget/HtcReorderListView$DragWindowMove;,
        Lcom/htc/widget/HtcReorderListView$MovingItem;,
        Lcom/htc/widget/HtcReorderListView$RemoveListener;,
        Lcom/htc/widget/HtcReorderListView$DropListener;,
        Lcom/htc/widget/HtcReorderListView$DragListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x96

.field private static final DEBUG:Z = false

.field protected static final DRAG_MODE_DRAG:I = 0x1

.field protected static final DRAG_MODE_REST:I = 0x0

.field protected static final DRAG_MODE_SCROLL:I = 0x3

.field protected static final DRAG_MODE_WAVE:I = 0x2

.field protected static final INVALID_DRAG_POS:I = -0x2

.field private static final TAG:Ljava/lang/String; = "HtcReorderListView"


# instance fields
.field private colorMatrix:Landroid/graphics/ColorMatrix;

.field private diffX:I

.field private diffY:I

.field downScaleAnimator:Landroid/view/animation/Animation;

.field private imagePressed:Landroid/graphics/drawable/LayerDrawable;

.field private imageRest:Landroid/graphics/drawable/LayerDrawable;

.field private mAllItemFocusable:Z

.field private mBoundPaint:Landroid/graphics/Paint;

.field mCacheItemPadding:[I

.field mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragItemCache:Landroid/widget/ImageView;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field protected mDragMode:I

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragPosX:I

.field private mDragPosY:I

.field private mDragViewWithFrame:Landroid/view/View;

.field private mDraggerId:I

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mFrameCornerBottomPadding:I

.field private mFrameCornerTopPadding:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLastDragPos:I

.field mLastY:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mUpperBound:I

.field private mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I

.field private targetDragger:Landroid/view/View;

.field upScaleAnimator:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, -0x1

    const/high16 v10, 0x437f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 119
    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 130
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    .line 143
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 145
    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 147
    iput-object v7, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    .line 150
    iput-boolean v9, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 152
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    .line 153
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerBottomPadding:I

    .line 154
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    .line 161
    iput-object v7, p0, Lcom/htc/widget/HtcReorderListView;->downScaleAnimator:Landroid/view/animation/Animation;

    .line 162
    iput-object v7, p0, Lcom/htc/widget/HtcReorderListView;->upScaleAnimator:Landroid/view/animation/Animation;

    .line 168
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->colorMatrix:Landroid/graphics/ColorMatrix;

    .line 169
    iput-object v7, p0, Lcom/htc/widget/HtcReorderListView;->imagePressed:Landroid/graphics/drawable/LayerDrawable;

    .line 170
    iput-object v7, p0, Lcom/htc/widget/HtcReorderListView;->imageRest:Landroid/graphics/drawable/LayerDrawable;

    .line 172
    const v5, 0x20200ed

    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 179
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 181
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x209004e

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    .line 182
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->init()V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "multiply_color"

    const/high16 v7, 0x206

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 187
    .local v0, color:I
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->reset()V

    .line 189
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 190
    .local v1, colorArray:[F
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    aput v5, v1, v8

    .line 191
    const/4 v5, 0x6

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    aput v6, v1, v5

    .line 192
    const/16 v5, 0xc

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    aput v6, v1, v5

    .line 193
    const/16 v5, 0x12

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    aput v6, v1, v5

    .line 194
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 198
    .local v4, resource:Landroid/content/res/Resources;
    const/4 v5, 0x2

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    .line 199
    .local v3, layers:[Landroid/graphics/drawable/Drawable;
    const v5, 0x2080127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v8

    .line 200
    const v5, 0x2080126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v9

    .line 201
    aget-object v5, v3, v9

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 203
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->imagePressed:Landroid/graphics/drawable/LayerDrawable;

    .line 205
    const v5, 0x2080129

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v9

    .line 206
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->imageRest:Landroid/graphics/drawable/LayerDrawable;

    .line 210
    const/16 v5, 0x5dd

    const-string v6, " REORDER_LISTVIEW_MOVE "

    invoke-static {v9, p0, v5, v6}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcReorderListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcReorderListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcReorderListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcReorderListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcReorderListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcReorderListView;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcReorderListView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcReorderListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcReorderListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcReorderListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->imageRest:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private adjustScrollBounds()V
    .locals 3

    .prologue
    .line 390
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    div-int/lit8 v0, v1, 0xa

    .line 391
    .local v0, range:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    .line 392
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    .line 393
    return-void
.end method

.method private dragView(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1014
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    sub-int v0, v3, v4

    .line 1015
    .local v0, adjY:I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1016
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 1017
    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    sub-int v2, v3, v4

    .line 1019
    .local v2, topBound:I
    if-ge v0, v2, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1026
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    return-void

    .line 1021
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v0, v3, :cond_1

    .line 1022
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private expandItem()V
    .locals 17

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v12, :cond_5

    .line 468
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v12, v13, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 470
    .local v2, drag:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 471
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .end local v2           #drag:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-lt v12, v13, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 486
    .local v3, expand:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    add-int/lit8 v9, v12, -0x1

    .line 488
    .local v9, shrink:I
    :goto_1
    if-ne v9, v3, :cond_4

    .line 562
    .end local v3           #expand:I
    .end local v9           #shrink:I
    :cond_1
    :goto_2
    return-void

    .line 482
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v3, v12, -0x1

    .restart local v3       #expand:I
    goto :goto_0

    .line 486
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    goto :goto_1

    .line 497
    .restart local v9       #shrink:I
    :cond_4
    new-instance v7, Lcom/htc/widget/HtcReorderListView$MovingItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9, v3}, Lcom/htc/widget/HtcReorderListView$MovingItem;-><init>(Lcom/htc/widget/HtcReorderListView;II)V

    .line 498
    .local v7, item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v12, v12, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 503
    .end local v3           #expand:I
    .end local v7           #item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    .end local v9           #shrink:I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v1, v12, v13

    .line 504
    .local v1, childnum:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_6

    .line 505
    add-int/lit8 v1, v1, -0x1

    .line 512
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 514
    .local v4, firstDrag:Landroid/view/View;
    const/4 v6, 0x0

    .line 515
    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 516
    .local v11, vv:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 521
    .local v5, height:I
    const/4 v10, 0x0

    .line 523
    .local v10, visibility:I
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 525
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcReorderListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_9

    .line 527
    :cond_7
    const/4 v10, 0x4

    .line 547
    :cond_8
    :goto_4
    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_c

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 550
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    .line 556
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 557
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 558
    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 514
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 533
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const/4 v5, 0x1

    .line 534
    const/4 v10, 0x4

    goto :goto_4

    .line 536
    :cond_a
    if-ne v6, v1, :cond_b

    .line 537
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v12, v13, :cond_8

    .line 538
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 540
    :cond_b
    if-nez v6, :cond_8

    const/4 v12, -0x1

    if-ne v1, v12, :cond_8

    .line 541
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 552
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5
.end method

.method private forceDrop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1100
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1101
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 1102
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 1103
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 1109
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 1111
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 1112
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 1113
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    .line 1114
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 1115
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 1116
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 1118
    :cond_1
    return-void
.end method

.method private getItemForPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 348
    move v0, p2

    .line 349
    .local v0, adjY:I
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    if-lt v2, p2, :cond_2

    .line 350
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 358
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v1

    .line 360
    .local v1, pos:I
    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    .line 361
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v1, v2, :cond_1

    .line 362
    add-int/lit8 v1, v1, 0x1

    .line 383
    :cond_1
    :goto_1
    return v1

    .line 351
    .end local v1           #pos:I
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v2, :cond_0

    .line 355
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    goto :goto_0

    .line 364
    .restart local v1       #pos:I
    :cond_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_1

    .line 368
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->initAnimation()V

    .line 315
    return-void
.end method

.method private initAnimation()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/high16 v1, 0x3f80

    .line 305
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->upScaleAnimator:Landroid/view/animation/Animation;

    .line 306
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->upScaleAnimator:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 307
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->upScaleAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 308
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f733333

    const v4, 0x3f666666

    move v3, v1

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->downScaleAnimator:Landroid/view/animation/Animation;

    .line 309
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->downScaleAnimator:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 310
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->downScaleAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    return-void
.end method

.method private moveDragView(I)V
    .locals 3
    .parameter "deltaY"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1034
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 326
    if-gez p2, :cond_0

    .line 329
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v4

    .line 330
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 344
    .end local v4           #pos:I
    :goto_0
    return v4

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 336
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    .line 337
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 338
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 340
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v4, v5, v3

    goto :goto_0

    .line 337
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 344
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private scrollList(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p2, v4, :cond_3

    .line 884
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 886
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 887
    if-le p2, v1, :cond_2

    const/16 v0, 0x18

    .line 902
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 904
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    .line 905
    const/4 v3, 0x1

    .line 907
    :cond_1
    return v3

    .line 887
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 889
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p2, v4, :cond_0

    .line 891
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_4

    const/16 v0, -0x18

    .line 892
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 893
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 898
    const/4 v0, 0x0

    goto :goto_0

    .line 891
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 953
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 955
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_0

    .line 956
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 958
    :cond_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 959
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 960
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 961
    .local v0, listLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 962
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    aget v3, v0, v3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 963
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 964
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 965
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 966
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->diffX:I

    .line 967
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->diffY:I

    .line 968
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 973
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 974
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x20300c2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 976
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v3, 0x2020102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 978
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v3, "common_rearrange_frame"

    const v4, 0x2080198

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 981
    .local v1, resId:I
    if-eqz v1, :cond_1

    .line 982
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 983
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    .line 984
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerBottomPadding:I

    .line 985
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 986
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerBottomPadding:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 990
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 991
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 992
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 993
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 994
    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 997
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 998
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 999
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_4

    .line 1000
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 1003
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->diffX:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1004
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->diffY:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1005
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->diffX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1006
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->diffY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1007
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1009
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->imageRest:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :cond_5
    return-void

    .line 960
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1038
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1043
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1048
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_3

    .line 1051
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mReorderMoveMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 1052
    :cond_3
    return-void
.end method

.method private stopMoving()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1294
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 1297
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 1301
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 1303
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 1304
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 1305
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    .line 1306
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 1307
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 1308
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 1313
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 13
    .parameter "deletion"

    .prologue
    const/4 v12, 0x0

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 404
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_1

    .line 405
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v3

    .line 408
    .local v3, position:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 409
    .local v6, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    invoke-virtual {p0, v3, v6}, Lcom/htc/widget/HtcReorderListView;->setSelectionFromTop(II)V

    .line 414
    .end local v3           #position:I
    .end local v6           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->layoutChildren()V

    .line 415
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 421
    :goto_1
    if-nez v4, :cond_1

    .line 422
    return-void

    .line 425
    :cond_1
    instance-of v7, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_4

    move-object v5, v4

    .line 426
    check-cast v5, Lcom/htc/widget/HtcListItem;

    .line 427
    .local v5, viewTarget:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v7, v8, :cond_2

    .line 428
    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 429
    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 442
    .end local v5           #viewTarget:Lcom/htc/widget/HtcListItem;
    :cond_2
    :goto_2
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 445
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 446
    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    iget v8, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->upScaleAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0           #frame:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 433
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v7, v8, :cond_5

    .line 434
    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 435
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :cond_5
    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v7, v7, v12

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 416
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public OnMyPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 570
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v8

    .line 572
    .local v8, childcount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    .line 573
    .local v10, first:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 632
    :cond_0
    return-void

    .line 576
    :cond_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v8, :cond_0

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 578
    .local v7, child:Landroid/view/View;
    if-nez v7, :cond_3

    .line 576
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 581
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 582
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    .line 583
    const/16 v16, 0x0

    .line 585
    .local v16, r2:Landroid/graphics/Rect;
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    if-eqz v12, :cond_2

    .line 589
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 593
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    sub-int/2addr v1, v10

    if-ne v12, v1, :cond_7

    .line 594
    invoke-virtual {v7, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 621
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 622
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 624
    .local v14, path:Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 625
    if-eqz v16, :cond_6

    .line 626
    new-instance v1, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 628
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 595
    .end local v14           #path:Landroid/graphics/Path;
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-le v11, v1, :cond_5

    .line 596
    invoke-virtual {v7, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 597
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v1, :cond_a

    if-nez v12, :cond_a

    .line 599
    instance-of v1, v7, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_8

    move-object v1, v7

    .line 600
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    .line 603
    .local v13, paddingTop:I
    :goto_3
    if-eqz v13, :cond_9

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v1, v13

    iput v1, v15, Landroid/graphics/Rect;->bottom:I

    .line 607
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v9, v11, v1

    .line 608
    .local v9, extra:I
    if-le v9, v13, :cond_5

    .line 609
    new-instance v16, Landroid/graphics/Rect;

    .end local v16           #r2:Landroid/graphics/Rect;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 610
    .restart local v16       #r2:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v9, v13

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 602
    .end local v9           #extra:I
    .end local v13           #paddingTop:I
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .restart local v13       #paddingTop:I
    goto :goto_3

    .line 614
    :cond_9
    iget v1, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v1, v2

    iput v1, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    .line 617
    .end local v13           #paddingTop:I
    :cond_a
    iget v1, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v1, v2

    iput v1, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method drawBounds(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, -0x1

    const v8, -0xffff01

    const/4 v1, 0x0

    .line 647
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getWidth()I

    move-result v7

    .line 648
    .local v7, w:I
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 651
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v6, v0, 0x2

    .line 653
    .local v6, bound:I
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 655
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 658
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 660
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 661
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    if-nez v0, :cond_0

    .line 1499
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1509
    :goto_0
    return-object v0

    .line 1505
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v0, :cond_1

    .line 1506
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method isRunningExitAnim()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveItems(III)V
    .locals 18
    .parameter "expandIndex"
    .parameter "shrinkIndex"
    .parameter "delta"

    .prologue
    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1166
    .local v6, firstVisible:I
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_5

    const/4 v12, 0x0

    .line 1167
    .local v12, shrinkI:I
    :goto_0
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    const/4 v5, 0x0

    .line 1169
    .local v5, expandI:I
    :goto_1
    const/4 v7, 0x0

    .line 1176
    .local v7, forceShrinkListItemZero:Z
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 1177
    const/4 v7, 0x1

    .line 1180
    :cond_0
    sub-int v14, v12, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1181
    .local v11, shrink:Landroid/view/View;
    sub-int v14, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1186
    .local v4, expand:Landroid/view/View;
    if-eqz v11, :cond_3

    .line 1187
    instance-of v14, v11, Lcom/htc/widget/HtcListItem;

    if-eqz v14, :cond_9

    move-object v14, v11

    .line 1188
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    sub-int v14, v14, p3

    if-ltz v14, :cond_7

    move-object v14, v11

    .line 1189
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    sub-int v3, v14, p3

    .local v3, bottomSpace:I
    move-object v14, v11

    .line 1190
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1203
    .end local v3           #bottomSpace:I
    :cond_1
    :goto_2
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    move-object v14, v11

    .line 1204
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    .local v13, topSpace:I
    move-object v14, v11

    .line 1205
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1206
    .restart local v3       #bottomSpace:I
    sub-int v13, v13, p3

    .line 1208
    if-nez v7, :cond_2

    .line 1209
    add-int v3, v3, p3

    :cond_2
    move-object v14, v11

    .line 1212
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1213
    check-cast v11, Lcom/htc/widget/HtcListItem;

    .end local v11           #shrink:Landroid/view/View;
    invoke-virtual {v11, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1237
    .end local v3           #bottomSpace:I
    .end local v13           #topSpace:I
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 1238
    instance-of v14, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v14, :cond_e

    move-object v14, v4

    .line 1239
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    add-int v14, v14, p3

    if-gtz v14, :cond_b

    move-object v14, v4

    .line 1240
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    add-int v13, v14, p3

    .restart local v13       #topSpace:I
    move-object v14, v4

    .line 1241
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1252
    .end local v13           #topSpace:I
    :goto_4
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    move-object v14, v4

    .line 1253
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    .restart local v13       #topSpace:I
    move-object v14, v4

    .line 1254
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1255
    .restart local v3       #bottomSpace:I
    add-int v13, v13, p3

    .line 1256
    sub-int v3, v3, p3

    move-object v14, v4

    .line 1257
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1258
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .end local v4           #expand:Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1291
    .end local v3           #bottomSpace:I
    .end local v13           #topSpace:I
    :cond_4
    :goto_5
    return-void

    .end local v5           #expandI:I
    .end local v7           #forceShrinkListItemZero:Z
    .end local v12           #shrinkI:I
    :cond_5
    move/from16 v12, p2

    .line 1166
    goto/16 :goto_0

    .restart local v12       #shrinkI:I
    :cond_6
    move/from16 v5, p1

    .line 1167
    goto/16 :goto_1

    .restart local v4       #expand:Landroid/view/View;
    .restart local v5       #expandI:I
    .restart local v7       #forceShrinkListItemZero:Z
    .restart local v11       #shrink:Landroid/view/View;
    :cond_7
    move-object v14, v11

    .line 1192
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    if-lez v14, :cond_8

    move-object v14, v11

    .line 1193
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    sub-int v15, v14, p3

    move-object v14, v11

    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    add-int v13, v15, v14

    .restart local v13       #topSpace:I
    move-object v14, v11

    .line 1194
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v14, v11

    .line 1195
    check-cast v14, Lcom/htc/widget/HtcListItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_2

    .line 1197
    .end local v13           #topSpace:I
    :cond_8
    if-nez v7, :cond_1

    move-object v14, v11

    .line 1198
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    sub-int v2, v14, p3

    .local v2, TopSpace:I
    move-object v14, v11

    .line 1199
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_2

    .line 1217
    .end local v2           #TopSpace:I
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1218
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    iget v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1219
    .local v8, height:I
    if-gez v8, :cond_a

    .line 1220
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1222
    :cond_a
    sub-int v8, v8, p3

    .line 1223
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1225
    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 1229
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 1230
    .local v9, paddingTop:I
    sub-int v9, v9, p3

    .line 1231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v11, v14, v9, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .end local v8           #height:I
    .end local v9           #paddingTop:I
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #shrink:Landroid/view/View;
    :cond_b
    move-object v14, v4

    .line 1243
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    if-gez v14, :cond_c

    move-object v14, v4

    .line 1244
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    add-int v15, v14, p3

    move-object v14, v4

    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v14

    add-int v3, v15, v14

    .restart local v3       #bottomSpace:I
    move-object v14, v4

    .line 1245
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    move-object v14, v4

    .line 1246
    check-cast v14, Lcom/htc/widget/HtcListItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_4

    .end local v3           #bottomSpace:I
    :cond_c
    move-object v14, v4

    .line 1248
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v14

    add-int v3, v14, p3

    .restart local v3       #bottomSpace:I
    move-object v14, v4

    .line 1249
    check-cast v14, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_4

    .line 1259
    .end local v3           #bottomSpace:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 1260
    const/16 v14, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 1264
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1265
    .restart local v10       #params:Landroid/view/ViewGroup$LayoutParams;
    iget v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1266
    .restart local v8       #height:I
    if-gez v8, :cond_f

    .line 1267
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1269
    :cond_f
    add-int v8, v8, p3

    .line 1270
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1272
    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_10

    .line 1276
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 1277
    .restart local v9       #paddingTop:I
    add-int v9, v9, p3

    .line 1278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v4, v14, v9, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1281
    .end local v9           #paddingTop:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 1287
    const/16 v14, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 641
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 642
    return-void
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 1090
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onFocusLost()V

    .line 1091
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 220
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v9, :cond_0

    .line 223
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v9, :cond_2

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 301
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_0
    return v9

    .line 227
    :pswitch_0
    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v12, 0x4

    if-ne v9, v12, :cond_3

    move v9, v10

    .line 228
    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v10

    .line 233
    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 237
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 238
    .local v8, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v6, v9

    .line 239
    .local v6, rawX:I
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcReorderListView;->pointToPosition(II)I

    move-result v5

    .line 240
    .local v5, itemnum:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 244
    .local v4, item:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v7, v9

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointX:I

    .line 245
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v8, v9

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mXOffset:I

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    .line 248
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    .line 249
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    if-nez v9, :cond_5

    move v9, v10

    .line 250
    goto :goto_0

    .line 252
    :cond_5
    new-array v1, v13, [I

    fill-array-data v1, :array_0

    .line 253
    .local v1, draggerLoc:[I
    new-array v2, v13, [I

    fill-array-data v2, :array_1

    .line 254
    .local v2, draggerLoc2:[I
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 255
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 262
    const/16 v3, 0xa

    .line 263
    .local v3, extand:I
    aget v9, v2, v10

    sub-int/2addr v9, v3

    if-le v6, v9, :cond_2

    aget v9, v2, v10

    iget-object v12, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v9, v12

    add-int/2addr v9, v3

    if-ge v6, v9, :cond_2

    .line 265
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->targetDragger:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/htc/widget/HtcReorderListView;->imagePressed:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iput v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 267
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 268
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 269
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 271
    const/high16 v9, -0x8000

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    .line 273
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    .line 275
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 276
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iget v12, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v9, v12

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    .line 277
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    aput v12, v9, v10

    .line 278
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    aput v10, v9, v11

    .line 279
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    aput v10, v9, v13

    .line 280
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    aput v12, v9, v10

    .line 282
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->adjustScrollBounds()V

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 287
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v8}, Lcom/htc/widget/HtcReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    move v9, v11

    .line 295
    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 252
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 253
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 876
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 877
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 669
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 670
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 673
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v9, :cond_17

    :cond_1
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-eqz v9, :cond_17

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 675
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 815
    :cond_2
    :goto_0
    const/4 v9, 0x1

    .line 817
    .end local v0           #action:I
    :goto_1
    return v9

    .line 678
    .restart local v0       #action:I
    :pswitch_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_3

    .line 679
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 681
    :cond_3
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 682
    .local v1, destLoc:[I
    const/4 v2, 0x0

    .line 683
    .local v2, destView:Landroid/view/View;
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_6

    .line 684
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 685
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 691
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 692
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v11, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    if-eqz v2, :cond_b

    .line 694
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 696
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_8

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    if-eq v9, v10, :cond_7

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 699
    .local v4, distOffset:I
    :goto_3
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_9

    .line 700
    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v9, v4

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    .line 709
    :goto_4
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 710
    .local v6, parentViewLoc:[I
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v9, :cond_4

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 712
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 713
    const/4 v9, 0x1

    aget v9, v6, v9

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-le v9, v10, :cond_4

    .line 714
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v11, 0x1

    aget v11, v6, v11

    iget v12, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/2addr v11, v12

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    .line 720
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerTopPadding:I

    add-int/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v10, v4

    sub-int v3, v9, v10

    .line 721
    .local v3, dist:I
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "distance for dragging window = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDragPos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " destLoc.y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " window y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    new-instance v10, Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    invoke-direct {v10, p0, v3}, Lcom/htc/widget/HtcReorderListView$DragWindowMove;-><init>(Lcom/htc/widget/HtcReorderListView;I)V

    iput-object v10, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    .line 725
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v11, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 687
    .end local v3           #dist:I
    .end local v4           #distOffset:I
    .end local v6           #parentViewLoc:[I
    :cond_5
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 689
    :cond_6
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 696
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v4, v9, v10

    goto/16 :goto_3

    .line 701
    .restart local v4       #distOffset:I
    :cond_9
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ge v9, v10, :cond_a

    .line 702
    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v9, v4

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    goto/16 :goto_4

    .line 704
    :cond_a
    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v9, v4

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    goto/16 :goto_4

    .line 728
    .end local v4           #distOffset:I
    :cond_b
    const-string v9, "HtcReorderListView"

    const-string v10, "onTouchEvent UP/CANCEL destView = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 734
    .end local v1           #destLoc:[I
    .end local v2           #destView:Landroid/view/View;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 740
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 741
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent.MOVE still running exit anim mDragMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 745
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 746
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 748
    .local v8, y:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_d

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 752
    :cond_d
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_e

    .line 753
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 756
    :cond_e
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_2

    .line 758
    invoke-direct {p0, v7, v8}, Lcom/htc/widget/HtcReorderListView;->dragView(II)V

    .line 760
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/htc/widget/HtcReorderListView;->getItemForPosition(II)I

    move-result v5

    .line 762
    .local v5, itemnum:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v8, v9, :cond_f

    const/4 v9, -0x1

    if-ne v5, v9, :cond_f

    .line 763
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v5

    .line 768
    :cond_f
    if-ltz v5, :cond_13

    .line 769
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcReorderListView;->updateStateOrScroll(II)V

    .line 771
    if-eqz v0, :cond_10

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-eq v5, v9, :cond_16

    .line 772
    :cond_10
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-eqz v9, :cond_11

    .line 773
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v5}, Lcom/htc/widget/HtcReorderListView$DragListener;->drag(II)V

    .line 777
    :cond_11
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_14

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 778
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-gez v9, :cond_12

    .line 782
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 784
    :cond_12
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 785
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 786
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 787
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    .line 788
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->expandItem()V

    .line 811
    :cond_13
    :goto_5
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    goto/16 :goto_0

    .line 789
    :cond_14
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_15

    .line 791
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v9, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 792
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 793
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 794
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 795
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    goto :goto_5

    .line 799
    :cond_15
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 800
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 801
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    goto :goto_5

    .line 803
    :cond_16
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ne v5, v9, :cond_13

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_13

    .line 805
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 806
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosX:I

    .line 807
    const/4 v9, -0x2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPosY:I

    goto :goto_5

    .line 817
    .end local v0           #action:I
    .end local v5           #itemnum:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_17
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1492
    new-instance v0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;-><init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    .line 1493
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1494
    return-void
.end method

.method public setAllItemFocusable(Z)V
    .locals 0
    .parameter "itemFocusable"

    .prologue
    .line 1487
    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 1488
    return-void
.end method

.method public setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1056
    return-void
.end method

.method public setDraggerId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1513
    iput p1, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 1514
    return-void
.end method

.method public setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1060
    return-void
.end method

.method public setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V
    .locals 0
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 1065
    return-void
.end method

.method shouldScroll(I)Z
    .locals 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p1, v4, :cond_3

    .line 841
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 843
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 844
    if-le p1, v1, :cond_2

    const/16 v0, 0x18

    .line 859
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 860
    const-string v3, "HtcReorderListView"

    const-string v4, "should scroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v3, 0x1

    .line 863
    :cond_1
    return v3

    .line 844
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 846
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p1, v4, :cond_0

    .line 848
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    const/16 v0, -0x18

    .line 849
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 850
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 855
    const/4 v0, 0x0

    goto :goto_0

    .line 848
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method unExpand()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 911
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v0

    .line 912
    .local v0, first:I
    const/4 v1, 0x0

    .line 913
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 914
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 915
    return-void

    .line 917
    :cond_0
    instance-of v5, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 918
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 919
    .local v3, targetView:Lcom/htc/widget/HtcListItem;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_2

    .line 920
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 921
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    rsub-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 922
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 923
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 912
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .restart local v3       #targetView:Lcom/htc/widget/HtcListItem;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_1

    .line 926
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 927
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 928
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 931
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 932
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_5

    .line 933
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v11, :cond_4

    .line 934
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 935
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 946
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 938
    :cond_5
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_4

    .line 940
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 941
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method updateStateOrScroll(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 822
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 829
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_2

    .line 836
    :goto_1
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_0

    .line 831
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcReorderListView;->scrollList(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 832
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1

    .line 834
    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1
.end method
