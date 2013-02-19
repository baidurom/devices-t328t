.class public abstract Lcom/htc/widget/HtcAbsListView;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;,
        Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;,
        Lcom/htc/widget/HtcAbsListView$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;,
        Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAbsListView$PositionScroller;,
        Lcom/htc/widget/HtcAbsListView$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView$PerformClick;,
        Lcom/htc/widget/HtcAbsListView$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView$SavedState;,
        Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;,
        Lcom/htc/widget/HtcAbsListView$OnScrollListener;,
        Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;,
        Lcom/htc/widget/HtcAbsListView$AddAnimationListener;,
        Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
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
.field public static final ANIM_ADD:I = 0x8

.field public static final ANIM_CLICK:I = 0x4

.field public static final ANIM_DEL:I = 0x10

.field public static final ANIM_INTRO:I = 0x2

.field public static final ANIM_OVERSCROLL:I = 0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final RAISE_THREAD_PRIORITY:I = -0x5

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

.field mAnimationRunning:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field protected mEnabledAnimationType:I

.field mFastScrollEnabled:Z

.field mFastScroller:Lcom/htc/widget/HtcFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field mHtcScrollerEnabled:Z

.field mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLogFps:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollForAddAnimation:Z

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

.field mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field protected mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private prevPriority:I

.field private priorityRaised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 809
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 270
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 290
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 295
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 305
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 310
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 316
    new-instance v1, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 321
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 326
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 331
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 336
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 341
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 346
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 394
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 425
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 463
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 483
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 485
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 511
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 514
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 517
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 525
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 526
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 596
    const/high16 v1, 0x3fa0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 598
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 608
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 656
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 659
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 688
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 709
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 3998
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 4060
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 6792
    const/16 v1, 0x1f

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 810
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 812
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 813
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 814
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 815
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 816
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 819
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 820
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 823
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 270
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 290
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 295
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 305
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 310
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 316
    new-instance v9, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 321
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 326
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 331
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 336
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 341
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 394
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 425
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 463
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 483
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 485
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 511
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 514
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 517
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 525
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 526
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 596
    const/high16 v9, 0x3fa0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 598
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 608
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 656
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 659
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 688
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 709
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 3998
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 4060
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 6792
    const/16 v9, 0x1f

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 824
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 826
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 829
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 830
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 831
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 834
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 837
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 838
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setStackFromBottom(Z)V

    .line 840
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 841
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 843
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 844
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->setTextFilterEnabled(Z)V

    .line 846
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 848
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setTranscriptMode(I)V

    .line 850
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 851
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 853
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 854
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 856
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 857
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 859
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setChoiceMode(I)V

    .line 860
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 863
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setOverScrollMode(I)V

    .line 868
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1806
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/widget/HtcAbsListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/widget/HtcAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/widget/HtcAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$CheckForLongPress;)Lcom/htc/widget/HtcAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6070
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 6088
    :cond_0
    return v2

    .line 6071
    :cond_1
    const/4 v2, 0x1

    .line 6073
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6074
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6075
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6076
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6077
    const/4 v2, 0x0

    .line 6078
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 6082
    const/4 v2, 0x0

    .line 6083
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6074
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1245
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v1

    .line 1246
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1248
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4884
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 4885
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4886
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4887
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 4889
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 5767
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 5768
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5769
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 5770
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 5772
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 5777
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 5779
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 5780
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5781
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5782
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5783
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5784
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5785
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5786
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5787
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5788
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 5789
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5790
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 5792
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 5793
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5797
    :goto_0
    return-void

    .line 5795
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 5520
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5521
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5523
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2431
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2433
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2434
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2436
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6093
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6094
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6096
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 5566
    sparse-switch p2, :sswitch_data_0

    .line 5599
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5568
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5569
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5570
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5571
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5603
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 5604
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 5605
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5574
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

    .line 5575
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5576
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5577
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5578
    .restart local v1       #dY:I
    goto :goto_0

    .line 5580
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5581
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5582
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5583
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5584
    .restart local v1       #dY:I
    goto :goto_0

    .line 5586
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

    .line 5587
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5588
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5589
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5590
    .restart local v1       #dY:I
    goto :goto_0

    .line 5593
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5594
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5595
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5596
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5597
    .restart local v1       #dY:I
    goto :goto_0

    .line 5566
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 872
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setClickable(Z)V

    .line 873
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFocusableInTouchMode(Z)V

    .line 874
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setWillNotDraw(Z)V

    .line 875
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 876
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 878
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 879
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    .line 880
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    .line 881
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    .line 882
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    .line 883
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mOverflingDistance:I

    .line 885
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    .line 888
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLogFps()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 890
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 3841
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3842
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3846
    :goto_0
    return-void

    .line 3844
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 3849
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3850
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3852
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 3956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 3958
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3959
    .local v1, pointerId:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 3963
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 3964
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3965
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3966
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3967
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3969
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 3963
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5539
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5540
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5541
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getLocationOnScreen([I)V

    .line 5544
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5545
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5546
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5551
    :goto_0
    return-void

    .line 5549
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2303
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 3855
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3856
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3859
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 6718
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6719
    .local v1, size:I
    if-lez v1, :cond_2

    .line 6721
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6722
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6723
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v3, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 6725
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6731
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 6721
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6729
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 6731
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3154
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3155
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3157
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 3165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3167
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3170
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3174
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3176
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3177
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3178
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3183
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 3184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3191
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3192
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3193
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3194
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3198
    :cond_2
    const/16 v16, 0x0

    .line 3199
    .local v16, atEdge:Z
    if-eqz v18, :cond_3

    .line 3200
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3204
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3205
    if-eqz v21, :cond_7

    .line 3208
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3209
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_6

    .line 3212
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3214
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3216
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3223
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3224
    .local v27, overscrollMode:I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3227
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 3228
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3229
    if-lez v29, :cond_b

    .line 3230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3242
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3245
    .end local v23           #motionViewRealTop:I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v3, :cond_8

    .line 3248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v4, v0, v6, v7}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 3318
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_8
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_9
    move/from16 v18, v17

    .line 3155
    goto/16 :goto_0

    .line 3188
    .restart local v18       #incrementalDeltaY:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3234
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_b
    if-gez v29, :cond_6

    .line 3235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 3252
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3253
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v26, v0

    .line 3255
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3256
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_15

    const/16 v24, 0x1

    .line 3258
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    if-nez v3, :cond_d

    .line 3259
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 3262
    :cond_d
    move/from16 v0, v18

    neg-int v8, v0

    .line 3263
    .local v8, overScrollDistance:I
    if-gez v25, :cond_e

    if-gez v26, :cond_f

    :cond_e
    if-lez v25, :cond_16

    if-gtz v26, :cond_16

    .line 3264
    :cond_f
    move/from16 v0, v26

    neg-int v8, v0

    .line 3265
    add-int v18, v18, v8

    .line 3270
    :goto_5
    if-eqz v8, :cond_12

    .line 3271
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3273
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3274
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3277
    :cond_10
    if-lez v29, :cond_17

    .line 3278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3288
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3292
    .end local v27           #overscrollMode:I
    :cond_12
    if-eqz v18, :cond_14

    .line 3294
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3295
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentIfNeeded()V

    .line 3298
    if-eqz v18, :cond_13

    .line 3299
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    .line 3302
    :cond_13
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3306
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3308
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3309
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3310
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3311
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3312
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3314
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3315
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3256
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_15
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3267
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3282
    .restart local v27       #overscrollMode:I
    :cond_17
    if-gez v29, :cond_11

    .line 3283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 3310
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 5530
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5532
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 5534
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkFocus()V

    .line 5536
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3114
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3115
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3116
    .local v1, distance:I
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 3117
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 3118
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 3119
    if-eqz v4, :cond_5

    .line 3120
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3121
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3126
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3130
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3131
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3133
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3134
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3135
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3136
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3138
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3141
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3142
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3143
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3145
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3149
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3116
    goto :goto_0

    .line 3123
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3124
    if-lez v0, :cond_6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 3149
    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1535
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
    .line 3980
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    .line 3981
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3982
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3984
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3995
    :cond_0
    return-void

    .line 3988
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3989
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3990
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3991
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3993
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3988
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 5893
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 5851
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5758
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 5930
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1043
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1044
    return-void
.end method

.method protected clearScrollingCache()V
    .locals 1

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4897
    new-instance v0, Lcom/htc/widget/HtcAbsListView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$2;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 4912
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4913
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 5803
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 5804
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 5806
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5807
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 5810
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1914
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1915
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1916
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1917
    mul-int/lit8 v2, v1, 0x64

    .line 1919
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1920
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1921
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1922
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1923
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1926
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1927
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1928
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1929
    if-lez v3, :cond_1

    .line 1930
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1938
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1935
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1938
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1947
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1948
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1949
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1950
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1951
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1952
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1953
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1954
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1955
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1971
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1960
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1961
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1962
    const/4 v4, 0x0

    .line 1968
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

    .line 1963
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1964
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1966
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1981
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1982
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1983
    .local v0, result:I
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1985
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1990
    :cond_0
    :goto_0
    return v0

    .line 1988
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 5314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5316
    const/4 v7, 0x0

    .line 5317
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 5318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5319
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5321
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5322
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 5324
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5325
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5326
    .local v9, end:I
    const/4 v10, 0x0

    .line 5327
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 5328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5329
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 5330
    const/4 v10, 0x1

    .line 5331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5337
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 5338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5339
    add-int/lit8 v8, v8, -0x1

    .line 5340
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 5341
    const/4 v7, 0x1

    .line 5342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 5343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5317
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 5327
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 5348
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5352
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 5353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5355
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2776
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6134
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2311
    const/4 v2, 0x0

    .line 2312
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2313
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2315
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    .line 2316
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2317
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2320
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2323
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2324
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2325
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2328
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2330
    if-eqz v1, :cond_2

    .line 2331
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2334
    :cond_2
    if-eqz v0, :cond_3

    .line 2335
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2336
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2338
    :cond_3
    return-void

    .line 2312
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
    .line 3009
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 6864
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6865
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 3784
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3785
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    .line 3786
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3787
    .local v4, scrollY:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3789
    .local v2, restoreCount:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 3790
    .local v1, leftPadding:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 3791
    .local v3, rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 3793
    .local v5, width:I
    int-to-float v6, v1

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3795
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3796
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3797
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3799
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3801
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v5           #width:I
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3802
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3803
    .restart local v2       #restoreCount:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 3804
    .restart local v1       #leftPadding:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 3805
    .restart local v3       #rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 3806
    .restart local v5       #width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    .line 3808
    .local v0, height:I
    neg-int v6, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3810
    const/high16 v6, 0x4334

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3811
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3812
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3813
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3815
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3818
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v4           #scrollY:I
    .end local v5           #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v6, :cond_4

    .line 3819
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3820
    .restart local v4       #scrollY:I
    if-eqz v4, :cond_5

    .line 3822
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3823
    .restart local v2       #restoreCount:I
    int-to-float v6, v4

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3824
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3825
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3830
    .end local v2           #restoreCount:I
    .end local v4           #scrollY:I
    :cond_4
    :goto_0
    return-void

    .line 3827
    .restart local v4       #scrollY:I
    :cond_5
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2559
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 2560
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 2561
    return-void
.end method

.method public enableAnimation(IZ)V
    .locals 2
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 6827
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 6829
    :goto_0
    return-void

    .line 6828
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    goto :goto_0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 5167
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 5168
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 5173
    :cond_0
    :goto_0
    return v1

    .line 5172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v1

    .line 5173
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 5912
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 5921
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 2021
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2022
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2032
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2025
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2026
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2029
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2030
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    .line 2031
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2032
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2382
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5999
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1018
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1019
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1030
    :cond_1
    return-object v3

    .line 1022
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1023
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1024
    .local v0, count:I
    new-array v3, v0, [J

    .line 1026
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1027
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 982
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 986
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1521
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1524
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1525
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5110
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5100
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2355
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2373
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2156
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2157
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 5963
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1851
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1854
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 6736
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2000
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2001
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2010
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 2004
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2005
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2008
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2009
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2010
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2364
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 5954
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1327
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5359
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 5360
    .local v1, count:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    .line 5361
    .local v4, lastHandledItemCount:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    .line 5363
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5364
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->confirmCheckedPositionsById()V

    .line 5367
    :cond_0
    if-lez v1, :cond_e

    .line 5372
    iget-boolean v10, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 5374
    iput-boolean v12, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 5376
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 5377
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5492
    :cond_1
    :goto_0
    return-void

    .line 5379
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 5380
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 5381
    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    .line 5382
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 5385
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 5386
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5387
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5388
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5389
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 5391
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 5388
    goto :goto_1

    .line 5396
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 5399
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5447
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 5449
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5452
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 5453
    add-int/lit8 v6, v1, -0x1

    .line 5455
    :cond_8
    if-gez v6, :cond_9

    .line 5456
    const/4 v6, 0x0

    .line 5460
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5462
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 5463
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5401
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5406
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5407
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 5413
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->findSyncPosition()I

    move-result v6

    .line 5414
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 5416
    invoke-virtual {p0, v6, v9}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5417
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 5419
    iput v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 5421
    iget-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 5424
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5432
    :goto_2
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5428
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 5440
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5441
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 5467
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5468
    if-ltz v7, :cond_e

    .line 5469
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5476
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 5484
    :cond_e
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5485
    iput v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 5486
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 5487
    iput v13, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 5488
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 5489
    iput-boolean v12, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 5490
    iput v13, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 5491
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 5484
    goto :goto_3

    .line 5399
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 5820
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5124
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5125
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5126
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5128
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5129
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5131
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 5132
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 5133
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 5135
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 5181
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 5182
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 5183
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 5184
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1413
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1419
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/widget/HtcAbsListView;->onScrollChanged(IIII)V

    .line 1420
    return-void
.end method

.method isAddAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6807
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCLICKAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6815
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDelAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6811
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1315
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 7041
    const/4 v0, 0x0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 5614
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method isIntroAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6803
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 965
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverScrollAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6799
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2346
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2616
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->jumpDrawablesToCurrentState()V

    .line 2617
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2618
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2497
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2532
    :cond_0
    :goto_0
    return-void

    .line 2501
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2502
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2503
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2506
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2508
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2509
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2510
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2512
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2514
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v1

    .line 2515
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2516
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2517
    if-eqz v1, :cond_6

    .line 2518
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2524
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2525
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2526
    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    .line 2528
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2529
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2521
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
    .line 2117
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 2232
    aput-boolean v3, p2, v3

    .line 2235
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2238
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2244
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2251
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 2252
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2253
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 2254
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2275
    :cond_0
    :goto_0
    return-object v0

    .line 2261
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 2262
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2265
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2266
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 2267
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2626
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 2628
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2629
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2630
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2631
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2634
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2635
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 2636
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2639
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 2640
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 2641
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 2643
    :cond_1
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    .line 2644
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 6039
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 6041
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 6043
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 6045
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3600(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 6046
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 6047
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 6048
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 6049
    const/4 v4, 0x0

    .line 6050
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6041
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6057
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3700(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6058
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 6059
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3800(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 6060
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 6061
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 6062
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 6061
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6066
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2570
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2572
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2598
    :cond_0
    :goto_0
    return-object v3

    .line 2578
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2583
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2584
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2585
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2586
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2587
    move v0, v2

    .line 2593
    :cond_2
    if-ltz v0, :cond_0

    .line 2594
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2585
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 5699
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5703
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5704
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 5705
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 5706
    new-instance v0, Lcom/htc/widget/HtcAbsListView$3;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcAbsListView$3;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 5740
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5742
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5743
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 5745
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2652
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 2655
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2658
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 2660
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2661
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2662
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2663
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2664
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2667
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2668
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2669
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 2672
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2673
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2674
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2677
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2678
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2679
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2682
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2683
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2686
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2687
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 2690
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2691
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2694
    :cond_6
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2695
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2698
    :cond_7
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2699
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2700
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2702
    :cond_8
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    .line 2703
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 5500
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onDisplayHint(I)V

    .line 5501
    sparse-switch p1, :sswitch_data_0

    .line 5513
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    .line 5514
    return-void

    .line 5503
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5504
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0

    .line 5508
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5509
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    goto :goto_0

    .line 5513
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5501
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 5900
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 5901
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5902
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 5904
    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 8
    .parameter "initialVelocity"

    .prologue
    const/4 v7, 0x0

    .line 6960
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 6961
    .local v0, childCount:I
    if-lez v0, :cond_6

    .line 6962
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6963
    .local v3, firstChildTop:I
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 6964
    .local v4, lastChildBottom:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 6965
    .local v2, contentTop:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 6967
    .local v1, contentBottom:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    if-le v5, v6, :cond_4

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    sub-int v5, v2, v5

    if-ne v3, v5, :cond_0

    if-gtz p1, :cond_4

    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    if-ltz p1, :cond_4

    .line 6970
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v5, :cond_2

    .line 6971
    new-instance v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 6973
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 6974
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v6, p1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 6987
    .end local v1           #contentBottom:I
    .end local v2           #contentTop:I
    .end local v3           #firstChildTop:I
    .end local v4           #lastChildBottom:I
    :cond_3
    :goto_0
    return-void

    .line 6976
    .restart local v1       #contentBottom:I
    .restart local v2       #contentTop:I
    .restart local v3       #firstChildTop:I
    .restart local v4       #lastChildBottom:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 6977
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v5, :cond_5

    .line 6978
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 6980
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 6981
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    goto :goto_0

    .line 6985
    .end local v1           #contentBottom:I
    .end local v2           #contentTop:I
    .end local v3           #firstChildTop:I
    .end local v4           #lastChildBottom:I
    :cond_6
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1863
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1865
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 1866
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 1870
    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1871
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1875
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 1876
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1878
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 1880
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 3760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3775
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 3763
    :pswitch_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3764
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3765
    .local v1, vscroll:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 3766
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 3767
    .local v0, delta:I
    invoke-virtual {p0, v0, v0}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3768
    const/4 v2, 0x1

    goto :goto_0

    .line 3761
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 5828
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5830
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 5831
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 5840
    :cond_0
    :goto_0
    return-void

    .line 5835
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5836
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3878
    .local v0, action:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v10, :cond_0

    .line 3879
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v10, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3880
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 3952
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 3885
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 3952
    goto :goto_0

    .line 3887
    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3888
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_2

    const/4 v10, 0x5

    if-ne v4, v10, :cond_3

    .line 3889
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 3893
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 3894
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 3895
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3897
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v2

    .line 3898
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 3901
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3902
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3903
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3904
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3905
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3906
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3907
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3909
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3910
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initOrResetVelocityTracker()V

    .line 3911
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3912
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 3919
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 3921
    :pswitch_3
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3922
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_5

    .line 3923
    const/4 v3, 0x0

    .line 3924
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3926
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 3927
    .restart local v7       #y:I
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initVelocityTrackerIfNotExists()V

    .line 3928
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3929
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 3939
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3940
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3941
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3942
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 3947
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 3885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3919
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2969
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2978
    sparse-switch p1, :sswitch_data_0

    .line 2998
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2981
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2984
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2988
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2989
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2990
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2991
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2993
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 2978
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2069
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 2070
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2071
    if-eqz p1, :cond_1

    .line 2072
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2073
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2074
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2076
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2079
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2080
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcFastScroller;->onItemCountChanged(II)V

    .line 2083
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2084
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2086
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollMax:I

    .line 2087
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2043
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2044
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->useDefaultSelector()V

    .line 2046
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2047
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2048
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2049
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2050
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2053
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2054
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2055
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2056
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2057
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2058
    .local v1, lastBottom:I
    :goto_0
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    .line 2061
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_1
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_2
    move v1, v3

    .line 2057
    goto :goto_0

    .line 2058
    .restart local v1       #lastBottom:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3745
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 3746
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/htc/widget/HtcAbsListView;->onScrollChanged(IIII)V

    .line 3747
    iput p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3748
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentIfNeeded()V

    .line 3750
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 3752
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 1

    .prologue
    .line 6157
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6174
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1760
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView$SavedState;

    .line 1762
    .local v0, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1763
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1765
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    .line 1767
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 1768
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1769
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1770
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1771
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1772
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1785
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1787
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1788
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1791
    :cond_1
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1792
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1795
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1797
    iget-boolean v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1799
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1802
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1803
    return-void

    .line 1773
    :cond_4
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1774
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1776
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1777
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 1778
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1779
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1780
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1781
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1782
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1687
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 1689
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1691
    .local v9, superState:Landroid/os/Parcelable;
    new-instance v8, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1693
    .local v8, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_2

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v12, :cond_2

    const/4 v3, 0x1

    .line 1694
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1695
    .local v6, selectedId:J
    iput-wide v6, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    .line 1696
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    .line 1698
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_3

    .line 1700
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1701
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1702
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1729
    :goto_1
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1730
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v12, :cond_0

    .line 1731
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1732
    .local v10, textFilter:Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 1733
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1734
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 1735
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1740
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v10           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->inActionMode:Z

    .line 1742
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_1

    .line 1743
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1745
    :cond_1
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_8

    .line 1746
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1747
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1748
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 1749
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1748
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1693
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1704
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v12, :cond_5

    .line 1714
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1715
    .local v11, v:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1716
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1717
    .local v2, firstPos:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lt v2, v12, :cond_4

    .line 1718
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1720
    :cond_4
    iput v2, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1721
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1723
    .end local v2           #firstPos:I
    .end local v11           #v:Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1724
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1725
    const/4 v12, 0x0

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1740
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 1751
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1753
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkedItemCount:I

    .line 1755
    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2388
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 2389
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 2394
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 2396
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 2399
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_2

    .line 2400
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 2402
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 5859
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5860
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5861
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 5862
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 5864
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 5865
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 5871
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 5872
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 5874
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 5875
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 5882
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 5866
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 5868
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 5869
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_0

    .line 5877
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 3363
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v26

    if-nez v26, :cond_2

    .line 3366
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v26

    if-eqz v26, :cond_1

    :cond_0
    const/16 v26, 0x1

    .line 3736
    :goto_0
    return v26

    .line 3366
    :cond_1
    const/16 v26, 0x0

    goto :goto_0

    .line 3370
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 3371
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    .line 3375
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 3377
    .local v16, intercepted:Z
    if-eqz v16, :cond_4

    .line 3378
    const/16 v26, 0x1

    goto :goto_0

    .line 3382
    .end local v16           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3386
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->initVelocityTrackerIfNotExists()V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3389
    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 3736
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v26, 0x1

    goto :goto_0

    .line 3391
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 3407
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3409
    .local v24, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3410
    .local v25, y:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3411
    .local v18, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 3412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    if-ltz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v26

    check-cast v26, Landroid/widget/ListAdapter;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 3417
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_6

    .line 3421
    new-instance v26, Lcom/htc/widget/HtcAbsListView$CheckForTap;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3423
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3436
    :cond_7
    :goto_2
    if-ltz v18, :cond_8

    .line 3438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3439
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3441
    .end local v22           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3442
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3443
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3444
    const/high16 v26, -0x8000

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3449
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 3450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 3451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3393
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 3397
    :cond_9
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3400
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3401
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3402
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3425
    .restart local v18       #motionPosition:I
    .restart local v24       #x:I
    .restart local v25       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 3427
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 3428
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3429
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3430
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v18

    .line 3431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3458
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 3459
    .local v21, pointerIndex:I
    const/16 v26, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 3460
    const/16 v21, 0x0

    .line 3461
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3463
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3464
    .restart local v25       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3470
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 3474
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->skipScroll()Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 3481
    .end local v21           #pointerIndex:I
    .end local v25           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_3

    .line 3622
    :cond_c
    :goto_4
    :pswitch_8
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3630
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3632
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3633
    .local v11, handler:Landroid/os/Handler;
    if-eqz v11, :cond_e

    .line 3634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3637
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3639
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StrictMode$Span;->finish()V

    .line 3650
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 3485
    .end local v11           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v18, v0

    .line 3486
    .restart local v18       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3488
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    .line 3489
    .local v24, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v24, v26

    if-lez v26, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v24, v26

    if-gez v26, :cond_15

    const/4 v13, 0x1

    .line 3491
    .local v13, inList:Z
    :goto_5
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v26

    if-nez v26, :cond_19

    if-eqz v13, :cond_19

    .line 3492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 3493
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3496
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v26, v0

    if-nez v26, :cond_10

    .line 3497
    new-instance v26, Lcom/htc/widget/HtcAbsListView$PerformClick;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    .line 3500
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v20, v0

    .line 3501
    .local v20, performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3502
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3504
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 3507
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3508
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_12

    .line 3509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    :goto_6
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3512
    :cond_12
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 3514
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 3516
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 3517
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3519
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3522
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_13

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 3523
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3526
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    .line 3527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3529
    :cond_14
    new-instance v26, Lcom/htc/widget/HtcAbsListView$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/widget/HtcAbsListView$1;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3546
    :goto_7
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 3489
    .end local v11           #handler:Landroid/os/Handler;
    .end local v13           #inList:Z
    .end local v20           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3509
    .restart local v11       #handler:Landroid/os/Handler;
    .restart local v13       #inList:Z
    .restart local v20       #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    goto/16 :goto_6

    .line 3543
    :cond_17
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3544
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    goto :goto_7

    .line 3547
    .end local v11           #handler:Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 3548
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAbsListView$PerformClick;->run()V

    .line 3551
    .end local v20           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_19
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3552
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 3555
    .end local v5           #child:Landroid/view/View;
    .end local v13           #inList:Z
    .end local v18           #motionPosition:I
    .end local v24           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    .line 3556
    .local v6, childCount:I
    if-lez v6, :cond_20

    .line 3557
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3558
    .local v10, firstChildTop:I
    add-int/lit8 v26, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getBottom()I

    move-result v17

    .line 3559
    .local v17, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 3560
    .local v8, contentTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    .line 3561
    .local v7, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    if-nez v26, :cond_1a

    if-lt v10, v8, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v26

    sub-int v26, v26, v7

    move/from16 v0, v17

    move/from16 v1, v26

    if-gt v0, v1, :cond_1a

    .line 3564
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3565
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3567
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    .line 3568
    .local v23, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v26, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v15, v0

    .line 3576
    .local v15, initialVelocity:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    if-nez v26, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    move/from16 v26, v0

    sub-int v26, v8, v26

    move/from16 v0, v26

    if-eq v10, v0, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    move/from16 v26, v0

    add-int v26, v26, v7

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    .line 3581
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_1d

    .line 3582
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3584
    :cond_1d
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    neg-int v0, v15

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 3588
    :cond_1e
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3589
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3593
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 3599
    .end local v7           #contentBottom:I
    .end local v8           #contentTop:I
    .end local v10           #firstChildTop:I
    .end local v15           #initialVelocity:I
    .end local v17           #lastChildBottom:I
    .end local v23           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_20
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3600
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3605
    .end local v6           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_21

    .line 3606
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3608
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    .line 3609
    .restart local v23       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v26, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v15, v0

    .line 3612
    .restart local v15       #initialVelocity:I
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3613
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 3614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    neg-int v0, v15

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 3616
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 3656
    .end local v15           #initialVelocity:I
    .end local v23           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_4

    .line 3669
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3670
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 3672
    .local v19, motionView:Landroid/view/View;
    if-eqz v19, :cond_23

    .line 3673
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3675
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3678
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_24

    .line 3679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3682
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3685
    .end local v11           #handler:Landroid/os/Handler;
    .end local v19           #motionView:Landroid/view/View;
    :goto_8
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 3686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3689
    :cond_25
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3693
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto/16 :goto_1

    .line 3658
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_26

    .line 3659
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3661
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_8

    .line 3700
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v24, v0

    .line 3702
    .local v24, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v25, v0

    .line 3703
    .restart local v25       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3704
    .restart local v18       #motionPosition:I
    if-ltz v18, :cond_27

    .line 3706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3707
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3708
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3710
    .end local v22           #v:Landroid/view/View;
    :cond_27
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3716
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 3717
    .local v14, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 3718
    .local v12, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3719
    .restart local v24       #x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3720
    .restart local v25       #y:I
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3721
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3722
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3723
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3724
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3725
    .restart local v18       #motionPosition:I
    if-ltz v18, :cond_28

    .line 3727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3728
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3729
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3731
    .end local v22           #v:Landroid/view/View;
    :cond_28
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3391
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3464
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3481
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3656
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 3325
    if-eqz p1, :cond_2

    .line 3327
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 3331
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3334
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 3336
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 3355
    :cond_1
    :goto_0
    return-void

    .line 3338
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3339
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3340
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3341
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3343
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3344
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 3347
    :cond_5
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3348
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3349
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentCaches()V

    .line 3350
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->finishGlows()V

    .line 3351
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2711
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 2713
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2715
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 2716
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2717
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2718
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2721
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 2722
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2723
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 2725
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2726
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2727
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentCaches()V

    .line 2728
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->finishGlows()V

    .line 2729
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2733
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2735
    if-ne v0, v2, :cond_2

    .line 2737
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2761
    :cond_2
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 2762
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2713
    goto :goto_0

    .line 2740
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2742
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 2746
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2748
    if-ne v0, v2, :cond_6

    .line 2750
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2754
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2755
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2756
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1123
    const/4 v7, 0x0

    .line 1124
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1126
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1127
    const/4 v7, 0x1

    .line 1129
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1132
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1133
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    if-eqz v5, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1140
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1141
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1145
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1148
    const/4 v6, 0x0

    .line 1165
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1166
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 1167
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1170
    :cond_3
    if-eqz v6, :cond_4

    .line 1171
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1174
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1131
    goto :goto_0

    .line 1137
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1143
    :cond_7
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1150
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1152
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1153
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1154
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1155
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1156
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1157
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1159
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1151
    goto :goto_4

    .line 1160
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1161
    :cond_c
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2888
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2889
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p0, p2, v6}, Lcom/htc/widget/HtcAbsListView;->setItemChecked(IZ)V

    .line 2892
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    .line 2909
    :cond_0
    :goto_0
    return v6

    .line 2897
    :cond_1
    const/4 v6, 0x0

    .line 2898
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 2899
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2902
    :cond_2
    if-nez v6, :cond_3

    .line 2903
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2904
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2906
    :cond_3
    if-eqz v6, :cond_0

    .line 2907
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3020
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3021
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3022
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3023
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3026
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 3027
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3028
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3029
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3030
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3031
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3032
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3036
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3027
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3036
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
    .line 3053
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v0

    .line 3054
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3055
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3057
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2279
    if-eq p1, v6, :cond_0

    .line 2280
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 2283
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2284
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2285
    instance-of v2, p2, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2286
    check-cast v2, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2288
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(IIII)V

    .line 2291
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2292
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2293
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2294
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2295
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->refreshDrawableState()V

    .line 2298
    :cond_2
    return-void

    .line 2293
    :cond_3
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
    .line 6014
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 6015
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3500(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    move-result-object v3

    .line 6018
    .local v3, listener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6019
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6020
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 6022
    .local v4, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6023
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6024
    if-eqz v3, :cond_0

    .line 6026
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6018
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6030
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6031
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 6032
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 5143
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 5144
    .local v0, position:I
    if-gez v0, :cond_0

    .line 5145
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5147
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5148
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5149
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 8
    .parameter "newState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x5

    const/4 v5, 0x1

    .line 4010
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    if-eq p1, v2, :cond_3

    .line 4012
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    if-ne v2, v5, :cond_1

    .line 4013
    const/4 v0, 0x0

    .line 4014
    .local v0, activity:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 4015
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4017
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4036
    .end local v0           #activity:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_2

    .line 4037
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 4039
    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 4041
    packed-switch p1, :pswitch_data_1

    .line 4058
    :cond_3
    :goto_1
    return-void

    .line 4019
    .restart local v0       #activity:Ljava/lang/String;
    :pswitch_0
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_IDLE, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    sput-boolean v7, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4024
    :pswitch_1
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_TOUCH_SCROLL, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4029
    :pswitch_2
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_FLING, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4043
    .end local v0           #activity:Ljava/lang/String;
    :pswitch_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4044
    iput-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_1

    .line 4049
    :pswitch_4
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 4050
    .local v1, pri:I
    if-eq v1, v6, :cond_3

    .line 4051
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    .line 4052
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4053
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_1

    .line 4017
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4041
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 3863
    if-eqz p1, :cond_0

    .line 3864
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3866
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3867
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1884
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1885
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1887
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 1573
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1574
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1576
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1893
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 1894
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1896
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1897
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1898
    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1899
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 1900
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1901
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1902
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1903
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 1904
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1905
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1906
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5211
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 5213
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 5214
    const/16 v17, 0x0

    .line 5309
    :goto_0
    return v17

    .line 5217
    :cond_0
    const/4 v13, 0x0

    .line 5219
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5220
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5221
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5222
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5223
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 5225
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5226
    move v12, v14

    .line 5228
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5229
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5230
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5233
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 5234
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5290
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 5295
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 5296
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 5297
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 5298
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5299
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5300
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5301
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 5302
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->setSelectionInt(I)V

    .line 5303
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 5307
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5309
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5235
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5236
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 5240
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5242
    move v12, v7

    .line 5243
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5244
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5245
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5247
    .local v15, top:I
    if-nez v8, :cond_6

    .line 5249
    move v13, v15

    .line 5251
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5254
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5257
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5259
    add-int v12, v7, v8

    .line 5260
    move v13, v15

    .line 5261
    goto/16 :goto_1

    .line 5243
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5265
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 5266
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 5267
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5269
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 5270
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5271
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5272
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5274
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5275
    move v13, v15

    .line 5276
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5277
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5281
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5282
    add-int v12, v7, v8

    .line 5283
    move v13, v15

    .line 5284
    goto/16 :goto_1

    .line 5269
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5305
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 5309
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 5191
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5192
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 5193
    const/4 v0, 0x1

    .line 5195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToFirstAddedPosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, 0x1

    .line 6935
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 6936
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 6937
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1431
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1432
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1433
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1434
    .local v1, lastVisiblePosition:I
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1443
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1438
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1439
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1442
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5626
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 5687
    :cond_0
    :goto_0
    return v2

    .line 5630
    :cond_1
    const/4 v2, 0x0

    .line 5631
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 5632
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 5664
    :goto_1
    if-eqz v3, :cond_0

    .line 5665
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5667
    move-object v1, p3

    .line 5668
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 5669
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5672
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5673
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5675
    :pswitch_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5676
    goto :goto_0

    .line 5639
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 5640
    goto :goto_1

    .line 5642
    :sswitch_1
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5643
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 5645
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 5646
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 5647
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5649
    :cond_3
    const/4 v2, 0x1

    .line 5656
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 5657
    goto :goto_1

    .line 5650
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 5652
    const/4 v2, 0x1

    .line 5653
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5660
    :sswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_1

    .line 5679
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5680
    goto :goto_0

    .line 5683
    :pswitch_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5632
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

    .line 5673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 920
    if-eqz p1, :cond_0

    .line 921
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 934
    :cond_2
    return-void
.end method

.method public setAddAnimationListener(Lcom/htc/widget/HtcAbsListView$AddAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6944
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    .line 6945
    return-void
.end method

.method public setAddPositionsList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6840
    .local p1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 6777
    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6755
    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6745
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 6924
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 5977
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 5978
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    .line 5979
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 5980
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5981
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5983
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 5985
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1200
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 1201
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1205
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1210
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1213
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1214
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 1215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 1218
    :cond_3
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6851
    .local p1, d:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setDeleteAnimationListener(Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6952
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    .line 6953
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 2448
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2449
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1291
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->setAlwaysShow(Z)V

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->computeOpaqueFlags()V

    .line 1300
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->recomputePadding()V

    .line 1301
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1262
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1263
    if-eqz p1, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1822
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1823
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 1826
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1828
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1830
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1831
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1832
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1836
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 1837
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1840
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2094
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2096
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2101
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2102
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 2106
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4720
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 4722
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    #getter for: Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->access$1000(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4723
    return-void
.end method

.method setHtcScrollEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 4062
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 4063
    return-void
.end method

.method public setIntroAnimationListener(Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6879
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    .line 6880
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1055
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1064
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1066
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1067
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1068
    if-eqz p2, :cond_7

    .line 1069
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1074
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1075
    if-eqz p2, :cond_8

    .line 1076
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1081
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1082
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1083
    .local v3, id:J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1110
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1111
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1112
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 1113
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    goto :goto_0

    .line 1071
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1078
    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1087
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 1090
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1091
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1092
    if-eqz v7, :cond_b

    .line 1093
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1098
    :cond_b
    if-eqz p2, :cond_e

    .line 1099
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1100
    if-eqz v7, :cond_c

    .line 1101
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1103
    :cond_c
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 1087
    goto :goto_4

    .line 1104
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1105
    :cond_f
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1235
    new-instance v0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V

    .line 1238
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1406
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 1407
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 3836
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    .line 3837
    iput p2, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    .line 3838
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 898
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 901
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 902
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 908
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->setOverScrollMode(I)V

    .line 909
    return-void

    .line 905
    :cond_1
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 906
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 6188
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3502(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    .line 6189
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 6122
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    .line 2540
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    .line 2541
    return-void
.end method

.method public setScrollToAddedPositionListener(Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6899
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    .line 6900
    return-void
.end method

.method public setScrollToCorrectPosListener(Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6920
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    .line 6921
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1478
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 1480
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    .line 1481
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 2459
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2460
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 2463
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2464
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2465
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2467
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2468
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2469
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2470
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 2471
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 2472
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 2473
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 2474
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2475
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 2476
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1380
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1381
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1564
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1565
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    .line 1566
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayoutIfNecessary()V

    .line 1568
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1494
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    .line 1495
    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 6768
    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6759
    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6741
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 5944
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    .line 5945
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 4736
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 4737
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1346
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1347
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->setScrollbarPosition(I)V

    .line 1350
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 2924
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v3

    .line 2925
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2926
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2927
    .local v1, id:J
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2928
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2929
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2930
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 2933
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2942
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2943
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2944
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2945
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2947
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2951
    :cond_0
    if-nez v6, :cond_1

    .line 2952
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2955
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2960
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method skipScroll()Z
    .locals 1

    .prologue
    .line 6990
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 4822
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 4823
    new-instance v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 4827
    :cond_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 4828
    .local v2, firstPos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 4829
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 4830
    .local v3, lastPos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingTop()I

    move-result v4

    .line 4831
    .local v4, topLimit:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4833
    .local v0, bottomLimit:I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 4837
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 4838
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 4839
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 4845
    :cond_3
    :goto_0
    return-void

    .line 4842
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 4843
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 4851
    const/4 v2, -0x1

    .line 4852
    .local v2, index:I
    if-gez p1, :cond_3

    .line 4853
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4858
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 4859
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4860
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4861
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4862
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4864
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 4865
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 4866
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 4867
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 4868
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 4871
    add-int/lit8 v2, v2, 0x1

    .line 4878
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->smoothScrollToPosition(I)V

    .line 4881
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 4854
    :cond_3
    if-lez p1, :cond_0

    .line 4855
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 4872
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 4875
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 4749
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4750
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4752
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 4753
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 4810
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4811
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4813
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(II)V

    .line 4814
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4791
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4793
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->startWithOffset(II)V

    .line 4794
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4773
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4775
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->startWithOffset(III)V

    .line 4776
    return-void
.end method

.method public startIntroAnimation()V
    .locals 0

    .prologue
    .line 6872
    return-void
.end method

.method protected startScrollListView(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7001
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 7002
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 7003
    .local v1, distance:I
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 7005
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    if-lez v1, :cond_7

    .line 7006
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 7007
    if-eqz v4, :cond_5

    .line 7008
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 7009
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 7014
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 7018
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 7019
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7021
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 7022
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7023
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 7024
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 7026
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 7029
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 7030
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 7031
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7033
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 7037
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 7003
    goto :goto_0

    .line 7011
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 7012
    if-lez v0, :cond_6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 7037
    goto :goto_2
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2415
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2413
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4924
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    .line 4925
    .local v8, childCount:I
    if-nez v8, :cond_0

    .line 4926
    const/16 v29, 0x1

    .line 5090
    :goto_0
    return v29

    .line 4929
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4930
    .local v16, firstTop:I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 4932
    .local v22, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 4937
    .local v23, listPadding:Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 4938
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 4939
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 4940
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 4941
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 4945
    :cond_1
    sub-int v25, v13, v16

    .line 4946
    .local v25, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 4947
    .local v14, end:I
    sub-int v26, v22, v14

    .line 4949
    .local v26, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 4950
    .local v19, height:I
    if-gez p1, :cond_3

    .line 4951
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4956
    :goto_1
    if-gez p2, :cond_4

    .line 4957
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4962
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 4965
    .local v15, firstPosition:I
    if-nez v15, :cond_5

    .line 4966
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    .line 4970
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 4971
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    .line 4976
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 4978
    .local v5, cannotScrollDown:Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 4981
    .local v6, cannotScrollUp:Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 4982
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4953
    .end local v5           #cannotScrollDown:Z
    .end local v6           #cannotScrollUp:Z
    .end local v15           #firstPosition:I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 4959
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 4968
    .restart local v15       #firstPosition:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 4973
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 4976
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 4978
    .restart local v5       #cannotScrollDown:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 4982
    .restart local v6       #cannotScrollUp:Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4985
    :cond_a
    if-gez p2, :cond_13

    const/4 v11, 0x1

    .line 4987
    .local v11, down:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v21

    .line 4988
    .local v21, inTouchMode:Z
    if-eqz v21, :cond_b

    .line 4989
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 4992
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 4993
    .local v18, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 4995
    .local v17, footerViewsStart:I
    const/16 v27, 0x0

    .line 4996
    .local v27, start:I
    const/4 v10, 0x0

    .line 4998
    .local v10, count:I
    if-eqz v11, :cond_16

    .line 5000
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 5001
    .local v28, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 5002
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 5004
    :cond_c
    const/16 v20, 0x0

    .local v20, i:I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 5005
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5006
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_14

    .line 5051
    .end local v7           #child:Landroid/view/View;
    .end local v28           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    .line 5053
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 5055
    if-lez v10, :cond_e

    .line 5056
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcAbsListView;->detachViewsFromParent(II)V

    .line 5058
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5060
    if-eqz v11, :cond_f

    .line 5061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5064
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 5066
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5067
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v25

    if-lt v0, v3, :cond_10

    move/from16 v0, v26

    if-ge v0, v3, :cond_11

    .line 5068
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAbsListView;->fillGap(Z)V

    .line 5071
    :cond_11
    if-nez v21, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_19

    .line 5072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5073
    .local v9, childIndex:I
    if-ltz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_12

    .line 5074
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5085
    .end local v9           #childIndex:I
    :cond_12
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 5087
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 5088
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 5090
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4985
    .end local v3           #absIncrementalDeltaY:I
    .end local v10           #count:I
    .end local v11           #down:Z
    .end local v17           #footerViewsStart:I
    .end local v18           #headerViewsCount:I
    .end local v20           #i:I
    .end local v21           #inTouchMode:Z
    .end local v27           #start:I
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 5009
    .restart local v7       #child:Landroid/view/View;
    .restart local v10       #count:I
    .restart local v11       #down:Z
    .restart local v17       #footerViewsStart:I
    .restart local v18       #headerViewsCount:I
    .restart local v20       #i:I
    .restart local v21       #inTouchMode:Z
    .restart local v27       #start:I
    .restart local v28       #top:I
    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 5010
    add-int v24, v15, v20

    .line 5011
    .local v24, position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 5013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5004
    :cond_15
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 5025
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    .end local v24           #position:I
    .end local v28           #top:I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 5026
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 5027
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 5029
    :cond_17
    add-int/lit8 v20, v8, -0x1

    .restart local v20       #i:I
    :goto_a
    if-ltz v20, :cond_d

    .line 5030
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5031
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 5034
    move/from16 v27, v20

    .line 5035
    add-int/lit8 v10, v10, 0x1

    .line 5036
    add-int v24, v15, v20

    .line 5037
    .restart local v24       #position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_18

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    .line 5039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5029
    :cond_18
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 5076
    .end local v4           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v24           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a

    .line 5077
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5078
    .restart local v9       #childIndex:I
    if-ltz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_12

    .line 5079
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 5082
    .end local v9           #childIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2120
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2123
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2126
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2128
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2129
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2133
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2138
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 2141
    .local v3, count:I
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2144
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2145
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2146
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2149
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2151
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2123
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2129
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2133
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2141
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2146
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2149
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2545
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2546
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2548
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
