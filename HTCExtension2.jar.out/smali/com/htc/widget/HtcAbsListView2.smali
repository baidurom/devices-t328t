.class public abstract Lcom/htc/widget/HtcAbsListView2;
.super Lcom/htc/widget/HtcAdapterView2;
.source "HtcAbsListView2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView2$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView2$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView2$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView2$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView2$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView2$PerformClick;,
        Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView2$SavedState;,
        Lcom/htc/widget/HtcAbsListView2$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView2",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_LEFT:I = 0x7

.field static final LAYOUT_FORCE_RIGHT:I = 0x8

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView2",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/widget/HtcFastScroller3;

.field private mFiltered:Z

.field private mFixm:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 603
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView2;-><init>(Landroid/content/Context;)V

    .line 201
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 216
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 232
    new-instance v1, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 242
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 247
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 252
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 257
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 262
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 268
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 340
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 377
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 384
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 447
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 449
    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 458
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 465
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 476
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 526
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2462
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2471
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2480
    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 3218
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFixm:Z

    .line 604
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 606
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 607
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 608
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 609
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 612
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 613
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 216
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 226
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 232
    new-instance v9, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 242
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 247
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 252
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 257
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 262
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 340
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 377
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 384
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 427
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 447
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 449
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 458
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 465
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 476
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 526
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2462
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2471
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2480
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 3218
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFixm:Z

    .line 617
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 619
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 622
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 623
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 630
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 631
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->setStackFromBottom(Z)V

    .line 633
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 634
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 636
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 637
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->setTextFilterEnabled(Z)V

    .line 639
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 641
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setTranscriptMode(I)V

    .line 643
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 644
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setCacheColorHint(I)V

    .line 646
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 647
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setFastScrollEnabled(Z)V

    .line 649
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 650
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->setSmoothScrollbarEnabled(Z)V

    .line 652
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 653
    return-void
.end method

.method private acceptFilter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1140
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Filterable;

    invoke-interface {v2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 1147
    :goto_0
    return v2

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    .line 1145
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1147
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4114
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4115
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4116
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4117
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4119
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 4124
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4126
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4127
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4128
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4129
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4130
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4131
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4132
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4133
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4134
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    .line 4135
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4137
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4138
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4142
    :goto_0
    return-void

    .line 4140
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1838
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1839
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1841
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 3969
    sparse-switch p2, :sswitch_data_0

    .line 3995
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3971
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3972
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3973
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3974
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3998
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3999
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4000
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3977
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3978
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3979
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3980
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3981
    .restart local v1       #dY:I
    goto :goto_0

    .line 3983
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3984
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3985
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3986
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3987
    .restart local v1       #dY:I
    goto :goto_0

    .line 3989
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3990
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3991
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3992
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3993
    .restart local v1       #dY:I
    goto :goto_0

    .line 3969
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFocusableInTouchMode(Z)V

    .line 865
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setWillNotDraw(Z)V

    .line 866
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 867
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 868
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setVerticalScrollBarEnabled(Z)V

    .line 869
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setHorizontalScrollBarEnabled(Z)V

    .line 872
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    .line 873
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    .line 874
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2221
    const/4 v6, 0x0

    .line 2223
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v6

    .line 2227
    :cond_0
    if-nez v6, :cond_1

    .line 2228
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2229
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2231
    :cond_1
    if-eqz v6, :cond_2

    .line 2232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->performHapticFeedback(I)Z

    .line 2234
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3924
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3927
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3930
    .local v3, screenWidth:I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 3931
    .local v4, xy:[I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getLocationOnScreen([I)V

    .line 3936
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3937
    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 3938
    .local v1, rightGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3939
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3954
    .end local v1           #rightGap:I
    :goto_0
    return-void

    .line 3942
    .restart local v1       #rightGap:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3945
    .end local v1           #rightGap:I
    :cond_1
    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 3946
    .local v0, bottomGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3947
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3950
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v0, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1757
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3916
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3917
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 3919
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkFocus()V

    .line 3921
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 879
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2936
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    .line 2937
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 2938
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2940
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2951
    :cond_0
    return-void

    .line 2944
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2945
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2946
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2947
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2949
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2944
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4243
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4199
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 4280
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3189
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 3190
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3191
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3192
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 3194
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3195
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3197
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 3199
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4152
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 4155
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4156
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 4159
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1368
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1369
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1370
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1371
    mul-int/lit8 v2, v1, 0x64

    .line 1373
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1374
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1375
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1376
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1377
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1380
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1381
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1382
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1383
    if-lez v5, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1392
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1389
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1392
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1401
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1402
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1403
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1404
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1405
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1406
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1407
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1408
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1409
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1424
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1413
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1414
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1415
    const/4 v3, 0x0

    .line 1421
    .local v3, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1416
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1417
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1419
    .end local v3           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3       #index:I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1250
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1251
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1252
    mul-int/lit8 v2, v1, 0x64

    .line 1254
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1255
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1256
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1257
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1258
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1261
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1262
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1263
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1264
    if-lez v3, :cond_1

    .line 1265
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1273
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1270
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1273
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1282
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1283
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1284
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1285
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1286
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1287
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1288
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1289
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1290
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1305
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1294
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1295
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1296
    const/4 v4, 0x0

    .line 1302
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1297
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1298
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1300
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2115
    new-instance v0, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3177
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3178
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3179
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 3180
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 3182
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3905
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3906
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3908
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1765
    const/4 v2, 0x0

    .line 1766
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1767
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1769
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    .line 1770
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    .line 1771
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1774
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1777
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1778
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1779
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1782
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1784
    if-eqz v1, :cond_2

    .line 1785
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1788
    :cond_2
    if-eqz v0, :cond_3

    .line 1789
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1790
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1792
    :cond_3
    return-void

    .line 1766
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2302
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2839
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->draw(Landroid/graphics/Canvas;)V

    .line 2840
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 2841
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw(Landroid/graphics/Canvas;)V

    .line 2843
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1970
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->drawableStateChanged()V

    .line 1971
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1974
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 4771
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionColumn(I)I
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4262
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4271
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 4806
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 4736
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1345
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1346
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1356
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1349
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1350
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1353
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1354
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v4

    .line 1355
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1356
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4345
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 4779
    const/4 v0, 0x0

    .line 4780
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4781
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 4780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4783
    :cond_0
    return v0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    .line 4788
    const/4 v0, 0x0

    .line 4789
    .local v0, childrenTotalWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4790
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 4789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4792
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 1

    .prologue
    .line 4767
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 855
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3492
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3482
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 4820
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 4741
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1443
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1444
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1453
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1447
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1448
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1451
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1452
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1453
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 4816
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 4745
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1464
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1465
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1475
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1468
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1469
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1472
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1473
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v4

    .line 1474
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1475
    .local v2, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1614
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1615
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4321
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 4810
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 4732
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1324
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1325
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1334
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1328
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1329
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1332
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1333
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1334
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4312
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3771
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 3772
    .local v0, count:I
    if-lez v0, :cond_c

    .line 3779
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v4, :cond_4

    .line 3781
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 3783
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    if-lt v4, v5, :cond_3

    .line 3788
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3789
    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3899
    :cond_1
    :goto_0
    return-void

    .line 3791
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0

    .line 3797
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 3847
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3849
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v1

    .line 3852
    .local v1, newPos:I
    if-lt v1, v0, :cond_5

    .line 3853
    add-int/lit8 v1, v0, -0x1

    .line 3855
    :cond_5
    if-gez v1, :cond_6

    .line 3856
    const/4 v1, 0x0

    .line 3860
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3862
    .local v2, selectablePos:I
    if-ltz v2, :cond_a

    .line 3863
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3799
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3804
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3805
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    goto :goto_0

    .line 3811
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->findSyncPosition()I

    move-result v1

    .line 3812
    .restart local v1       #newPos:I
    if-ltz v1, :cond_4

    .line 3814
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3815
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_4

    .line 3817
    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 3820
    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3823
    :cond_8
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3832
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3827
    :cond_9
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    .line 3840
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3841
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    goto :goto_0

    .line 3867
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_a
    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3868
    if-ltz v2, :cond_c

    .line 3869
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 3876
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 3886
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3887
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3893
    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 3894
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 3895
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 3896
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 3897
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 3898
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3887
    :cond_d
    const/4 v3, 0x7

    goto :goto_2

    .line 3889
    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/4 v3, 0x3

    :cond_f
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_3

    .line 3797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4169
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3506
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3507
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3508
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3509
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3511
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 3512
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 3513
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 3516
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 3519
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3521
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 3564
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 3565
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 3566
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3567
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller3;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 765
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4009
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1914
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1915
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1916
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1919
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1921
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1922
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1945
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1923
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1925
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 1927
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v1

    .line 1928
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1929
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1930
    if-eqz v1, :cond_6

    .line 1931
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1937
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1938
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1939
    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    .line 1941
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1942
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1934
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1532
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    .line 1697
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1700
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1706
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1707
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1708
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrapView, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1715
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1716
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1717
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1737
    :cond_1
    :goto_0
    return-object v0

    .line 1725
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1726
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 1727
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1729
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3213
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3215
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2029
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onAttachedToWindow()V

    .line 2031
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2032
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2033
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2035
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1983
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1985
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2011
    :cond_0
    :goto_0
    return-object v3

    .line 1991
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView2;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1996
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1997
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1998
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1999
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2000
    move v0, v2

    .line 2006
    :cond_2
    if-ltz v0, :cond_0

    .line 2007
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1998
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 4085
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4089
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 4090
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4092
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2043
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onDetachedFromWindow()V

    .line 2045
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2046
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2047
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2049
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4250
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4251
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 4252
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 4254
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 4759
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v0, :cond_0

    .line 4760
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 4762
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4763
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 4764
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1200
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1201
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 1204
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1205
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4177
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4179
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4180
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 4189
    :cond_0
    :goto_0
    return-void

    .line 4184
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4185
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/high16 v9, -0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2852
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 2853
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 2856
    .local v5, y:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v8, :cond_0

    .line 2857
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v8, p1}, Lcom/htc/widget/HtcFastScroller3;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2858
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 2924
    .end local v1           #intercepted:Z
    :goto_0
    return v6

    .line 2863
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v7

    .line 2924
    goto :goto_0

    .line 2867
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2868
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v2

    .line 2874
    .local v2, motionPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ltz v2, :cond_2

    .line 2877
    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2880
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2881
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2882
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2889
    :goto_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2890
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2891
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2893
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2894
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto :goto_1

    .line 2870
    .end local v2           #motionPosition:I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v2

    .restart local v2       #motionPosition:I
    goto :goto_2

    .line 2884
    .restart local v3       #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2885
    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2899
    .end local v2           #motionPosition:I
    .end local v3           #v:Landroid/view/View;
    :pswitch_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 2902
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2903
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2907
    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2918
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2919
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2899
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2279
    sparse-switch p1, :sswitch_data_0

    .line 2291
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2282
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2284
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2285
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    .line 2286
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2287
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2288
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2279
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1503
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView2;->onLayout(ZIIII)V

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 1505
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 1506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 1507
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1488
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->useDefaultSelector()V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 1491
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1492
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1493
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1494
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1495
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1086
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    .line 1088
    .local v0, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1089
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1092
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncWidth:J

    .line 1098
    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 1099
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1100
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1105
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 1112
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    .line 1134
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFilterText(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1137
    return-void

    .line 1095
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncHeight:J

    goto :goto_0

    .line 1107
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1108
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    goto :goto_1

    .line 1113
    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1114
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1116
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1117
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1119
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1122
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1123
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1124
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 1131
    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    goto :goto_2

    .line 1126
    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1127
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 1017
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 1019
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1021
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1023
    .local v4, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 1024
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemId()J

    move-result-wide v2

    .line 1025
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    .line 1028
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1029
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    .line 1034
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 1037
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1038
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1043
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 1044
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 1066
    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 1067
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 1068
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 1069
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 1070
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1071
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 1077
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 1023
    goto :goto_0

    .line 1031
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    goto :goto_1

    .line 1040
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_2

    .line 1046
    :cond_4
    if-eqz v1, :cond_6

    .line 1048
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1051
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1052
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1056
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 1057
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    goto :goto_3

    .line 1054
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_4

    .line 1059
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    .line 1060
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1061
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 1062
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 4776
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1802
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller3;->onSizeChanged(IIII)V

    .line 1807
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4210
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4211
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4212
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4213
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4215
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 4216
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 4222
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4223
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4225
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4226
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4233
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4217
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4219
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4220
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_0

    .line 4228
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 2503
    .local v14, intercepted:Z
    if-eqz v14, :cond_0

    .line 2504
    const/16 v22, 0x1

    .line 2830
    .end local v14           #intercepted:Z
    :goto_0
    return v22

    .line 2507
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2508
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2509
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2518
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 2519
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2521
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2523
    packed-switch v4, :pswitch_data_0

    .line 2830
    :cond_2
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 2525
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v15

    .line 2526
    .local v15, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 2527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    if-ltz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v22

    check-cast v22, Landroid/widget/ListAdapter;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2531
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 2534
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2536
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2562
    :cond_4
    :goto_2
    if-ltz v15, :cond_5

    .line 2564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2567
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2568
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2569
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2570
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView2;->mFixm:Z

    .line 2577
    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2579
    .end local v18           #v:Landroid/view/View;
    :cond_5
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2580
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .line 2538
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_7

    if-gez v15, :cond_7

    .line 2542
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2545
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2547
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2550
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2551
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2557
    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2553
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    goto :goto_4

    .line 2572
    .restart local v18       #v:Landroid/view/View;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2573
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2585
    .end local v15           #motionPosition:I
    .end local v18           #v:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 2588
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move/from16 v22, v0

    sub-int v8, v20, v22

    .line 2591
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    .line 2599
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 2600
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2602
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2615
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v8, v8, v22

    .line 2618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    sub-int v11, v20, v22

    .line 2619
    .local v11, incrementalDeltaX:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2623
    .local v16, motionView:Landroid/view/View;
    if-eqz v16, :cond_b

    .line 2626
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2629
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2631
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2633
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2634
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2635
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2638
    .end local v15           #motionPosition:I
    :cond_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .end local v11           #incrementalDeltaX:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_c
    move v11, v8

    .line 2618
    goto :goto_5

    .line 2641
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    .line 2643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 2644
    .local v12, incrementalDeltaY:I
    :goto_6
    if-eqz v12, :cond_e

    .line 2645
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2649
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2650
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 2653
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 2656
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    .line 2658
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2660
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2661
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    .line 2662
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2665
    .end local v15           #motionPosition:I
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    goto/16 :goto_1

    .end local v12           #incrementalDeltaY:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_10
    move v12, v9

    .line 2643
    goto :goto_6

    .line 2676
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 2783
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2787
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2789
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2790
    .local v10, handler:Landroid/os/Handler;
    if-eqz v10, :cond_12

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2794
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2796
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2680
    .end local v10           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2681
    .restart local v15       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2682
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1f

    .line 2683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 2685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2689
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 2690
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    .line 2693
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v17, v0

    .line 2694
    .local v17, performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    .line 2695
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    .line 2696
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->rememberWindowAttachCount()V

    .line 2698
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2701
    const/4 v5, 0x0

    .line 2702
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2704
    :cond_15
    const/4 v5, 0x1

    .line 2712
    :cond_16
    :goto_8
    if-eqz v5, :cond_1e

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2714
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_17

    .line 2715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2718
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2719
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2720
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 2721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2723
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2724
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    .line 2725
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2728
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_18

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2729
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2733
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 2734
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 2735
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2751
    :cond_19
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2707
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2708
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 2715
    .restart local v10       #handler:Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_9

    .line 2738
    :cond_1d
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/widget/HtcAbsListView2$1;-><init>(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Lcom/htc/widget/HtcAbsListView2$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 2753
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f

    .line 2754
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2758
    .end local v5           #b:Z
    .end local v17           #performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto/16 :goto_7

    .line 2761
    .end local v6           #child:Landroid/view/View;
    .end local v15           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2762
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 2767
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2773
    .local v13, initialVelocity:I
    :goto_b
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v22

    if-lez v22, :cond_21

    .line 2776
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView2;->onFling(I)V

    goto/16 :goto_7

    .line 2769
    .end local v13           #initialVelocity:I
    :cond_20
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .restart local v13       #initialVelocity:I
    goto :goto_b

    .line 2778
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onUp()V

    goto/16 :goto_7

    .line 2809
    .end local v13           #initialVelocity:I
    .end local v19           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2810
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2812
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_22

    .line 2813
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2815
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2818
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_23

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2822
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2824
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2591
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2676
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2446
    if-eqz p1, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2452
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2455
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2456
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2459
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 4754
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 4755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4756
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2057
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->onWindowFocusChanged(Z)V

    .line 2059
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 2061
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 2064
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2065
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->resetPressedStatus(Landroid/view/View;)V

    .line 2069
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2070
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2072
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 2074
    if-ne v0, v2, :cond_1

    .line 2076
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2100
    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 2101
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v2

    .line 2059
    goto :goto_0

    .line 2079
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v3, :cond_4

    .line 2081
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 2085
    :cond_4
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2087
    if-ne v0, v2, :cond_5

    .line 2089
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    goto :goto_1

    .line 2093
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2094
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2095
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2317
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2318
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2319
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2320
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2323
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 2324
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2325
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2326
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2327
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2328
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2329
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2333
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2324
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2333
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v0

    .line 2351
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2352
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2354
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1741
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1742
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1743
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1744
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(IIII)V

    .line 1747
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1748
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1749
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1750
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->refreshDrawableState()V

    .line 1752
    :cond_0
    return-void

    .line 1749
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4360
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 4361
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1500(Lcom/htc/widget/HtcAbsListView2$RecycleBin;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    move-result-object v3

    .line 4364
    .local v3, listener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4365
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4366
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4368
    .local v4, lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4369
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4370
    if-eqz v3, :cond_0

    .line 4372
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView2$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4364
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4376
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4377
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 4378
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3529
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 3530
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3531
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3533
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3534
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3535
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2961
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2963
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V

    .line 2964
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2967
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1210
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->requestLayout()V

    .line 1212
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 917
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 918
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 920
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1219
    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1220
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1221
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1222
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 1223
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 1224
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1225
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1226
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 1227
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1228
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 1229
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1237
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1238
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 1239
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1241
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2486
    if-eqz p1, :cond_0

    .line 2487
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2488
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2491
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    .prologue
    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v3

    .line 3585
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 3586
    const/16 v23, 0x0

    .line 3762
    :goto_0
    return v23

    .line 3589
    :cond_0
    const/16 v19, 0x0

    .line 3592
    .local v19, selectedTop:I
    const/16 v16, 0x0

    .line 3594
    .local v16, selectedLeft:I
    const/4 v7, 0x0

    .line 3595
    .local v7, childrenTop:I
    const/4 v4, 0x0

    .line 3596
    .local v4, childrenBottom:I
    const/4 v5, 0x0

    .line 3597
    .local v5, childrenLeft:I
    const/4 v6, 0x0

    .line 3599
    .local v6, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    .line 3601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v24

    sub-int v6, v23, v24

    .line 3608
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3609
    .local v9, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move/from16 v20, v0

    .line 3610
    .local v20, toPosition:I
    const/4 v8, 0x1

    .line 3612
    .local v8, down:Z
    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 3613
    move/from16 v17, v20

    .line 3615
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3618
    .local v14, selected:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3619
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 3620
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    .line 3623
    .local v18, selectedRight:I
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    .line 3624
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    .line 3736
    .end local v14           #selected:Landroid/view/View;
    .end local v18           #selectedRight:I
    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 3741
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3742
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 3745
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 3746
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 3750
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v17

    .line 3751
    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 3752
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3753
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectionInt(I)V

    .line 3754
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 3760
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 3762
    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 3603
    .end local v8           #down:Z
    .end local v9           #firstPosition:I
    .end local v17           #selectedPos:I
    .end local v20           #toPosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v24

    add-int v7, v23, v24

    .line 3604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v24

    sub-int v4, v23, v24

    goto/16 :goto_1

    .line 3625
    .restart local v8       #down:Z
    .restart local v9       #firstPosition:I
    .restart local v14       #selected:Landroid/view/View;
    .restart local v17       #selectedPos:I
    .restart local v18       #selectedRight:I
    .restart local v20       #toPosition:I
    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    .line 3626
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    .line 3630
    .end local v18           #selectedRight:I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 3631
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 3634
    .local v15, selectedBottom:I
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 3635
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    .line 3636
    :cond_6
    if-le v15, v4, :cond_1

    .line 3637
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    .line 3643
    .end local v14           #selected:Landroid/view/View;
    .end local v15           #selectedBottom:I
    .end local v17           #selectedPos:I
    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 3645
    move/from16 v17, v9

    .line 3646
    .restart local v17       #selectedPos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v3, :cond_1

    .line 3647
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3648
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3651
    .local v21, top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3653
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 3654
    if-nez v10, :cond_9

    .line 3656
    move/from16 v16, v12

    .line 3658
    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    .line 3661
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    .line 3664
    :cond_9
    if-lt v12, v5, :cond_d

    .line 3666
    add-int v17, v9, v10

    .line 3667
    move/from16 v16, v12

    .line 3668
    goto/16 :goto_2

    .line 3671
    :cond_a
    if-nez v10, :cond_c

    .line 3673
    move/from16 v19, v21

    .line 3675
    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    .line 3678
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    .line 3681
    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 3683
    add-int v17, v9, v10

    .line 3684
    move/from16 v19, v21

    .line 3685
    goto/16 :goto_2

    .line 3646
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3691
    .end local v10           #i:I
    .end local v12           #left:I
    .end local v17           #selectedPos:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 3692
    .local v11, itemCount:I
    const/4 v8, 0x0

    .line 3693
    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    .line 3695
    .restart local v17       #selectedPos:I
    add-int/lit8 v10, v3, -0x1

    .restart local v10       #i:I
    :goto_6
    if-ltz v10, :cond_1

    .line 3696
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3699
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3700
    .restart local v21       #top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3701
    .local v2, bottom:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3702
    .restart local v12       #left:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3704
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 3705
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    .line 3706
    move/from16 v16, v12

    .line 3707
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    .line 3708
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    .line 3712
    :cond_10
    if-gt v13, v6, :cond_14

    .line 3713
    add-int v17, v9, v10

    .line 3714
    move/from16 v16, v12

    .line 3715
    goto/16 :goto_2

    .line 3718
    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    .line 3719
    move/from16 v19, v21

    .line 3720
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    .line 3721
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    .line 3725
    :cond_13
    if-gt v2, v4, :cond_14

    .line 3726
    add-int v17, v9, v10

    .line 3727
    move/from16 v19, v21

    .line 3728
    goto/16 :goto_2

    .line 3695
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 3748
    .end local v2           #bottom:I
    .end local v10           #i:I
    .end local v11           #itemCount:I
    .end local v12           #left:I
    .end local v13           #right:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    goto/16 :goto_3

    .line 3756
    :cond_16
    const/16 v17, -0x1

    .line 3757
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3758
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto/16 :goto_4

    .line 3762
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 4021
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 4073
    :cond_0
    :goto_0
    return v2

    .line 4025
    :cond_1
    const/4 v2, 0x0

    .line 4026
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4027
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4050
    :goto_1
    if-eqz v3, :cond_0

    .line 4051
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 4053
    move-object v1, p3

    .line 4054
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 4055
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v1, p3, v5, v6, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 4058
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4059
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4061
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4062
    goto :goto_0

    .line 4034
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 4035
    goto :goto_1

    .line 4037
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 4039
    const/4 v2, 0x1

    .line 4040
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4042
    :cond_3
    const/4 v3, 0x0

    .line 4043
    goto :goto_1

    .line 4046
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_1

    .line 4065
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4066
    goto :goto_0

    .line 4069
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4027
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 4059
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 4331
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    .line 4332
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2468
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2469
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2477
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2478
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1857
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1858
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 667
    if-eqz p1, :cond_2

    .line 668
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller3;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setHorizontalScrollBarEnabled(Z)V

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->stop()V

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1162
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1163
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 1166
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1168
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1172
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1176
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 1177
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->clearSavedState()V

    .line 1180
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1514
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView2;->setFrame(IIII)Z

    move-result v0

    .line 1519
    .local v0, changed:Z
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 1524
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    .line 752
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 753
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4396
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1502(Lcom/htc/widget/HtcAbsListView2$RecycleBin;Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    .line 4397
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1953
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    .line 1955
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    .line 1962
    :goto_0
    return-void

    .line 1958
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    .line 1959
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 806
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    .line 807
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1873
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "sel"

    .prologue
    const/4 v3, 0x0

    .line 1880
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1882
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1885
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1886
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1887
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 1888
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 1889
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 1890
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 1891
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1892
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1893
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 727
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 909
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    .line 910
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayoutIfNecessary()V

    .line 912
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    .line 825
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4298
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    .line 4299
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2252
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2253
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2254
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2255
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2257
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v6

    .line 2261
    :cond_0
    if-nez v6, :cond_1

    .line 2262
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2265
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2270
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2414
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2415
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2416
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2417
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2418
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2419
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2423
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2424
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2426
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2427
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2428
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2429
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2431
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 2434
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->requestDisallowInterceptTouchEvent(Z)V

    .line 2438
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1815
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1820
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1818
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3227
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 3228
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3473
    :goto_0
    return-void

    .line 3232
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    .line 3233
    .local v11, firstTop:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 3236
    .local v16, lastBottom:I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 3237
    .local v9, firstLeft:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getRight()I

    move-result v17

    .line 3240
    .local v17, lastRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3250
    .local v19, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 3251
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v22, v27, v9

    .line 3252
    .local v22, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 3253
    .local v8, end:I
    sub-int v23, v17, v8

    .line 3254
    .local v23, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    .line 3256
    .local v26, width:I
    if-gez p1, :cond_1

    .line 3257
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3262
    :goto_1
    if-gez p2, :cond_2

    .line 3263
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3288
    .end local v26           #width:I
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3290
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    .line 3291
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 3295
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3296
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    goto/16 :goto_0

    .line 3259
    .end local v2           #absIncrementalDeltaY:I
    .restart local v26       #width:I
    :cond_1
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3265
    :cond_2
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 3269
    .end local v8           #end:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    .end local v26           #width:I
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v27, v11

    .line 3270
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 3271
    .restart local v8       #end:I
    sub-int v23, v16, v8

    .line 3272
    .restart local v23       #spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v14, v27, v28

    .line 3274
    .local v14, height:I
    if-gez p1, :cond_4

    .line 3275
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3280
    :goto_3
    if-gez p2, :cond_5

    .line 3281
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    .line 3277
    :cond_4
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 3283
    :cond_5
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 3299
    .end local v14           #height:I
    .restart local v2       #absIncrementalDeltaY:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    .line 3300
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 3305
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3308
    .local v10, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 3310
    if-nez v10, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v9, v0, :cond_8

    if-lez p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 3312
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3316
    :cond_8
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 3318
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3323
    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v11, v0, :cond_a

    if-lez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3325
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3329
    :cond_a
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 3331
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3336
    :cond_b
    if-gez p2, :cond_e

    const/4 v7, 0x1

    .line 3338
    .local v7, down:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 3340
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeaderViewsCount()I

    move-result v13

    .line 3341
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getFooterViewsCount()I

    move-result v28

    sub-int v12, v27, v28

    .line 3343
    .local v12, footerViewsStart:I
    const/16 v24, 0x0

    .line 3344
    .local v24, start:I
    const/4 v6, 0x0

    .line 3349
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 3351
    if-eqz v7, :cond_11

    .line 3352
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v18, v27, p2

    .line 3353
    .local v18, left:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    if-ge v15, v5, :cond_c

    .line 3354
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3355
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 3394
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    .line 3445
    :goto_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 3446
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->detachViewsFromParent(II)V

    .line 3449
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 3450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFixm:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19

    .line 3451
    neg-int v0, v9

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3462
    :goto_7
    if-eqz v7, :cond_d

    .line 3463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3466
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3467
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView2;->fillGap(Z)V

    .line 3468
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 3469
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->awakenScrollBars()Z

    .line 3471
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 3336
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v24           #start:I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3358
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v18       #left:I
    .restart local v24       #start:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 3359
    add-int v20, v10, v15

    .line 3360
    .local v20, position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_10

    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3353
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 3372
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    .end local v20           #position:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v21, v27, p2

    .line 3373
    .local v21, right:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_8
    if-ltz v15, :cond_c

    .line 3374
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3375
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 3378
    move/from16 v24, v15

    .line 3379
    add-int/lit8 v6, v6, 0x1

    .line 3380
    add-int v20, v10, v15

    .line 3381
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v12, :cond_12

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3373
    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 3396
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v21           #right:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    .line 3397
    if-eqz v7, :cond_17

    .line 3398
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v25, v27, p2

    .line 3399
    .local v25, top:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    if-ge v15, v5, :cond_14

    .line 3400
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3401
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 3440
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v25           #top:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 3404
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #i:I
    .restart local v25       #top:I
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 3405
    add-int v20, v10, v15

    .line 3406
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_16

    move/from16 v0, v20

    if-ge v0, v12, :cond_16

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3399
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 3418
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v25           #top:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v3, v27, p2

    .line 3419
    .local v3, bottom:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_a
    if-ltz v15, :cond_14

    .line 3420
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3421
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v3, :cond_14

    .line 3424
    move/from16 v24, v15

    .line 3425
    add-int/lit8 v6, v6, 0x1

    .line 3426
    add-int v20, v10, v15

    .line 3427
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_18

    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3419
    :cond_18
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 3452
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    :cond_19
    if-gez v9, :cond_1a

    if-lez p2, :cond_1a

    add-int v27, p2, v9

    if-lez v27, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v27

    if-lez v27, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 3453
    neg-int v0, v9

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3454
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView2;->mFixm:Z

    goto/16 :goto_7

    .line 3456
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    goto/16 :goto_7

    .line 3458
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4750
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    .line 4751
    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 4797
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4798
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4799
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 4800
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4797
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4803
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1537
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1539
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1542
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    .line 1545
    .local v1, canScrollLeft:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1547
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1548
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    .line 1552
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    .end local v1           #canScrollLeft:Z
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1557
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1560
    .local v5, count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    .line 1563
    .local v2, canScrollRight:Z
    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    .line 1564
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1565
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    .line 1568
    .end local v4           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    .line 1542
    goto :goto_0

    .restart local v1       #canScrollLeft:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1548
    goto :goto_1

    .end local v4           #child:Landroid/view/View;
    :cond_6
    move v8, v9

    .line 1552
    goto :goto_2

    .end local v1           #canScrollLeft:Z
    .restart local v5       #count:I
    :cond_7
    move v2, v7

    .line 1560
    goto :goto_3

    .restart local v2       #canScrollRight:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_8
    move v2, v7

    .line 1565
    goto :goto_4

    .end local v4           #child:Landroid/view/View;
    :cond_9
    move v7, v9

    .line 1568
    goto :goto_5

    .line 1572
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    .line 1575
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    .line 1578
    .local v3, canScrollUp:Z
    :goto_7
    if-nez v3, :cond_b

    .line 1579
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 1580
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1581
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    .line 1585
    .end local v4           #child:Landroid/view/View;
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    .end local v3           #canScrollUp:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1590
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1593
    .restart local v5       #count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    .line 1596
    .local v0, canScrollDown:Z
    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    .line 1597
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1598
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    .line 1601
    .end local v4           #child:Landroid/view/View;
    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canScrollDown:Z
    .end local v5           #count:I
    :cond_e
    move v3, v7

    .line 1575
    goto :goto_7

    .restart local v3       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    move v3, v7

    .line 1581
    goto :goto_8

    .end local v4           #child:Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1585
    goto :goto_9

    .end local v3           #canScrollUp:Z
    .restart local v5       #count:I
    :cond_11
    move v0, v7

    .line 1593
    goto :goto_a

    .restart local v0       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    move v0, v7

    .line 1598
    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1601
    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
