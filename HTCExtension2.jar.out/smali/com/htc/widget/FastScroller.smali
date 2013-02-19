.class Lcom/htc/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/FastScroller$1;,
        Lcom/htc/widget/FastScroller$RecycleBin;,
        Lcom/htc/widget/FastScroller$FlingRunnable;,
        Lcom/htc/widget/FastScroller$CheckForTap;,
        Lcom/htc/widget/FastScroller$CheckForLongPress;,
        Lcom/htc/widget/FastScroller$ScrollFade;,
        Lcom/htc/widget/FastScroller$CountObserver;
    }
.end annotation


# static fields
.field private static final STATE_ANIMATION:I = 0x5

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final THUMB_INVALID_POSITION:I = -0x2


# instance fields
.field private currentPosition:I

.field private display:Landroid/view/Display;

.field private enableCube:Z

.field private isPortrait:Z

.field private isScaleAnimation:Z

.field private isSkipAnimation:Z

.field private mAnimationDuration:I

.field private mChangedBounds:Z

.field mContext:Landroid/content/Context;

.field mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentTab:I

.field private mEditorMode:Z

.field private mEnableEditorMode:Z

.field private mFirstAdd:Z

.field private mFirstVisibleOffset:I

.field private mFirstVisiblePosition:I

.field private mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

.field private mGallery:Lcom/htc/widget/AbsSpinner;

.field private mGalleryHeight:I

.field private mGalleryWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mIsWindowClose:Z

.field private mItemCount:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListAdapter:Lcom/htc/widget/BinAdapter;

.field private mOffset:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

.field private mPreviousPos:I

.field final mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

.field private mShouldStopFling:Z

.field private mState:I

.field private mThumbBottom:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbLeft:I

.field private mThumbPadding:Landroid/graphics/Rect;

.field private mThumbRight:I

.field private mThumbTop:I

.field private mThumbW:I

.field private mTouchSlopSquare:I

.field private mView:Landroid/view/View;

.field private mVisibleItem:I

.field private previousPosition:I

.field private resetScreen:Z

.field private scaleInAnimation:Landroid/view/animation/ScaleAnimation;

.field private scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

.field private skipScreen:Z

.field private final skipThumbView:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V
    .locals 5
    .parameter "context"
    .parameter "gallery"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    .line 92
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    .line 93
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    .line 99
    iput v4, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 116
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 117
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 132
    iput v1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 133
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 134
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 145
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    .line 148
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 151
    new-instance v0, Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$RecycleBin;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    .line 223
    iput v4, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    .line 225
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    .line 226
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    .line 227
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    .line 230
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipThumbView:Z

    .line 232
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    .line 233
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    .line 234
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    .line 331
    new-instance v0, Lcom/htc/widget/FastScroller$CountObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/FastScroller$CountObserver;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    .line 1779
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 1828
    iput v4, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    .line 1829
    iput v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    .line 159
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->setOrientation()V

    .line 162
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    .line 163
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 164
    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 165
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 166
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 167
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 168
    new-instance v0, Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$FlingRunnable;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/FastScroller;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    return v0
.end method

.method private cancel()V
    .locals 26

    .prologue
    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v20, v22, v23

    .line 867
    .local v20, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v3, v22, v23

    .line 868
    .local v3, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v18, v0

    .line 870
    .local v18, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v18, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 872
    .local v12, pos:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 873
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 875
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 876
    .local v17, totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 877
    .local v16, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 879
    .local v6, dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_0

    .line 880
    add-int/lit8 v12, v17, -0x1

    .line 882
    :cond_0
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 883
    .local v5, alignment:F
    int-to-float v0, v3

    move/from16 v22, v0

    sub-float v14, v5, v22

    .line 885
    .local v14, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_1

    .line 887
    const/4 v14, 0x0

    .line 888
    const/4 v5, 0x0

    .line 889
    const/4 v12, -0x1

    .line 892
    :cond_1
    mul-int v22, v17, v11

    sub-int v22, v22, v6

    if-lez v22, :cond_2

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v14

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 905
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 950
    .end local v3           #aX:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v14           #scrollX:F
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :goto_1
    return-void

    .line 899
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v14       #scrollX:F
    .restart local v18       #viewHeight:I
    .restart local v20       #x:I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 900
    .local v13, previous:I
    mul-int v22, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 902
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_0

    .line 909
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v13           #previous:I
    .end local v14           #scrollX:F
    .end local v16           #thumbArea:I
    .end local v17           #totalItemCount:I
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v21, v22, v23

    .line 910
    .local v21, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 911
    .local v4, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v19, v0

    .line 913
    .local v19, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 915
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 916
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 918
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 919
    .restart local v17       #totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 920
    .restart local v16       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 922
    .restart local v6       #dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_4

    .line 923
    add-int/lit8 v12, v17, -0x1

    .line 925
    :cond_4
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 926
    .restart local v5       #alignment:F
    int-to-float v0, v4

    move/from16 v22, v0

    sub-float v15, v5, v22

    .line 928
    .local v15, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_5

    .line 930
    const/4 v15, 0x0

    .line 931
    const/4 v5, 0x0

    .line 932
    const/4 v12, -0x1

    .line 935
    :cond_5
    mul-int v22, v17, v10

    sub-int v22, v22, v6

    if-lez v22, :cond_6

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v15

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 948
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    goto/16 :goto_1

    .line 942
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 943
    .restart local v13       #previous:I
    mul-int v22, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 945
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_2
.end method

.method private endAnimation(IZ)V
    .locals 6
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    .line 1805
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1806
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1807
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 1808
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, p1, v3

    .line 1809
    .local v1, selectedIndex:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1810
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1811
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/htc/widget/AbsSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1819
    .end local v0           #adapter:Landroid/widget/SpinnerAdapter;
    .end local v1           #selectedIndex:I
    .end local v2           #v:Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1820
    invoke-virtual {p0, p1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1823
    :cond_1
    return-void

    .line 1814
    .restart local v0       #adapter:Landroid/widget/SpinnerAdapter;
    .restart local v1       #selectedIndex:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    const-string v3, "FastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAnimation:: Bad gallery view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " firstVisiblePos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ensureAdapter()V
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 2019
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_subnav_selector_tab"

    const v4, 0x208019b

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 302
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 304
    new-instance v2, Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/FastScroller$ScrollFade;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 306
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 308
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 309
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 310
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    .line 311
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1748
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1757
    :cond_0
    return-void
.end method

.method private resetScreenView(Z)V
    .locals 8
    .parameter "forceReset"

    .prologue
    const v7, 0x2020061

    .line 1865
    iget v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    iput v3, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    .line 1868
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v3, :cond_3

    .line 1869
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    .line 1874
    :goto_0
    iget v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_2

    .line 1876
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    .line 1878
    .local v1, firstPosition:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1879
    .local v0, currentChildView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1882
    .local v2, previousChildView:Landroid/view/View;
    const-string v3, "Carousel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previous:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    if-eqz v2, :cond_1

    .line 1887
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1890
    :cond_1
    if-eqz v0, :cond_2

    .line 1891
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1893
    .end local v0           #currentChildView:Landroid/view/View;
    .end local v1           #firstPosition:I
    .end local v2           #previousChildView:Landroid/view/View;
    :cond_2
    return-void

    .line 1871
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    goto/16 :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    .line 242
    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 259
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    if-gez v0, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    .line 265
    :cond_2
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 271
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setDragBinGridView(Z)V

    .line 285
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_6

    .line 286
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 291
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    goto :goto_0

    .line 275
    :cond_5
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 276
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    goto :goto_1

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    goto :goto_2
.end method


# virtual methods
.method addSelectedView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1179
    return-void
.end method

.method adjustGallery(I)V
    .locals 11
    .parameter "xy"

    .prologue
    .line 962
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v9, :cond_1

    .line 964
    iget v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 965
    .local v4, itemWidth:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 967
    .local v2, galleryWidth:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 968
    .local v0, dataArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v7, v9, v10

    .line 969
    .local v7, thumbArea:I
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    .line 971
    .local v8, totalItemCount:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v7, v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-int v10, v8, v4

    sub-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 973
    .local v5, scrollX:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v7, v9

    if-gez v9, :cond_0

    .line 974
    const/4 v5, 0x0

    .line 976
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v9, Lcom/htc/widget/Gallery;

    float-to-int v10, v5

    invoke-virtual {v9, v10}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    .line 994
    .end local v2           #galleryWidth:I
    .end local v4           #itemWidth:I
    .end local v5           #scrollX:F
    :goto_0
    return-void

    .line 980
    .end local v0           #dataArea:I
    .end local v7           #thumbArea:I
    .end local v8           #totalItemCount:I
    :cond_1
    iget v3, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 981
    .local v3, itemHeight:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 983
    .local v1, galleryHeight:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v1, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 984
    .restart local v0       #dataArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v1, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v7, v9, v10

    .line 985
    .restart local v7       #thumbArea:I
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    .line 987
    .restart local v8       #totalItemCount:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v10, v7, v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-int v10, v8, v3

    sub-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v6, v9, v10

    .line 989
    .local v6, scrollY:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v7, v9

    if-gez v9, :cond_2

    .line 990
    const/4 v6, 0x0

    .line 992
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v9, Lcom/htc/widget/Gallery;

    float-to-int v10, v6

    invoke-virtual {v9, v10}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    goto :goto_0
.end method

.method calibrateThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2034
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 2035
    return-void
.end method

.method cancelAnimation()V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 2500
    :cond_0
    return-void
.end method

.method clearCache()V
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$RecycleBin;->clear()V

    .line 2040
    return-void
.end method

.method closeScreen(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1142
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    if-eqz v3, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 1147
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 1153
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v3, :cond_2

    .line 1155
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1157
    .local v1, content:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1158
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1162
    .end local v1           #content:Landroid/widget/FrameLayout;
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    if-ne v3, v4, :cond_3

    .line 1164
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCubeSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1166
    .local v2, cubeSurfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 1167
    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1171
    .end local v2           #cubeSurfaceView:Landroid/view/SurfaceView;
    :cond_3
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1172
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselActivity;->onTabEndSliding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method closeThumb()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1791
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1792
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 1793
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1794
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1795
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 1796
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1797
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 368
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-nez v6, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 372
    .local v4, x:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 374
    .local v5, y:I
    iget v3, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 375
    .local v3, viewWidth:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 376
    .local v2, viewHeight:I
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 378
    .local v1, scrollFade:Lcom/htc/widget/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 379
    .local v0, alpha:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_2

    .line 381
    invoke-virtual {v1}, Lcom/htc/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 382
    int-to-float v6, v0

    const/high16 v7, 0x42ff

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 383
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 407
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 409
    :cond_3
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 412
    int-to-float v6, v4

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 452
    :goto_1
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    if-ne v6, v10, :cond_4

    .line 454
    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 455
    invoke-direct {p0, v10}, Lcom/htc/widget/FastScroller;->resetScreenView(Z)V

    .line 458
    :cond_4
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_0

    .line 460
    if-nez v0, :cond_6

    .line 461
    invoke-virtual {p0, v9}, Lcom/htc/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 432
    :cond_5
    int-to-float v6, v5

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 433
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 464
    :cond_6
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 465
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v2}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 467
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v7, v5, v3, v8}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0
.end method

.method getFirstVisibleOffset()I
    .locals 1

    .prologue
    .line 2012
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    return v0
.end method

.method getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 2008
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 2004
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEditorMode()Z
    .locals 1

    .prologue
    .line 1800
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 954
    iget-boolean v2, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v2, :cond_2

    .line 955
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 955
    goto :goto_0

    .line 957
    :cond_2
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeThumbView(Z)Landroid/view/View;
    .locals 1
    .parameter "reset"

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1835
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/FastScroller;->resetScreenView(Z)V

    .line 1838
    const/4 v0, 0x0

    return-object v0
.end method

.method final measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V
    .locals 16
    .parameter "parent"
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 1900
    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1901
    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1903
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    .line 1904
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    .line 1905
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    .line 1906
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    .line 1908
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v13, :cond_4

    .line 1910
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1912
    .local v6, itemWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    .line 1913
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 1914
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    .line 1916
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1917
    .local v3, galleryWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1918
    .local v1, dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v9, v13, v14

    .line 1919
    .local v9, thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1921
    .local v12, totalItemCount:I
    if-ltz v1, :cond_0

    if-gez v9, :cond_1

    .line 1923
    :cond_0
    const/4 v1, 0x0

    .line 1924
    const/4 v9, 0x0

    .line 1927
    :cond_1
    mul-int v13, v12, v6

    sub-int/2addr v13, v1

    if-lez v13, :cond_3

    .line 1929
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1930
    .local v4, index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v10, v13, v14

    .line 1931
    .local v10, thumbX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v10, v13

    mul-int v14, v12, v6

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v7, v13, v14

    .line 1934
    .local v7, scrollX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    if-gez v13, :cond_2

    .line 1936
    const/4 v10, 0x0

    .line 1937
    const/4 v7, 0x0

    .line 1940
    :cond_2
    int-to-float v13, v6

    div-float v13, v7, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1941
    neg-int v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v6

    int-to-float v14, v14

    sub-float/2addr v14, v7

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1942
    float-to-int v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1999
    .end local v3           #galleryWidth:I
    .end local v6           #itemWidth:I
    .end local v7           #scrollX:F
    .end local v10           #thumbX:F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 2000
    return-void

    .line 1946
    .end local v4           #index:I
    .restart local v3       #galleryWidth:I
    .restart local v6       #itemWidth:I
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1947
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1949
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1950
    .restart local v4       #index:I
    mul-int v13, v4, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 1955
    .end local v1           #dataArea:I
    .end local v3           #galleryWidth:I
    .end local v4           #index:I
    .end local v6           #itemWidth:I
    .end local v9           #thumbArea:I
    .end local v12           #totalItemCount:I
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 1957
    .local v5, itemHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    .line 1958
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1959
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    .line 1961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1962
    .local v2, galleryHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1963
    .restart local v1       #dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v9, v13, v14

    .line 1964
    .restart local v9       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1966
    .restart local v12       #totalItemCount:I
    if-ltz v1, :cond_5

    if-gez v9, :cond_6

    .line 1968
    :cond_5
    const/4 v1, 0x0

    .line 1969
    const/4 v9, 0x0

    .line 1972
    :cond_6
    mul-int v13, v12, v5

    sub-int/2addr v13, v1

    if-lez v13, :cond_8

    .line 1974
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1975
    .restart local v4       #index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v11, v13, v14

    .line 1976
    .local v11, thumbY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v11, v13

    mul-int v14, v12, v5

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v8, v13, v14

    .line 1979
    .local v8, scrollY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    if-gez v13, :cond_7

    .line 1981
    const/4 v11, 0x0

    .line 1982
    const/4 v8, 0x0

    .line 1985
    :cond_7
    int-to-float v13, v5

    div-float v13, v8, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1986
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v5

    int-to-float v14, v14

    sub-float/2addr v14, v8

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1987
    float-to-int v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_0

    .line 1991
    .end local v4           #index:I
    .end local v8           #scrollY:F
    .end local v11           #thumbY:F
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1992
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1994
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1995
    .restart local v4       #index:I
    mul-int v13, v4, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_0
.end method

.method moveNext()Z
    .locals 27

    .prologue
    .line 2044
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2047
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2049
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2050
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2052
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .local v13, pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_1

    .line 2054
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2056
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 2057
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 2058
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2059
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2061
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2062
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2063
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2066
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2068
    const/4 v15, 0x0

    .line 2069
    const/4 v5, 0x0

    .line 2070
    const/4 v12, -0x1

    .line 2073
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2081
    :goto_1
    const/16 v23, 0x1

    .line 2126
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2077
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 2078
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2079
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2084
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2088
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2089
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2091
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2092
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2094
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_5

    .line 2096
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2098
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 2099
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 2100
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2101
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2103
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2104
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2105
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2108
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2110
    const/16 v16, 0x0

    .line 2111
    const/4 v5, 0x0

    .line 2112
    const/4 v12, -0x1

    .line 2115
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2123
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2119
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 2120
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2121
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2126
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method movePrevious()Z
    .locals 27

    .prologue
    .line 2132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2135
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2137
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2138
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2140
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .local v13, pos:I
    if-lez v12, :cond_1

    .line 2142
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2144
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 2145
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 2146
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2147
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2149
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2150
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2151
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2154
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2156
    const/4 v15, 0x0

    .line 2157
    const/4 v5, 0x0

    .line 2158
    const/4 v12, -0x1

    .line 2161
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2169
    :goto_1
    const/16 v23, 0x1

    .line 2214
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2165
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 2166
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2167
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2172
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2176
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2177
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2179
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2180
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2182
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    if-lez v12, :cond_5

    .line 2184
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2186
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 2187
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 2188
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2189
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2191
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2192
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2193
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2196
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2198
    const/16 v16, 0x0

    .line 2199
    const/4 v5, 0x0

    .line 2200
    const/4 v12, -0x1

    .line 2203
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2211
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2207
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 2208
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2209
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2214
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1184
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1200
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->setOrientation()V

    .line 1201
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    .line 1203
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1206
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1208
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1210
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090019

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 1188
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 1189
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    if-nez v0, :cond_0

    .line 1190
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1195
    return-void
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 550
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 553
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/AbsSpinner;III)V
    .locals 12
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 488
    sub-int v9, p4, p3

    if-ltz v9, :cond_1

    iget v9, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 490
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, firstItem:Landroid/view/View;
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v9, :cond_4

    .line 494
    iget v7, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 495
    .local v7, itemWidth:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 496
    .local v5, galleryWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 498
    .local v3, firstVisibleItemRight:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v8, v9, v10

    .line 499
    .local v8, thumbArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 501
    .local v0, dataArea:I
    mul-int v9, p4, v7

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 503
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v7

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v7

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 507
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 508
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    :goto_0
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 509
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v5, v10

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    :goto_1
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 533
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    :cond_0
    :goto_2
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    if-eqz v9, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 536
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    .line 540
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v8           #thumbArea:I
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 542
    iget v9, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v9, :cond_7

    .line 546
    :goto_3
    return-void

    .line 508
    .restart local v0       #dataArea:I
    .restart local v1       #firstItem:Landroid/view/View;
    .restart local v3       #firstVisibleItemRight:I
    .restart local v5       #galleryWidth:I
    .restart local v7       #itemWidth:I
    .restart local v8       #thumbArea:I
    :cond_2
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 509
    :cond_3
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    .line 514
    .end local v0           #dataArea:I
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    .end local v8           #thumbArea:I
    :cond_4
    iget v6, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 515
    .local v6, itemHeight:I
    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 516
    .local v4, galleryHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 518
    .local v2, firstVisibleItemBottom:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v8, v9, v10

    .line 519
    .restart local v8       #thumbArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 521
    .restart local v0       #dataArea:I
    mul-int v9, p4, v6

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 523
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v6

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 527
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 528
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    if-ge v9, v10, :cond_5

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    :goto_4
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 529
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v10, v4, v10

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_6

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    :goto_5
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_2

    .line 528
    :cond_5
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_4

    .line 529
    :cond_6
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_5

    .line 545
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v2           #firstVisibleItemBottom:I
    .end local v4           #galleryHeight:I
    .end local v6           #itemHeight:I
    .end local v8           #thumbArea:I
    :cond_7
    iput p2, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    goto :goto_3
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 479
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 41
    .parameter "me"

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 561
    :cond_0
    const/16 v35, 0x0

    .line 857
    :goto_0
    return v35

    .line 563
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/BinAdapter;->isDataValid()Z

    move-result v35

    if-nez v35, :cond_3

    .line 564
    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 566
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 567
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 568
    .local v9, currentX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 570
    .local v10, currentY:F
    and-int/lit16 v0, v7, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 857
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v35, 0x1

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_1

    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 584
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 586
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 587
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 593
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 595
    const/16 v35, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 599
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->showScreen()V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    if-nez v35, :cond_8

    .line 603
    new-instance v35, Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/FastScroller$CheckForLongPress;-><init>(Lcom/htc/widget/FastScroller;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 605
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$CheckForLongPress;->rememberSelectedTab()V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v36, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v37

    shl-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v35 .. v38}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 614
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v35, v0

    if-nez v35, :cond_a

    .line 615
    new-instance v35, Lcom/htc/widget/FastScroller$CheckForTap;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 617
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v36, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v35 .. v38}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 621
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-nez v35, :cond_b

    .line 624
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 627
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 636
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    add-int v33, v35, v36

    .line 639
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    sub-int v5, v35, v36

    .line 640
    .local v5, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v31, v0

    .line 642
    .local v31, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    div-int/lit8 v36, v31, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v23

    .line 643
    .local v23, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v18, v0

    .line 644
    .local v18, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v20, v0

    .line 646
    .local v20, itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v29, v35, v36

    .line 647
    .local v29, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 648
    .local v11, dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 650
    .local v30, totalItemCount:I
    const/16 v35, -0x1

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 651
    add-int/lit8 v23, v30, -0x1

    .line 653
    :cond_d
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    add-int/lit8 v36, v30, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v36, v29, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v8, v35, v36

    .line 654
    .local v8, alignment:F
    int-to-float v0, v5

    move/from16 v35, v0

    sub-float v27, v8, v35

    .line 656
    .local v27, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v35, v0

    sub-int v35, v29, v35

    if-gez v35, :cond_e

    .line 658
    const/16 v27, 0x0

    .line 659
    const/4 v8, 0x0

    .line 660
    const/16 v23, -0x1

    .line 663
    :cond_e
    mul-int v35, v30, v20

    sub-int v35, v35, v11

    if-lez v35, :cond_f

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v36, v0

    float-to-int v0, v8

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v38, v0

    add-int v37, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v23

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 708
    .end local v5           #aX:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v27           #scrollX:F
    .end local v31           #viewHeight:I
    .end local v33           #x:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 711
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 667
    .restart local v5       #aX:I
    .restart local v18       #galleryWidth:I
    .restart local v20       #itemWidth:I
    .restart local v27       #scrollX:F
    .restart local v31       #viewHeight:I
    .restart local v33       #x:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v26, v0

    .line 668
    .local v26, previous:I
    mul-int v35, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    add-int v16, v35, v36

    .line 669
    .local v16, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    sub-int v36, v16, v26

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v16

    move/from16 v3, v23

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto :goto_2

    .line 674
    .end local v5           #aX:I
    .end local v8           #alignment:F
    .end local v11           #dataArea:I
    .end local v16           #end:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v23           #pos:I
    .end local v26           #previous:I
    .end local v27           #scrollX:F
    .end local v29           #thumbArea:I
    .end local v30           #totalItemCount:I
    .end local v31           #viewHeight:I
    .end local v33           #x:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    add-int v34, v35, v36

    .line 675
    .local v34, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    sub-int v6, v35, v36

    .line 676
    .local v6, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v32, v0

    .line 678
    .local v32, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    div-int/lit8 v36, v32, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v23

    .line 679
    .restart local v23       #pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v17, v0

    .line 680
    .local v17, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    move/from16 v19, v0

    .line 682
    .local v19, itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v29, v35, v36

    .line 683
    .restart local v29       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 684
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 686
    .restart local v30       #totalItemCount:I
    const/16 v35, -0x1

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    .line 687
    add-int/lit8 v23, v30, -0x1

    .line 689
    :cond_11
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    add-int/lit8 v36, v30, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v36, v29, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v8, v35, v36

    .line 690
    .restart local v8       #alignment:F
    int-to-float v0, v6

    move/from16 v35, v0

    sub-float v28, v8, v35

    .line 692
    .local v28, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v35, v0

    sub-int v35, v29, v35

    if-gez v35, :cond_12

    .line 694
    const/16 v28, 0x0

    .line 695
    const/4 v8, 0x0

    .line 696
    const/16 v23, -0x1

    .line 699
    :cond_12
    mul-int v35, v30, v19

    sub-int v35, v35, v11

    if-lez v35, :cond_13

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v36, v0

    float-to-int v0, v8

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v23

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 703
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v26, v0

    .line 704
    .restart local v26       #previous:I
    mul-int v35, v23, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    add-int v16, v35, v36

    .line 705
    .restart local v16       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    sub-int v36, v16, v26

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v16

    move/from16 v3, v23

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 716
    .end local v6           #aY:I
    .end local v8           #alignment:F
    .end local v11           #dataArea:I
    .end local v16           #end:I
    .end local v17           #galleryHeight:I
    .end local v19           #itemHeight:I
    .end local v23           #pos:I
    .end local v26           #previous:I
    .end local v28           #scrollY:F
    .end local v29           #thumbArea:I
    .end local v30           #totalItemCount:I
    .end local v32           #viewWidth:I
    .end local v34           #y:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_4

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    .line 722
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 725
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    sub-float v35, v9, v35

    move/from16 v0, v35

    float-to-int v13, v0

    .line 726
    .local v13, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    sub-float v35, v10, v35

    move/from16 v0, v35

    float-to-int v14, v0

    .line 727
    .local v14, deltaY:I
    mul-int v35, v13, v13

    mul-int v36, v14, v14

    add-int v15, v35, v36

    .line 729
    .local v15, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    .line 730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move/from16 v35, v0

    sub-float v27, v35, v9

    .line 731
    .restart local v27       #scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    move/from16 v35, v0

    sub-float v28, v35, v10

    .line 733
    .restart local v28       #scrollY:F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-gez v35, :cond_15

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_1a

    .line 735
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_16

    .line 737
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 738
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 744
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v20, v0

    .line 747
    .restart local v20       #itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v18, v0

    .line 749
    .restart local v18       #galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 750
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 752
    .restart local v30       #totalItemCount:I
    mul-int v35, v30, v20

    sub-int v35, v35, v11

    if-lez v35, :cond_1c

    .line 754
    float-to-int v0, v9

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v21, v35, v36

    .line 756
    .local v21, newThumbX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    move/from16 v0, v21

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v21, v0

    .line 761
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    sub-int v35, v35, v21

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_19

    .line 762
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 758
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v35, v0

    add-int v35, v35, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v21, v35, v36

    goto :goto_3

    .line 764
    :cond_19
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 836
    .end local v11           #dataArea:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v21           #newThumbX:I
    .end local v30           #totalItemCount:I
    :cond_1a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1b

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_1b

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 842
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->updateScreen()V

    .line 843
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 769
    .restart local v11       #dataArea:I
    .restart local v18       #galleryWidth:I
    .restart local v20       #itemWidth:I
    .restart local v30       #totalItemCount:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v24, v0

    .line 770
    .local v24, preThumbLeft:I
    float-to-int v0, v9

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 775
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v36, v18, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1e

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 778
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    check-cast v35, Lcom/htc/widget/Gallery;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    sub-int v12, v35, v24

    .line 781
    .local v12, delta:I
    if-lez v12, :cond_1f

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    sub-int v36, v36, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 784
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v39, v0

    add-int v38, v38, v39

    sub-int v38, v38, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 789
    .end local v11           #dataArea:I
    .end local v12           #delta:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v24           #preThumbLeft:I
    .end local v30           #totalItemCount:I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    move/from16 v19, v0

    .line 790
    .restart local v19       #itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v17, v0

    .line 792
    .restart local v17       #galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 793
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 795
    .restart local v30       #totalItemCount:I
    mul-int v35, v30, v19

    sub-int v35, v35, v11

    if-lez v35, :cond_24

    .line 797
    float-to-int v0, v10

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v22, v35, v36

    .line 799
    .local v22, newThumbY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    .line 804
    :cond_21
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    sub-int v35, v35, v22

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_23

    .line 805
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 801
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v35, v0

    add-int v35, v35, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_21

    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v22, v35, v36

    goto :goto_5

    .line 807
    :cond_23
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 808
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    goto/16 :goto_4

    .line 812
    .end local v22           #newThumbY:I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v25, v0

    .line 813
    .local v25, preThumbTop:I
    float-to-int v0, v10

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_25

    .line 816
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 818
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v36, v17, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_26

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 821
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    check-cast v35, Lcom/htc/widget/Gallery;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    sub-int v12, v35, v25

    .line 824
    .restart local v12       #delta:I
    if-lez v12, :cond_27

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    sub-int v37, v37, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v40, v0

    add-int v39, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 827
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v12

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 845
    .end local v11           #dataArea:I
    .end local v12           #delta:I
    .end local v17           #galleryHeight:I
    .end local v19           #itemHeight:I
    .end local v25           #preThumbTop:I
    .end local v27           #scrollX:F
    .end local v28           #scrollY:F
    .end local v30           #totalItemCount:I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_4

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    goto/16 :goto_1

    .line 854
    .end local v13           #deltaX:I
    .end local v14           #deltaY:I
    .end local v15           #distance:I
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    goto/16 :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performLongClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1763
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Lcom/htc/widget/CarouselUtil;->isDataStorageFull(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isDefaultNoEditorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    :cond_0
    const/4 v0, 0x0

    .line 1774
    :goto_0
    return v0

    .line 1767
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1768
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1, v1}, Lcom/htc/widget/AbsSpinner;->performHapticFeedback(II)Z

    .line 1770
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->onStartTemporaryDetach()V

    .line 1771
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1772
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1773
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    .line 1774
    goto :goto_0
.end method

.method setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    .line 316
    instance-of v0, p1, Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 321
    :cond_0
    check-cast p1, Lcom/htc/widget/BinAdapter;

    .end local p1
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 322
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090019

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 328
    .restart local p1
    :cond_2
    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    goto :goto_0
.end method

.method setCurrentThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2024
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 2025
    return-void
.end method

.method setEditorMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2029
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    .line 2030
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/FastScroller;->mState:I

    .line 204
    :cond_0
    return-void

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 182
    :pswitch_2
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 187
    :cond_1
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :pswitch_4
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method showScreen()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1046
    const/4 v3, -0x1

    .line 1048
    .local v3, position:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v8}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 1050
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    iput-boolean v11, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 1065
    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v8, :cond_4

    .line 1067
    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 1068
    .local v6, x:I
    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1070
    .local v4, viewHeight:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    .line 1081
    .end local v4           #viewHeight:I
    .end local v6           #x:I
    :goto_0
    if-eq v3, v10, :cond_0

    .line 1082
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v8, v3}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/CarouselActivity;->onTabStartSliding(Ljava/lang/String;)V

    .line 1085
    :cond_0
    if-eq v3, v10, :cond_2

    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v8, :cond_2

    .line 1087
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1089
    .local v1, content:Landroid/widget/FrameLayout;
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1090
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1091
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1093
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1094
    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1095
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v8, v3, v9}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 1099
    .end local v1           #content:Landroid/widget/FrameLayout;
    :cond_2
    if-eq v3, v10, :cond_3

    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1101
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCubeSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1103
    .local v2, cubeSurfaceView:Landroid/view/SurfaceView;
    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1104
    invoke-virtual {v2}, Landroid/view/SurfaceView;->bringToFront()V

    .line 1105
    invoke-virtual {v2, v11}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1107
    .end local v2           #cubeSurfaceView:Landroid/view/SurfaceView;
    :cond_3
    return-void

    .line 1074
    :cond_4
    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 1075
    .local v7, y:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1077
    .local v5, viewWidth:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v9, v5, 0x2

    invoke-virtual {v8, v9, v7}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    goto :goto_0
.end method

.method showThumb()V
    .locals 1

    .prologue
    .line 1783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 1784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1785
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1786
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->postInvalidate()V

    .line 1787
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 355
    return-void
.end method

.method updateScreen()V
    .locals 7

    .prologue
    .line 1111
    const/4 v0, -0x1

    .line 1114
    .local v0, position:I
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v5, :cond_1

    .line 1116
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 1117
    .local v3, x:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1119
    .local v1, viewHeight:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1130
    .end local v1           #viewHeight:I
    .end local v3           #x:I
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    iget v5, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v0, v5, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1133
    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1135
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v5, :cond_0

    .line 1136
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v5, v0, v6}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 1138
    :cond_0
    return-void

    .line 1123
    :cond_1
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 1124
    .local v4, y:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1126
    .local v2, viewWidth:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    goto :goto_0
.end method
