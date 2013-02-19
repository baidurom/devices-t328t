.class public Lcom/htc/widget/DropDownList;
.super Landroid/widget/FrameLayout;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;,
        Lcom/htc/widget/DropDownList$DropDownExpandableListView;,
        Lcom/htc/widget/DropDownList$PopupDataSetObserver;,
        Lcom/htc/widget/DropDownList$PassThroughClickListener;,
        Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;,
        Lcom/htc/widget/DropDownList$DropDownListView;,
        Lcom/htc/widget/DropDownList$DropDownItemClickListener;,
        Lcom/htc/widget/DropDownList$PopupTouchInterceptor;,
        Lcom/htc/widget/DropDownList$OnDropDownListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ADDED_LISTITEM_WIDTH:I = 0x1c

.field private static final ANIMATION_DURATION_DOWN:I = 0x64

.field private static final ANIMATION_DURATION_UP:I = 0x64

.field static final DEBUG:Z = false

.field public static final EXPANDABLELIST:I = 0x2

.field public static final LIST:I = 0x1

.field public static final NOT_TWOLEVEL:Ljava/lang/String; = "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

.field static final TAG:Ljava/lang/String; = "DropDownList"

.field static mhasDropDownShown:Z


# instance fields
.field private final DEFAULT_SHADOW_OFFSET:I

.field isRoundedCornerEnabled:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field mArrowHorizontalOffset:I

.field private mArrowView:Landroid/widget/ImageView;

.field mBackgroundChange:Z

.field mBackgroundMode:I

.field private mBottomCornerRound:Z

.field mCenterX:I

.field mCenterY:I

.field mChildHasFocus:Z

.field mClickedDropDownItemId:J

.field mClickedDropDownItemParent:Lcom/htc/widget/HtcAdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field mClickedDropDownItemPosition:I

.field mClickedDropDownItemView:Landroid/view/View;

.field private mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mData:Ljava/lang/Object;

.field mDownAnimating:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

.field private mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownMaxHeight:I

.field private mDropDownMaxWidth:I

.field private mDropDownMinWidth:I

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mEnableSelectable:Z

.field mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

.field private mExpandableListDivider:Landroid/graphics/drawable/Drawable;

.field private mExpandableObserver:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field mIsAnimating:Z

.field mIsCallShowDropDown:Z

.field mIsContentMultiplyRequired:Z

.field mIsDismissDropDownByDropDown:Z

.field mIsDismissDropDownOnItemClick:Z

.field mIsDropDownEnabled:Z

.field mIsGainFocus:Z

.field mIsGreenOn:Z

.field mIsHighlightAnimationEnd:Z

.field mIsSyncDropDownListShownStatus:Z

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field mLastOtherHeights:I

.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mMaskMode:Landroid/graphics/PorterDuff$Mode;

.field private mMode:I

.field private mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMultiplyFlag:Z

.field private mMultiplyPaint:Landroid/graphics/Paint;

.field private mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

.field mOnClickBeforePopupShownListener:Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;

.field private mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

.field private mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

.field private mPopup:Lcom/htc/widget/PopupBubbleWindow;

.field private final mRelativeRect:Landroid/graphics/Rect;

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowArrow:Z

.field mStayInPress:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopCornerRound:Z

.field mUpAnimating:Z

.field private mUserOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private mUserOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

.field private mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/DropDownList;->mhasDropDownShown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->init(Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 409
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->init(Landroid/content/Context;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput v2, p0, Lcom/htc/widget/DropDownList;->mMode:I

    .line 111
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/DropDownList;->DEFAULT_SHADOW_OFFSET:I

    .line 119
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    .line 121
    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    .line 122
    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    .line 124
    iput v5, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    .line 125
    iput v5, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    .line 126
    iput v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 127
    iput v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    .line 128
    iput v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    .line 141
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 142
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 159
    new-instance v0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 193
    iput-object v3, p0, Lcom/htc/widget/DropDownList;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 194
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 196
    iput-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 197
    iput-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 201
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    .line 218
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mBackgroundChange:Z

    .line 458
    iput v4, p0, Lcom/htc/widget/DropDownList;->mIndicatorLeft:I

    .line 459
    iput v4, p0, Lcom/htc/widget/DropDownList;->mIndicatorRight:I

    .line 486
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mIsGainFocus:Z

    .line 492
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownByDropDown:Z

    .line 493
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mIsCallShowDropDown:Z

    .line 513
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mIsSyncDropDownListShownStatus:Z

    .line 1461
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mChildHasFocus:Z

    .line 1778
    iput v1, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    .line 1857
    iput v1, p0, Lcom/htc/widget/DropDownList;->mLastOtherHeights:I

    .line 2060
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->isRoundedCornerEnabled:Z

    .line 2178
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownOnItemClick:Z

    .line 2187
    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mIsHighlightAnimationEnd:Z

    .line 2192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mHandler:Landroid/os/Handler;

    .line 2193
    new-instance v0, Lcom/htc/widget/DropDownList$6;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$6;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mRunnable:Ljava/lang/Runnable;

    .line 2491
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mIsDropDownEnabled:Z

    .line 2999
    iput-object v3, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    .line 3001
    new-instance v0, Lcom/htc/widget/DropDownList$7;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$7;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    .line 3023
    iput-object v3, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    .line 3025
    new-instance v0, Lcom/htc/widget/DropDownList$8;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$8;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    .line 415
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->init(Landroid/content/Context;)V

    .line 417
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    .line 418
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 419
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 454
    new-instance v0, Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$PassThroughClickListener;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    .line 455
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/DropDownList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/DropDownList;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/DropDownList;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->onClickImpl(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/widget/DropDownList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/DropDownList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/DropDownList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/widget/DropDownList;->mIndicatorLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/DropDownList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/widget/DropDownList;->mIndicatorRight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$OnDropDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DropDownList;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/DropDownList;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 1866
    const/4 v10, 0x0

    .line 1868
    .local v10, otherHeights:I
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-nez v0, :cond_1

    .line 1869
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1871
    .local v6, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-direct {v0, p0, v6}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;-><init>(Lcom/htc/widget/DropDownList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    .line 1872
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->setupDropDownList()V

    .line 1874
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    .line 1909
    .local v7, dropDownView:Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1987
    .end local v6           #context:Landroid/content/Context;
    .end local v7           #dropDownView:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v5, :cond_2

    const/4 v8, 0x1

    .line 1989
    .local v8, ignoreBottomDecorations:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v2

    iget v12, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v2, v12, v8}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 1994
    .local v4, maxHeight:I
    const/4 v11, 0x0

    .line 2005
    .local v11, padding:I
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v0, v3, :cond_3

    .line 2006
    add-int v0, v4, v11

    .line 2023
    :goto_2
    return v0

    .line 1910
    .end local v4           #maxHeight:I
    .end local v8           #ignoreBottomDecorations:Z
    .end local v11           #padding:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-nez v0, :cond_0

    .line 1911
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1931
    .restart local v6       #context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-direct {v0, v6}, Lcom/htc/widget/DropDownList$DropDownListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1932
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->setupDropDownList()V

    .line 1935
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1971
    .restart local v7       #dropDownView:Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .end local v6           #context:Landroid/content/Context;
    .end local v7           #dropDownView:Landroid/view/ViewGroup;
    :cond_2
    move v8, v1

    .line 1987
    goto :goto_1

    .line 2013
    .restart local v4       #maxHeight:I
    .restart local v8       #ignoreBottomDecorations:Z
    .restart local v11       #padding:I
    :cond_3
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_5

    .line 2014
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v9

    .line 2022
    .local v9, listContent:I
    :goto_3
    if-lez v9, :cond_4

    add-int/2addr v9, v11

    .line 2023
    :cond_4
    add-int v0, v9, v10

    goto :goto_2

    .line 2016
    .end local v9           #listContent:I
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v9

    .restart local v9       #listContent:I
    goto :goto_3
.end method

.method private cancelEvent()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 173
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsGreenOn:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lcom/htc/widget/DropDownList;->setScale(F)V

    .line 175
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/DropDownList;->setScale(F)V

    .line 178
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->initMultiplyAnimation()V

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    const v1, -0x420099

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 238
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    iput-boolean v3, p0, Lcom/htc/widget/DropDownList;->mStayInPress:Z

    .line 240
    iput-boolean v3, p0, Lcom/htc/widget/DropDownList;->mIsGreenOn:Z

    .line 241
    iput-boolean v3, p0, Lcom/htc/widget/DropDownList;->mDownAnimating:Z

    .line 242
    iput-boolean v3, p0, Lcom/htc/widget/DropDownList;->mUpAnimating:Z

    .line 243
    return-void
.end method

.method private initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 1089
    if-nez p1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    if-nez p3, :cond_0

    .line 1092
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/DropDownList;->addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private initMultiplyAnimation()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, downScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 250
    .local v1, upScaleAnimator:Landroid/animation/ObjectAnimator;
    const-string v2, "scale"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    const-string v2, "scale"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 255
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 271
    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 273
    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/DropDownList$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/DropDownList$1;-><init>(Lcom/htc/widget/DropDownList;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 290
    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 292
    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/DropDownList$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/DropDownList$2;-><init>(Lcom/htc/widget/DropDownList;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    return-void

    .line 250
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 254
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private measureDropDownWidth()I
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2027
    const/4 v7, 0x0

    .line 2030
    .local v7, dropDownWidth:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v5, :cond_1

    const/4 v8, 0x1

    .line 2032
    .local v8, ignoreBottomDecorations:Z
    :goto_0
    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    .line 2036
    .local v4, maxWidth:I
    const/4 v9, 0x0

    .line 2037
    .local v9, padding:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2038
    .local v6, background:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2040
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v0, v2

    .line 2043
    :cond_0
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    .line 2044
    add-int v0, v4, v9

    .line 2057
    :goto_1
    return v0

    .end local v4           #maxWidth:I
    .end local v6           #background:Landroid/graphics/drawable/Drawable;
    .end local v8           #ignoreBottomDecorations:Z
    .end local v9           #padding:I
    :cond_1
    move v8, v1

    .line 2030
    goto :goto_0

    .line 2049
    .restart local v4       #maxWidth:I
    .restart local v6       #background:Landroid/graphics/drawable/Drawable;
    .restart local v8       #ignoreBottomDecorations:Z
    .restart local v9       #padding:I
    :cond_2
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_5

    .line 2050
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    move v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mockMeasureWidthOfChildren(IIIII)I

    move-result v7

    .line 2054
    :cond_3
    :goto_2
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropDownWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    if-lez v7, :cond_4

    add-int/2addr v7, v9

    :cond_4
    move v0, v7

    .line 2057
    goto :goto_1

    .line 2051
    :cond_5
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureWidthOfChildren(IIIII)I

    move-result v7

    goto :goto_2
.end method

.method private onClickImpl(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    .line 531
    const-class v1, Lcom/htc/widget/DropDownList;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-boolean v0, Lcom/htc/widget/DropDownList;->mhasDropDownShown:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 556
    :goto_0
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsCallShowDropDown:Z

    .line 536
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsGainFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 538
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownByDropDown:Z

    .line 555
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 540
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownByDropDown:Z

    .line 541
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isFocused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 542
    const-string v0, "DropDownList"

    const-string v2, "onClickImpl DropDownList does not have focus, request for focus!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsGainFocus:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->requestFocus()Z

    .line 545
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 546
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsSyncDropDownListShownStatus:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/DropDownList;->mhasDropDownShown:Z

    .line 547
    :cond_5
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_6

    .line 548
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_1

    .line 549
    :cond_6
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_7

    .line 550
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_1

    .line 551
    :cond_7
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private performItemClick(Landroid/view/View;IJ)V
    .locals 6
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 1397
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1398
    .local v1, list:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1399
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 1400
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 1401
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 1406
    .end local v1           #list:Lcom/htc/widget/DropDownList$DropDownListView;
    :cond_2
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1411
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public addDropListHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;)V

    .line 1113
    :cond_0
    return-void
.end method

.method public addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    .line 1071
    iput-object p2, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    .line 1072
    iput-boolean p3, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    .line 1073
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1076
    :cond_0
    return-void
.end method

.method public clearExpandableListSelection()V
    .locals 2

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    .line 2947
    .local v0, exlist:Lcom/htc/widget/DropDownList$DropDownExpandableListView;
    if-eqz v0, :cond_0

    .line 2949
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->access$1802(Lcom/htc/widget/DropDownList$DropDownExpandableListView;Z)Z

    .line 2951
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->requestLayout()V

    .line 2953
    :cond_0
    return-void
.end method

.method public clearListSelection()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1348
    .local v0, list:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v0, :cond_0

    .line 1350
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 1352
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->requestLayout()V

    .line 1354
    :cond_0
    return-void
.end method

.method public dismissDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownByDropDown:Z

    .line 1594
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 1596
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1599
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1603
    :cond_0
    iput-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1606
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1607
    const/4 v0, 0x0

    .line 1608
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1610
    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_1
    iput-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    .line 1612
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    const v1, -0x420099

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 378
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 380
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 381
    .local v7, sc:I
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 382
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 384
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 389
    .end local v7           #sc:I
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownMaximumHeight()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    return v0
.end method

.method public getDropDownMaximumWidth()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    return v0
.end method

.method public getDropDownMinimumWidth()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    return v0
.end method

.method public getIsCallShowDropDown()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsCallShowDropDown:Z

    return v0
.end method

.method public getIsTouchOutsideDismiss()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownByDropDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 1391
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    return v0
.end method

.method public getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickListener()Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPopupWindow()Lcom/htc/widget/PopupBubbleWindow;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1458
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1459
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 1432
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDisplayHint(I)V

    .line 1433
    packed-switch p1, :pswitch_data_0

    .line 1438
    :goto_0
    return-void

    .line 1435
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 1433
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mDownAnimating:Z

    .line 327
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mDownAnimating:Z

    .line 323
    return-void
.end method

.method onDownAnimationStart()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    .line 311
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mDownAnimating:Z

    .line 314
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsGreenOn:Z

    .line 316
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    .line 319
    :cond_0
    return-void

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1446
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1447
    if-nez p1, :cond_0

    .line 1448
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1450
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1175
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1189
    :goto_0
    return v0

    .line 1181
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1182
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1183
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1184
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 1189
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/DropDownList$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1201
    .local v0, consumed:Z
    if-nez v0, :cond_0

    .line 1202
    sparse-switch p1, :sswitch_data_0

    .line 1213
    .end local v0           #consumed:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1208
    .restart local v0       #consumed:Z
    :sswitch_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    .line 1209
    const/4 v1, 0x1

    goto :goto_0

    .line 1202
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1478
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 1550
    :goto_0
    return v3

    .line 1480
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1550
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 1482
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1484
    iput-boolean v5, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 1485
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 1487
    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    if-eqz v3, :cond_2

    .line 1488
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1489
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1491
    :cond_2
    iput-boolean v5, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 1492
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    goto :goto_1

    .line 1497
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1499
    iput-boolean v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 1500
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 1502
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1503
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 1508
    :pswitch_2
    iput-boolean v5, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 1509
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 1511
    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mStayInPress:Z

    if-nez v3, :cond_3

    .line 1512
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1513
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1514
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 1516
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    if-eqz v3, :cond_4

    .line 1517
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->cancelEvent()V

    .line 1519
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1520
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    .line 1524
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1525
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1528
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 1529
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_5

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_1

    .line 1532
    :cond_5
    iput-boolean v5, p0, Lcom/htc/widget/DropDownList;->mMultiplyFlag:Z

    .line 1533
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 1535
    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mStayInPress:Z

    if-nez v3, :cond_6

    .line 1536
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1537
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1538
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_1

    .line 1540
    :cond_6
    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    if-eqz v3, :cond_7

    .line 1541
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->cancelEvent()V

    .line 1543
    :cond_7
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1544
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_1

    .line 1480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    .line 341
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mUpAnimating:Z

    .line 343
    return-void
.end method

.method onUpAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsAnimating:Z

    .line 335
    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mUpAnimating:Z

    .line 337
    return-void
.end method

.method onUpAnimationStart()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mUpAnimating:Z

    .line 331
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1420
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1421
    if-nez p1, :cond_0

    .line 1424
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    if-nez v0, :cond_3

    .line 1040
    new-instance v0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$PopupDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    .line 1044
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    .line 1045
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1053
    :cond_2
    return-void

    .line 1041
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setArrowEnable(Z)V
    .locals 0
    .parameter "arrow"

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    .line 1627
    return-void
.end method

.method public setArrowHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1784
    iput p1, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    .line 1785
    return-void
.end method

.method setArrowLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1788
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    .line 1789
    const/4 v9, 0x2

    new-array v3, v9, [I

    .line 1790
    .local v3, frameLoc:[I
    invoke-virtual {p0, v3}, Lcom/htc/widget/DropDownList;->getLocationInWindow([I)V

    .line 1792
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1793
    .local v1, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/htc/widget/DropDownList;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1794
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1795
    .local v2, displayWidth:I
    const-string v9, "DropDownList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "icon location in window = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " window visible display frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    aget v10, v3, v12

    add-int/2addr v9, v10

    add-int/lit8 v4, v9, 0x8

    .line 1798
    .local v4, offset:I
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/PopupBubbleWindow;->getWidth()I

    move-result v6

    .line 1799
    .local v6, popupWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1800
    .local v0, anchorViewWidth:I
    div-int/lit8 v9, v6, 0x2

    div-int/lit8 v10, v0, 0x2

    sub-int v5, v9, v10

    .line 1801
    .local v5, paddingLeft:I
    aget v9, v3, v12

    div-int/lit8 v10, v0, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    add-int v7, v9, v10

    .line 1808
    .local v7, popupWindowLeft:I
    aget v9, v3, v12

    div-int/lit8 v10, v0, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    add-int v8, v9, v6

    .line 1814
    .local v8, popupWindowRight:I
    if-le v6, v2, :cond_2

    .line 1816
    const-string v9, "DropDownList"

    const-string v10, "popupWidth > displayWidth"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    aget v9, v3, v12

    add-int/lit8 v5, v9, -0x8

    .line 1852
    :cond_0
    :goto_0
    const-string v9, "DropDownList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "locX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " offset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v9, v5, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1855
    .end local v0           #anchorViewWidth:I
    .end local v1           #displayFrame:Landroid/graphics/Rect;
    .end local v2           #displayWidth:I
    .end local v3           #frameLoc:[I
    .end local v4           #offset:I
    .end local v5           #paddingLeft:I
    .end local v6           #popupWidth:I
    .end local v7           #popupWindowLeft:I
    .end local v8           #popupWindowRight:I
    :cond_1
    return-void

    .line 1819
    .restart local v0       #anchorViewWidth:I
    .restart local v1       #displayFrame:Landroid/graphics/Rect;
    .restart local v2       #displayWidth:I
    .restart local v3       #frameLoc:[I
    .restart local v4       #offset:I
    .restart local v5       #paddingLeft:I
    .restart local v6       #popupWidth:I
    .restart local v7       #popupWindowLeft:I
    .restart local v8       #popupWindowRight:I
    :cond_2
    if-gtz v7, :cond_3

    .line 1820
    const-string v9, "DropDownList"

    const-string v10, "popupWindowLeft <= 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget v5, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    goto :goto_0

    .line 1822
    :cond_3
    if-le v8, v2, :cond_4

    .line 1823
    sub-int v7, v2, v6

    .line 1824
    const-string v9, "DropDownList"

    const-string v10, "popupWindowRight > displayWidth"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    aget v9, v3, v12

    sub-int/2addr v9, v7

    iget v10, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    add-int v5, v9, v10

    goto :goto_0

    .line 1826
    :cond_4
    add-int v9, v6, v4

    if-le v9, v2, :cond_5

    .line 1828
    const-string v9, "DropDownList"

    const-string v10, "popupWidth + offset > displayWidth"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    aget v9, v3, v12

    sub-int v9, v2, v9

    .line 1832
    goto :goto_0

    :cond_5
    if-gez v4, :cond_6

    aget v9, v3, v12

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    if-le v6, v9, :cond_6

    .line 1834
    const-string v9, "DropDownList"

    const-string v10, "offset < 0 && popupWidth > frameLoc[0] + getWidth()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    aget v9, v3, v12

    add-int/lit8 v5, v9, -0x8

    goto :goto_0

    .line 1836
    :cond_6
    if-lez v4, :cond_7

    if-lez v4, :cond_9

    add-int v9, v4, v6

    aget v10, v3, v12

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_9

    .line 1838
    :cond_7
    if-gtz v4, :cond_8

    .line 1839
    const-string v9, "DropDownList"

    const-string v10, "offset <= 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :goto_1
    iget v5, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    goto/16 :goto_0

    .line 1841
    :cond_8
    const-string v9, "DropDownList"

    const-string v10, "(offset > 0 && offset + popupWidth < frameLoc[0] + getWidth())"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1848
    :cond_9
    if-lez v4, :cond_0

    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    if-gez v9, :cond_0

    .line 1849
    const-string v9, "DropDownList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset > 0 && mDropDownHorizontalOffset="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    neg-int v9, v9

    iget v10, p0, Lcom/htc/widget/DropDownList;->mArrowHorizontalOffset:I

    add-int v5, v9, v10

    goto/16 :goto_0
.end method

.method public setDropDownAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    .line 738
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    .line 842
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    return-void
.end method

.method setDropDownEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2493
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mIsDropDownEnabled:Z

    .line 2494
    return-void
.end method

.method setDropDownExpandableHighlight(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "dr"

    .prologue
    .line 2927
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2931
    return-void

    .line 2930
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDropDownExpandableIndicatorBound(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 465
    iput p1, p0, Lcom/htc/widget/DropDownList;->mIndicatorLeft:I

    .line 466
    iput p2, p0, Lcom/htc/widget/DropDownList;->mIndicatorRight:I

    .line 467
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 619
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    .line 620
    return-void
.end method

.method public setDropDownHighlight(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "dr"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 866
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 869
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 809
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    .line 810
    return-void
.end method

.method public setDropDownMaximumHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 649
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 650
    return-void
.end method

.method public setDropDownMaximumWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 679
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    .line 680
    return-void
.end method

.method public setDropDownMinimumWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 709
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    .line 710
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 787
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    .line 788
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 587
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    .line 588
    return-void
.end method

.method public setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 2906
    .local p1, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableObserver:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    if-nez v0, :cond_4

    .line 2911
    new-instance v0, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableObserver:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    .line 2915
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    .line 2916
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_2

    .line 2918
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mExpandableObserver:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2920
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_3

    .line 2921
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2923
    :cond_3
    return-void

    .line 2912
    :cond_4
    if-eqz p1, :cond_1

    .line 2913
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mExpandableObserver:Lcom/htc/widget/DropDownList$PopupExpandableDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method setExpandableListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 2934
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_0

    .line 2935
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mExpandableListDivider:Landroid/graphics/drawable/Drawable;

    .line 2936
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2939
    return-void

    .line 2938
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpandableListSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->access$1802(Lcom/htc/widget/DropDownList$DropDownExpandableListView;Z)Z

    .line 2962
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setSelection(I)V

    .line 2965
    return-void

    .line 2964
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDismissDropDownOnItemClick(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2184
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mIsDismissDropDownOnItemClick:Z

    .line 2185
    return-void
.end method

.method public setIsGainFocusAndPerformClick(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1468
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mChildHasFocus:Z

    .line 1469
    return-void
.end method

.method setIsGainFocusOnClick(Z)V
    .locals 0
    .parameter "isGainFocus"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mIsGainFocus:Z

    .line 490
    return-void
.end method

.method public setListCornerRoundedEnabled(Z)V
    .locals 0
    .parameter "roundCorner"

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 1138
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 1139
    return-void
.end method

.method public setListCornerRoundedEnabled(ZZ)V
    .locals 0
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 1122
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 1123
    iput-boolean p2, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 1124
    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1162
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    .line 1163
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public setListSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 1368
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    .line 1371
    :cond_0
    return-void
.end method

.method setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 470
    iput p1, p0, Lcom/htc/widget/DropDownList;->mMode:I

    .line 471
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 2975
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2976
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mUserOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 2977
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mUserOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 2981
    :cond_0
    return-void

    .line 2980
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickBeforePopupShownListener(Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mOnClickBeforePopupShownListener:Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;

    .line 2502
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    #setter for: Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/htc/widget/DropDownList$PassThroughClickListener;->access$102(Lcom/htc/widget/DropDownList$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 484
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 928
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 930
    return-void
.end method

.method public setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V
    .locals 2
    .parameter "onDropDownListener"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    .line 994
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_0

    .line 997
    new-instance v0, Lcom/htc/widget/DropDownList$4;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$4;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 1004
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 1006
    :cond_0
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 2991
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2992
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 2993
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 2997
    :cond_0
    return-void

    .line 2996
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 3017
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3018
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    .line 3021
    return-void

    .line 3020
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 3044
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3045
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    .line 3048
    return-void

    .line 3047
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 886
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 921
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 903
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2066
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->isRoundedCornerEnabled:Z

    .line 2067
    return-void
.end method

.method setScale(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/DropDownList;->mCenterX:I

    .line 185
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/DropDownList;->mCenterY:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/htc/widget/DropDownList;->setScaleX(F)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/htc/widget/DropDownList;->setScaleY(F)V

    .line 189
    return-void
.end method

.method setupDropDownList()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2070
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/DropDownList;->initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2072
    const-string v0, "DropDownList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHardwareAccelerated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->isRoundedCornerEnabled:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_5

    .line 2082
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2084
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_6

    .line 2085
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2093
    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_7

    .line 2094
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setBackgroundColor(I)V

    .line 2095
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setCacheColorHint(I)V

    .line 2096
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mExpandableAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2097
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 2098
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mUserOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 2099
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mUserOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 2100
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V

    .line 2101
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V

    .line 2102
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setFocusable(Z)V

    .line 2103
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setFocusableInTouchMode(Z)V

    .line 2106
    iget v0, p0, Lcom/htc/widget/DropDownList;->mIndicatorLeft:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/htc/widget/DropDownList;->mIndicatorRight:I

    if-eq v0, v6, :cond_2

    .line 2107
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    iget v1, p0, Lcom/htc/widget/DropDownList;->mIndicatorLeft:I

    iget v2, p0, Lcom/htc/widget/DropDownList;->mIndicatorRight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setIndicatorBounds(II)V

    .line 2122
    :cond_2
    :goto_2
    iget v0, p0, Lcom/htc/widget/DropDownList;->mMode:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownExpandableList:Lcom/htc/widget/DropDownList$DropDownExpandableListView;

    if-eqz v0, :cond_8

    .line 2143
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 2144
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 2146
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_4

    .line 2147
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2151
    :cond_4
    return-void

    .line 2076
    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->isRoundedCornerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2087
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 2109
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setBackgroundColor(I)V

    .line 2110
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setCacheColorHint(I)V

    .line 2111
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2112
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 2113
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2114
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusable(Z)V

    .line 2115
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusableInTouchMode(Z)V

    goto :goto_2

    .line 2125
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_9

    .line 2126
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    goto :goto_3

    .line 2128
    :cond_9
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v1, Lcom/htc/widget/DropDownList$5;

    invoke-direct {v1, p0}, Lcom/htc/widget/DropDownList$5;-><init>(Lcom/htc/widget/DropDownList;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    goto :goto_3
.end method

.method public showDropDown()V
    .locals 14

    .prologue
    .line 1633
    const-string v0, "DropDownList"

    const-string v1, "showDropDown "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsCallShowDropDown:Z

    .line 1635
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsDropDownEnabled:Z

    if-nez v0, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v10

    .line 1637
    .local v10, height:I
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->measureDropDownWidth()I

    move-result v13

    .line 1639
    .local v13, width:I
    const/4 v4, 0x0

    .line 1640
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 1642
    .local v5, heightSpec:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 1644
    .local v11, noInputMethod:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1645
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1648
    const/4 v4, -0x1

    .line 1665
    :cond_2
    :goto_2
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 1668
    if-eqz v11, :cond_8

    move v5, v10

    .line 1669
    :goto_3
    if-eqz v11, :cond_a

    .line 1670
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    const/4 v0, -0x1

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 1689
    :goto_5
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 1691
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1692
    .local v7, anchorViewWidth:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getWidth()I

    move-result v12

    .line 1693
    .local v12, popupWindowWidth:I
    div-int/lit8 v0, v7, 0x2

    div-int/lit8 v1, v12, 0x2

    sub-int v6, v0, v1

    .line 1695
    .local v6, alignCenterOffset:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    .line 1767
    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->setArrowLocation()V

    goto :goto_0

    .line 1642
    .end local v6           #alignCenterOffset:I
    .end local v7           #anchorViewWidth:I
    .end local v11           #noInputMethod:Z
    .end local v12           #popupWindowWidth:I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 1649
    .restart local v11       #noInputMethod:Z
    :cond_5
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 1657
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    if-le v13, v0, :cond_6

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    if-lez v0, :cond_6

    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    .line 1660
    :goto_7
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    if-ge v13, v0, :cond_2

    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    goto :goto_2

    :cond_6
    move v4, v13

    .line 1657
    goto :goto_7

    .line 1662
    :cond_7
    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    goto :goto_2

    .line 1668
    :cond_8
    const/4 v5, -0x1

    goto :goto_3

    .line 1670
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 1674
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    const/4 v0, -0x1

    :goto_8
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 1679
    :cond_c
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    .line 1680
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v10, v0, :cond_d

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v0, :cond_d

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_9
    goto :goto_5

    :cond_d
    move v5, v10

    goto :goto_9

    .line 1684
    :cond_e
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v0, v1, :cond_f

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v0, :cond_f

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_a
    goto :goto_5

    :cond_f
    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_a

    .line 1699
    :cond_10
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1700
    const/4 v4, -0x1

    .line 1727
    :goto_b
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 1728
    const/4 v5, -0x1

    .line 1744
    :goto_c
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 1745
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1749
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 1750
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1751
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1752
    .restart local v7       #anchorViewWidth:I
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getWidth()I

    move-result v12

    .line 1753
    .restart local v12       #popupWindowWidth:I
    div-int/lit8 v0, v7, 0x2

    div-int/lit8 v1, v12, 0x2

    sub-int v6, v0, v1

    .line 1754
    .restart local v6       #alignCenterOffset:I
    const-string v0, "vincent"

    const-string v1, "test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;)V

    .line 1758
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_11

    .line 1759
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    .line 1762
    :cond_11
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_3

    .line 1763
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    invoke-interface {v0}, Lcom/htc/widget/DropDownList$OnDropDownListener;->onShow()V

    goto/16 :goto_6

    .line 1711
    .end local v6           #alignCenterOffset:I
    .end local v7           #anchorViewWidth:I
    .end local v12           #popupWindowWidth:I
    :cond_12
    const/4 v9, 0x0

    .line 1712
    .local v9, contentWidth:I
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    .line 1713
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    if-le v13, v0, :cond_14

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    if-lez v0, :cond_14

    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxWidth:I

    .line 1716
    :goto_d
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    if-ge v13, v0, :cond_13

    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    .line 1717
    :cond_13
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/DropDownList;->mDropDownMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v9}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto/16 :goto_b

    :cond_14
    move v9, v13

    .line 1713
    goto :goto_d

    .line 1722
    :cond_15
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto/16 :goto_b

    .line 1730
    .end local v9           #contentWidth:I
    :cond_16
    const/4 v8, 0x0

    .line 1731
    .local v8, contentHeight:I
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_18

    .line 1732
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v10, v0, :cond_17

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v0, :cond_17

    iget v8, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 1740
    :goto_e
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 1741
    const-string v0, "DropDownList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " contentH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_17
    move v8, v10

    .line 1732
    goto :goto_e

    .line 1736
    :cond_18
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v0, v1, :cond_19

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v0, :cond_19

    iget v8, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_f
    goto :goto_e

    :cond_19
    iget v8, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_f
.end method

.method public syncDropDownListShownStatus()V
    .locals 2

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DropDownList;->mIsSyncDropDownListShownStatus:Z

    .line 518
    new-instance v0, Lcom/htc/widget/DropDownList$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$3;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 525
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 526
    return-void
.end method
