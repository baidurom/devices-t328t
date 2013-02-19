.class public Lcom/htc/widget/MoreExpandableHtcListView;
.super Lcom/htc/widget/HtcListView;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;,
        Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;,
        Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;
    }
.end annotation


# static fields
.field private static final INACTIVERUNNABLEINDEX:I = 0x7fffffff

.field private static final INCREASE_DURATION:[I = null

.field private static final MAX_CACHE:I = 0x10

.field private static final REDUCE_DURATION:[I = null

.field private static final TAG:Ljava/lang/String; = "MoreExpandableHtcListView"


# instance fields
.field private mActiveRunnableCount:I

.field private mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

.field private mAnimationRunning:Z

.field mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

.field mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

.field mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

.field private mArrowDown:Landroid/graphics/drawable/Drawable;

.field mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

.field mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

.field mCheckForGroupItemReleased:Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;

.field mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

.field private mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

.field mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

.field private mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

.field mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mExpandGroupCompleted:Z

.field private mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

.field mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

.field private mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

.field private mExpandReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedChildrenBackgroundColor:I

.field private mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mFakeDivider:Landroid/graphics/drawable/Drawable;

.field private mFooterView:Landroid/view/View;

.field mGroupPressAnimationEnabled:Z

.field private mGroupPressShadow:Landroid/graphics/drawable/Drawable;

.field private mHideViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstTimeDraw:Z

.field private mIsModified:Z

.field private mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

.field mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mPressedGroupAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mPressedGroupViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

.field private mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowTop:Landroid/graphics/drawable/Drawable;

.field mShouldDrawArrowDown:Z

.field mShouldDrawFakeDivider:Z

.field mShouldReduceChilren:Z

.field private mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

.field private mTargetTopPosition:[I

.field mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    .line 1152
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    return-void

    .line 1151
    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    .line 1152
    :array_1
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 49
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 51
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawArrowDown:Z

    .line 63
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawFakeDivider:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldReduceChilren:Z

    .line 69
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    .line 308
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 486
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 487
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 488
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 489
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 490
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 491
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 492
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 493
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 1132
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    .line 1133
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 1136
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 1139
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 1140
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 1143
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 1144
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 1145
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 1146
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 1147
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2552
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2560
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2593
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2665
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 2782
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    .line 2784
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x4060

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2785
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40a0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 90
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 91
    return-void

    .line 1146
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 49
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 51
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawArrowDown:Z

    .line 63
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawFakeDivider:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldReduceChilren:Z

    .line 69
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    .line 308
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 486
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 487
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 488
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 489
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 490
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 491
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 492
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 493
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 1132
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    .line 1133
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 1136
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 1139
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 1140
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 1143
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 1144
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 1145
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 1146
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 1147
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2552
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2560
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2593
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2665
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 2782
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    .line 2784
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x4060

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2785
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40a0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 95
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 96
    return-void

    .line 1146
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 49
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 51
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawArrowDown:Z

    .line 63
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawFakeDivider:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldReduceChilren:Z

    .line 69
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    .line 308
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 486
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 487
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 488
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 489
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 490
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 491
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 492
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 493
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 1132
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    .line 1133
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 1136
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 1139
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 1140
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 1143
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 1144
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 1145
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 1146
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 1147
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2552
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2560
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2593
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2665
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 2782
    iput-boolean v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    .line 2784
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x4060

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2785
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40a0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 101
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 102
    return-void

    .line 1146
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ResetActiveRunnableCount()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 2615
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2629
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;)Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;JZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/MoreExpandableHtcListView;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/widget/MoreExpandableHtcListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/widget/MoreExpandableHtcListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/widget/MoreExpandableHtcListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    return p1
.end method

.method static synthetic access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V

    return-void
.end method

.method private adjustFooterHeight()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 506
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v5, :cond_0

    .line 534
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 510
    .local v0, lastPosition:I
    if-gez v0, :cond_1

    .line 513
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 514
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 515
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 518
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 519
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 520
    .local v1, lastView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 521
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 531
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 523
    :cond_2
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 524
    .local v2, listlocation:[I
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 525
    .local v3, location:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    .line 526
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 528
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    aget v7, v3, v8

    add-int/2addr v6, v7

    aget v7, v2, v8

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 523
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 524
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkView(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 2453
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2454
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2455
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2456
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2457
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 2459
    .end local v0           #location:[I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2455
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1688
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1693
    :goto_0
    return-void

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method

.method private drawArrowDown(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4
    .parameter "canvas"
    .parameter "item"

    .prologue
    .line 2963
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2964
    .local v1, t:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2965
    .local v0, arrowDownRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2966
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2967
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getDividerHeight()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2968
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2969
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2971
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2973
    return-void
.end method

.method private drawChildItemShadow(Landroid/graphics/Canvas;Landroid/view/View;Lcom/htc/widget/MoreExpandableItemInfo;I)V
    .locals 13
    .parameter "canvas"
    .parameter "item"
    .parameter "itemInfo"
    .parameter "position"

    .prologue
    .line 2896
    const/high16 v2, -0x8000

    .line 2897
    .local v2, childPosition:I
    const/high16 v4, -0x8000

    .line 2898
    .local v4, groupPosition:I
    invoke-virtual/range {p3 .. p3}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v8

    .line 2899
    .local v8, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v8, :cond_0

    .line 2900
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v10, v8}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v4

    .line 2901
    move/from16 v0, p4

    invoke-static {v4, v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v2

    .line 2903
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v7

    .line 2904
    .local v7, level:I
    invoke-virtual/range {p3 .. p3}, Lcom/htc/widget/MoreExpandableItemInfo;->isLastChild()Z

    move-result v6

    .line 2905
    .local v6, isLastChild:Z
    invoke-virtual/range {p3 .. p3}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v5

    .line 2906
    .local v5, isGroupExpanded:Z
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v10}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedLevel()I

    move-result v3

    .line 2907
    .local v3, expandedLevel:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2908
    .local v9, t:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2909
    .local v1, b:I
    if-ne v7, v3, :cond_2

    if-nez v2, :cond_2

    if-eqz v6, :cond_2

    .line 2910
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2911
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2912
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2913
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2933
    :cond_1
    :goto_0
    return-void

    .line 2914
    :cond_2
    if-ne v7, v3, :cond_3

    if-nez v2, :cond_3

    .line 2915
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2916
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2921
    :cond_3
    if-ne v7, v3, :cond_4

    if-eqz v6, :cond_4

    .line 2922
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2923
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2924
    :cond_4
    if-lez v7, :cond_1

    if-eq v7, v3, :cond_1

    if-eqz v5, :cond_1

    .line 2926
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2927
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawGroupItemShadow(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x3f80

    .line 2936
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    if-eqz v7, :cond_0

    .line 2937
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_1

    .line 2954
    :cond_0
    return-void

    .line 2938
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2939
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    .line 2940
    .local v4, scaleX:F
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 2942
    .local v5, scaleY:F
    iget v7, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_2

    .line 2943
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v1, v7, 0x2

    .line 2944
    .local v1, deltaX:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, v5

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v2, v7, 0x2

    .line 2945
    .local v2, deltaY:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2946
    .local v6, shadowTopBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 2947
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2948
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x9

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 2949
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x9

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2950
    iget-object v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2951
    iget-object v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2936
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v6           #shadowTopBounds:Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeaderViewsCount()I

    move-result v3

    .line 2848
    .local v3, headerViewsCount:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFooterViewsCount()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    add-int/lit8 v9, v12, -0x1

    .line 2849
    .local v9, lastChildFlPos:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    .line 2850
    .local v10, myB:I
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildCount()I

    move-result v1

    .line 2853
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, v12, v3

    .local v2, childFlPos:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 2855
    if-gez v2, :cond_1

    .line 2854
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2858
    :cond_1
    if-le v2, v9, :cond_3

    .line 2887
    :cond_2
    return-void

    .line 2862
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2863
    .local v7, item:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 2864
    .local v11, t:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2866
    .local v0, b:I
    if-ltz v0, :cond_0

    if-gt v11, v10, :cond_0

    .line 2869
    iget-object v12, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v12, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v8

    .line 2870
    .local v8, itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    const/4 v5, 0x0

    .line 2871
    .local v5, indicatorButton:Lcom/htc/widget/HtcIndicatorButton;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v12

    if-eqz v12, :cond_0

    instance-of v12, v7, Landroid/view/ViewGroup;

    if-eqz v12, :cond_0

    .line 2872
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2873
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #item:Landroid/view/View;
    const v12, 0x202000d

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2874
    .local v6, indicatorView:Landroid/view/View;
    if-eqz v6, :cond_0

    instance-of v12, v6, Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v12, :cond_0

    move-object v5, v6

    .line 2875
    check-cast v5, Lcom/htc/widget/HtcIndicatorButton;

    .line 2876
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcIndicatorButton;->setExpanded(Z)V

    goto :goto_1

    .line 2879
    .end local v6           #indicatorView:Landroid/view/View;
    .restart local v7       #item:Landroid/view/View;
    :cond_4
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #item:Landroid/view/View;
    const v12, 0x202000d

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2880
    .restart local v6       #indicatorView:Landroid/view/View;
    if-eqz v6, :cond_0

    instance-of v12, v6, Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v12, :cond_0

    move-object v5, v6

    .line 2881
    check-cast v5, Lcom/htc/widget/HtcIndicatorButton;

    .line 2882
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcIndicatorButton;->setExpanded(Z)V

    goto :goto_1
.end method

.method private fillFooterHeight()V
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 497
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-void
.end method

.method private fillFooterHeightToScreen()V
    .locals 8

    .prologue
    .line 2754
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 2755
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 2756
    .local v5, wm:Landroid/view/WindowManager;
    if-eqz v5, :cond_0

    .line 2757
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2758
    .local v0, dp:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 2760
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 2761
    .local v4, width:I
    if-le v1, v4, :cond_1

    move v3, v1

    .line 2762
    .local v3, target:I
    :goto_0
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2763
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2764
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2768
    .end local v0           #dp:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #target:I
    .end local v4           #width:I
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .restart local v0       #dp:Landroid/view/Display;
    .restart local v1       #height:I
    .restart local v4       #width:I
    .restart local v5       #wm:Landroid/view/WindowManager;
    :cond_1
    move v3, v4

    .line 2761
    goto :goto_0
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 10
    .parameter "animatedView"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3136
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 3138
    const-string v3, "scaleX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 3139
    .local v1, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleY:F

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 3140
    .local v2, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3141
    .local v0, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3142
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3143
    return-object v0
.end method

.method private get2DReleaseAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 10
    .parameter "animatedView"
    .parameter "pivotY"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3152
    int-to-float v3, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 3153
    const-string v3, "scaleX"

    new-array v4, v8, [F

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 3154
    .local v0, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v8, [F

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleY:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 3155
    .local v1, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3156
    .local v2, releaseAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3157
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3158
    new-instance v3, Lcom/htc/widget/MoreExpandableHtcListView$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/MoreExpandableHtcListView$2;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3164
    return-object v2
.end method

.method private getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
    .parameter "position"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v0, collapseReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    .line 1295
    .local v3, selfLevel:I
    add-int/lit8 v1, p1, 0x1

    .line 1296
    .local v1, index:I
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v2

    .line 1298
    .local v2, itemListSize:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1299
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1300
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-le v6, v3, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1302
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1303
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1313
    .end local v4           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method private getExpandDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 3047
    const/16 v0, 0x50

    return v0
.end method

.method private getExpandReduceOtherRootViewList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .local v0, expandReduceOtherRootViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedRootPosition()I

    move-result v1

    .line 1702
    .local v1, expandedRootPosition:I
    add-int/lit8 v2, v1, 0x1

    .line 1704
    .local v2, index:I
    if-gez v2, :cond_1

    .line 1722
    :cond_0
    return-object v0

    .line 1707
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v3

    .line 1708
    .local v3, itemListSize:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1709
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1710
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-lez v6, :cond_0

    .line 1711
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1712
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1713
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
    .parameter "position"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1914
    .local v0, expandReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    .line 1915
    .local v3, selfLevel:I
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 1918
    .local v2, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 1920
    .local v1, index:I
    if-gez v1, :cond_1

    .line 1935
    :cond_0
    return-object v0

    .line 1923
    :cond_1
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1924
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1925
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 1926
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1927
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1928
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getIncreaseMoveDuration(I)I
    .locals 2
    .parameter "count"

    .prologue
    const/4 v0, 0x5

    .line 1192
    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1193
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1197
    :goto_0
    return v0

    .line 1194
    :cond_0
    if-le p1, v0, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    .line 1195
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 1197
    :cond_1
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getMoveDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 3051
    const/16 v0, 0x12c

    return v0
.end method

.method private getReduceMoveDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 1203
    const/16 v0, 0x64

    return v0
.end method

.method private increaseViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "step"

    .prologue
    .line 1658
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1660
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1661
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, p1

    .line 1662
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    .line 1663
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1670
    :goto_0
    return-void

    .line 1666
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1667
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1668
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x5dd

    const/4 v6, 0x1

    .line 187
    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->setMoreExpandFlag(Z)V

    .line 189
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 190
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x2090061

    invoke-virtual {v2, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 195
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x208043a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->addFooterView(Landroid/view/View;)V

    .line 199
    iput-boolean v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z

    .line 200
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 202
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2060049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 203
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setExpandedChildrenBackgroundColor(I)V

    .line 207
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 211
    const v4, 0x2080160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    .line 212
    const v4, 0x208015f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 213
    const v4, 0x2080169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 214
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFakeDivider:Landroid/graphics/drawable/Drawable;

    .line 215
    const v4, 0x208019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressShadow:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-boolean v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->ignoreFooterViewInBouncing(Z)V

    .line 220
    const-string v4, " EXPND_LISTVIEW_MOVE_TOP "

    invoke-static {v6, p0, v7, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 222
    const-string v4, " EXPND_LISTVIEW_EXPAND "

    invoke-static {v6, p0, v7, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 224
    const-string v4, " EXPND_LISTVIEW_COLLAPSE "

    invoke-static {v6, p0, v7, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 226
    const-string v4, " EXPND_LISTVIEW_PRESS "

    invoke-static {v6, p0, v7, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 228
    const-string v4, " EXPND_LISTVIEW_RELEASE "

    invoke-static {v6, p0, v7, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 231
    return-void
.end method

.method private moveToTop(II)V
    .locals 0
    .parameter "position"
    .parameter "top"

    .prologue
    .line 2445
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2446
    return-void
.end method

.method private recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    .locals 2
    .parameter "self"
    .parameter "isExpanded"

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)Z

    .line 3008
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3009
    return-void
.end method

.method private recoverCollapseReduceViewList()V
    .locals 5

    .prologue
    .line 2483
    const/4 v2, 0x0

    .line 2484
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2485
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2486
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2488
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2489
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 2490
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 2491
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2484
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2494
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2495
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2496
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2499
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private recoverExpandReduceViewList()V
    .locals 5

    .prologue
    .line 2464
    const/4 v2, 0x0

    .line 2465
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2466
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2467
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2469
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2470
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 2471
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 2472
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2465
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2475
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2476
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2477
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2480
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V
    .locals 2
    .parameter "self"
    .parameter "newChildrenSize"
    .parameter "isReduceAtTail"

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)Z

    .line 3003
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3004
    return-void
.end method

.method private reduceViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "step"

    .prologue
    .line 1492
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1494
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1495
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, p1

    .line 1496
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    .line 1497
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    :goto_0
    return-void

    .line 1500
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1501
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1502
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetFooterHeight()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->start()V

    .line 503
    return-void
.end method

.method private setDefaultChildDivider(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1113
    .line 1114
    return-void
.end method

.method private setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .parameter "isExpand"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;JZ)I"
        }
    .end annotation

    .prologue
    .line 1212
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 1213
    .local v0, count:F
    const/4 v7, 0x0

    .line 1214
    .local v7, percent:F
    const/4 v8, 0x0

    .line 1215
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 1216
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1217
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 1220
    .local v6, passTime:I
    const/4 v3, 0x0

    .line 1221
    .local v3, moveDuration:I
    if-eqz p5, :cond_0

    .line 1222
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 1227
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, p1, :cond_4

    .line 1229
    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v7

    .line 1231
    if-nez v2, :cond_2

    .line 1232
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 1233
    if-lez v1, :cond_1

    .line 1234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    :goto_2
    move v8, v7

    .line 1227
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1224
    .end local v2           #i:I
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    goto :goto_0

    .line 1236
    .restart local v2       #i:I
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1240
    :cond_2
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 1241
    if-lez v1, :cond_3

    .line 1242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    :goto_4
    move v8, v7

    goto :goto_3

    .line 1244
    :cond_3
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1250
    :cond_4
    return v3
.end method

.method private setIncreaseViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "height"

    .prologue
    .line 1673
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1675
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1676
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, p1

    .line 1677
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    .line 1678
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1685
    :goto_0
    return-void

    .line 1681
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1682
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1683
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setReduceDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1254
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 1255
    .local v0, count:F
    const/4 v7, 0x0

    .line 1256
    .local v7, percent:F
    const/4 v8, 0x0

    .line 1257
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 1258
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1259
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 1261
    .local v6, passTime:I
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getReduceMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 1263
    .local v3, moveDuration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 1265
    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v7

    .line 1266
    if-nez v2, :cond_1

    .line 1267
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 1268
    if-lez v1, :cond_0

    .line 1269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    :goto_1
    move v8, v7

    .line 1263
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1271
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1275
    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 1276
    if-lez v1, :cond_2

    .line 1277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    :goto_3
    move v8, v7

    goto :goto_2

    .line 1279
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1284
    :cond_3
    return v3
.end method

.method private setReduceViewHeight(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1507
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1509
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1510
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, p1

    .line 1511
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    .line 1512
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    :goto_0
    return-void

    .line 1515
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1516
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1517
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTargetTopPosition()V
    .locals 5

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    .line 2213
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getTopBorderHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 2214
    return-void
.end method

.method private setToTop(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2450
    return-void
.end method


# virtual methods
.method public BlockingChangeRoot(Ljava/util/LinkedList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2737
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v0, :cond_0

    .line 2738
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_1

    .line 2741
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdapter is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2743
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 2744
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2746
    :cond_2
    if-nez p1, :cond_3

    .line 2747
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "itemList is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2749
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    .line 2751
    return-void
.end method

.method public Destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2634
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2635
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 2636
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 2637
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 2638
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 2639
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 2640
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 2641
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 2642
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 2643
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 2644
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 2645
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 2646
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 2647
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 2648
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 2649
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 2650
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 2651
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 2652
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 2653
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 2654
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 2655
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 2656
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 2657
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2658
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->Destroy()V

    .line 2661
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 2662
    return-void
.end method

.method public appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 444
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 448
    :cond_0
    return-void
.end method

.method public appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 468
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->start(Ljava/util/LinkedList;)V

    .line 472
    :cond_0
    return-void
.end method

.method public changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 430
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 435
    :cond_0
    return-void
.end method

.method public changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 456
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->start(Ljava/util/LinkedList;)V

    .line 460
    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 415
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->start()V

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 480
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->start(I)V

    .line 484
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 2799
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 2805
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->drawGroupItemShadow(Landroid/graphics/Canvas;)V

    .line 2809
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2811
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeaderViewsCount()I

    move-result v3

    .line 2812
    .local v3, headerViewsCount:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFooterViewsCount()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v3

    add-int/lit8 v7, v10, -0x1

    .line 2813
    .local v7, lastChildFlPos:I
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildCount()I

    move-result v1

    .line 2814
    .local v1, childCount:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    .line 2817
    .local v8, myB:I
    const/4 v4, 0x0

    .local v4, i:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, v10, v3

    .local v2, childFlPos:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 2820
    if-gez v2, :cond_1

    .line 2818
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2823
    :cond_1
    if-le v2, v7, :cond_3

    .line 2840
    :cond_2
    return-void

    .line 2828
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2829
    .local v5, item:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2830
    .local v9, t:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2832
    .local v0, b:I
    if-ltz v0, :cond_0

    if-gt v9, v8, :cond_0

    .line 2833
    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v10, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v6

    .line 2838
    .local v6, itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->isInBouncing()Z

    move-result v10

    if-nez v10, :cond_0

    if-gt v2, v7, :cond_0

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, v5, v6, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->drawChildItemShadow(Landroid/graphics/Canvas;Landroid/view/View;Lcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 3203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->isInBouncing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->findMotionRow(I)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 3205
    .local v1, pressedPos:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3206
    .local v0, animatedChild:Landroid/view/View;
    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->releaseItem(Landroid/view/View;)V

    .line 3208
    .end local v0           #animatedChild:Landroid/view/View;
    .end local v1           #pressedPos:I
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 2977
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 2981
    .local v2, flatListPosition:I
    if-ltz v2, :cond_1

    iget-boolean v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mShouldDrawFakeDivider:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->isInBouncing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2982
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, v2, v4

    .line 2983
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v4, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    .line 2985
    .local v3, itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedLevel()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2989
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFakeDivider:Landroid/graphics/drawable/Drawable;

    .line 2990
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2991
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2998
    .end local v0           #adjustedPosition:I
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    :goto_0
    return-void

    .line 2997
    :cond_1
    invoke-super {p0, p1, p2, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 4
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v3, 0x0

    .line 2683
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v1, :cond_0

    .line 2684
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2686
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v1, :cond_1

    .line 2687
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "mAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2689
    :cond_1
    if-nez p1, :cond_2

    .line 2690
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2692
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v1, :cond_3

    .line 2693
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2695
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2696
    .local v0, checkPos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 2697
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not in list"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2698
    :cond_5
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2699
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a group item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2700
    :cond_6
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2701
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2702
    :cond_7
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2703
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a root node but it does not have parent"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2704
    :cond_8
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2705
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Another path is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2706
    :cond_9
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2707
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Self is not a child of the current expanded item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2710
    :cond_a
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2711
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    .line 2712
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    .line 2713
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2714
    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2715
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    .line 2726
    :cond_b
    :goto_0
    return-void

    .line 2716
    :cond_c
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2717
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    .line 2718
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    .line 2719
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2720
    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2724
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method public getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExpandedPosition()I
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 237
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 238
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->cancelPressAnimation()V

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v8

    .line 247
    .local v8, self:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IJ)Z

    move-result v7

    goto :goto_0

    .line 251
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 252
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    .line 254
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-virtual {v0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 273
    :goto_1
    const/4 v7, 0x1

    .local v7, returnValue:Z
    goto :goto_0

    .line 262
    .end local v7           #returnValue:Z
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p2, v8}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 263
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    .line 264
    invoke-direct {p0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_1

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v3

    .line 277
    .local v3, groupPosition:I
    invoke-static {v3, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v4

    .line 278
    .local v4, childPosition:I
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 279
    move v3, p2

    .line 280
    const/4 v4, -0x1

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z

    move-result v7

    goto :goto_0

    .line 284
    .end local v3           #groupPosition:I
    .end local v4           #childPosition:I
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #returnValue:Z
    goto :goto_0
.end method

.method isAnyRunnableBefore(I)Z
    .locals 2
    .parameter "runnableIndex"

    .prologue
    const/4 v0, 0x1

    .line 2597
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 2611
    :cond_0
    :goto_0
    return v0

    .line 2599
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2601
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2607
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2609
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2611
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->isGroupExpanded(I)Z

    move-result v0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 2776
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2777
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 2778
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    .line 2779
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 3096
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onDetachedFromWindow()V

    .line 3098
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCheckForGroupItemReleased:Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;

    if-eqz v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCheckForGroupItemReleased:Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3104
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 3105
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3107
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2507
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 2508
    const/4 v0, 0x0

    .line 2510
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    .line 3017
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 3018
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->shouldHideView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3020
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3021
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3023
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 3024
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 3025
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3026
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3027
    check-cast v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3020
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3029
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3030
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3031
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3034
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v3, :cond_2

    .line 3035
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V

    .line 3037
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 3038
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 3042
    iput-boolean v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    .line 3044
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3174
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 3175
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mGroupPressAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 3178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2547
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 2548
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V

    .line 2549
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 2519
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 2520
    const/4 v0, 0x1

    .line 2525
    :goto_0
    return v0

    .line 2522
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2525
    .local v0, handled:Z
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 2536
    const/4 v0, 0x1

    .line 2538
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 3186
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onWindowFocusChanged(Z)V

    .line 3187
    if-nez p1, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCheckForGroupItemReleased:Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCheckForGroupItemReleased:Lcom/htc/widget/MoreExpandableHtcListView$CheckForGroupItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3196
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected releaseItem()V
    .locals 5

    .prologue
    .line 3120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3121
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3122
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->get2DReleaseAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3123
    .local v1, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3124
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 3120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3126
    .end local v1           #releaseAnim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3127
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mPressedGroupAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3128
    return-void
.end method

.method public setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 112
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 113
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childDivider"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public setExpandedChildrenBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 156
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    .line 157
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 344
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 316
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 363
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 383
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 1
    .parameter "onScrollListener"

    .prologue
    .line 2556
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2557
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 2558
    return-void
.end method
