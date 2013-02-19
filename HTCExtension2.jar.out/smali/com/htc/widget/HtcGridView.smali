.class public Lcom/htc/widget/HtcGridView;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcGridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcGridView$AdapterCheckListener;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field private static final HTC_GRID_VIEW_ANITYPE_ADD:Ljava/lang/String; = "GRIDVIEW_ADD"

.field private static final HTC_GRID_VIEW_ANITYPE_BOUNCING:Ljava/lang/String; = "GRIDVIEW_BOUNCING"

.field private static final HTC_GRID_VIEW_ANITYPE_DELETE:Ljava/lang/String; = "GRIDVIEW_DELETE"

.field private static final HTC_GRID_VIEW_ANITYPE_INTRO:Ljava/lang/String; = "GRIDVIEW_INTRO"

.field private static final HTC_GRID_VIEW_ANITYPE_PRESS:Ljava/lang/String; = "GRIDVIEW_PRESS"

.field private static final HTC_GRID_VIEW_ANITYPE_RELEASE:Ljava/lang/String; = "GRIDVIEW_RELEASE"

.field private static final MAX_DIFF:I = 0x24

.field private static final NONSENSITIVE_FACTOR:I = 0xa

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final ahanLog:Z


# instance fields
.field private DownIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

.field private mAddAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAnimationEnable:Z

.field private mAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationInvertFlag:Z

.field private mAppearAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mBouncingEnabled:Z

.field mBreakRows:I

.field mBreakRows2:I

.field private mColumnWidth:I

.field mCurrent:F

.field private mDelOriViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletePosInCurrentScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteflag:Z

.field private mDisappearView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAddedPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mInBouncing:Z

.field private mIntroAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroAnimationEnabled:Z

.field private mItemCheck:Z

.field private mNeededToCancel:Z

.field private mNowFirstPosition:I

.field private mNowViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumColumns:I

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mPre:F

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mResetToLastPos:Z

.field mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

.field mStart:F

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchViewPosition:I

.field private mVerticalSpacing:I

.field pvhBiggerA:Landroid/animation/PropertyValuesHolder;

.field pvhPressBiggerA:Landroid/animation/PropertyValuesHolder;

.field pvhPressBiggerX:Landroid/animation/PropertyValuesHolder;

.field pvhPressBiggerY:Landroid/animation/PropertyValuesHolder;

.field pvhPressSmallerA:Landroid/animation/PropertyValuesHolder;

.field pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

.field pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

.field pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

.field pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;)V

    .line 115
    iput v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 117
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    .line 119
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 120
    iput v3, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    .line 125
    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 126
    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 128
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mTempRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    .line 137
    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    .line 139
    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 140
    const-string v0, "scaleX"

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 141
    const-string v0, "scaleY"

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 145
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    .line 146
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    .line 150
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    .line 152
    new-instance v0, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    .line 171
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    .line 172
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    .line 173
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    .line 174
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    .line 175
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    .line 176
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    .line 177
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    .line 178
    iput v4, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    .line 179
    iput v4, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    .line 188
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mItemCheck:Z

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    .line 190
    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 191
    iput v4, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    .line 3211
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    iput v2, p0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    .line 3212
    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3539
    const-string v0, "scaleX"

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    .line 3540
    const-string v0, "scaleY"

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    .line 3541
    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerA:Landroid/animation/PropertyValuesHolder;

    .line 3543
    const-string v0, "scaleX"

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 3544
    const-string v0, "scaleY"

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 3545
    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 217
    return-void

    .line 139
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 140
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 141
    :array_2
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3539
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 3540
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 3541
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    .line 3543
    :array_6
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3544
    :array_7
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3545
    :array_8
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 220
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 117
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    .line 119
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 120
    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    .line 125
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 126
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 128
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    .line 130
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mTempRect:Landroid/graphics/Rect;

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    .line 137
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    .line 139
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 140
    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 141
    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 145
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    .line 146
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    .line 148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    .line 149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    .line 150
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    .line 152
    new-instance v6, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    .line 171
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    .line 172
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    .line 173
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    .line 174
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    .line 175
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    .line 176
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    .line 177
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    .line 178
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    .line 179
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    .line 180
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    .line 182
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    .line 184
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    .line 188
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mItemCheck:Z

    .line 189
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    .line 190
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 191
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    .line 3211
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    .line 3212
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3539
    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_3

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    .line 3540
    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    .line 3541
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerA:Landroid/animation/PropertyValuesHolder;

    .line 3543
    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_6

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 3544
    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_7

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 3545
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_8

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 227
    new-instance v6, Landroid/view/GestureDetector;

    invoke-direct {v6, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 228
    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 229
    const v6, 0x106000d

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelector(I)V

    .line 231
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 236
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->setHorizontalSpacing(I)V

    .line 238
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 240
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setVerticalSpacing(I)V

    .line 242
    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 243
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 244
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->setStretchMode(I)V

    .line 247
    :cond_0
    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 248
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 249
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setColumnWidth(I)V

    .line 252
    :cond_1
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 253
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    .line 255
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 256
    if-ltz v3, :cond_2

    .line 257
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->setGravity(I)V

    .line 260
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setScrollToCorrectPosListener(Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;)V

    .line 265
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_INTRO"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 267
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_ADD"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 269
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_DELETE"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 271
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_BOUNCING"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 273
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_PRESS"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 275
    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_RELEASE"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 278
    return-void

    .line 139
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 140
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 141
    :array_2
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3539
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 3540
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 3541
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    .line 3543
    :array_6
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3544
    :array_7
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3545
    :array_8
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private StartAddAnimation()V
    .locals 14

    .prologue
    .line 2371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2373
    .local v1, AnimationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v10, "AddAnimation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAddAnimateViewList.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const-string v10, "AddAnimation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAppearAnimateViewList.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 2377
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2378
    .local v9, viewtemp:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    .line 2379
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setY(F)V

    .line 2380
    const-string v11, "Y"

    const/4 v10, 0x2

    new-array v12, v10, [F

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2381
    .local v4, pvTop:Landroid/animation/PropertyValuesHolder;
    const-string v11, "X"

    const/4 v10, 0x2

    new-array v12, v10, [F

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2382
    .local v3, pvLeft:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2383
    .local v8, temp:Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3f80

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2384
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2385
    invoke-virtual {v1, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2375
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2389
    .end local v3           #pvLeft:Landroid/animation/PropertyValuesHolder;
    .end local v4           #pvTop:Landroid/animation/PropertyValuesHolder;
    .end local v8           #temp:Landroid/animation/ObjectAnimator;
    .end local v9           #viewtemp:Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 2391
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2392
    .restart local v9       #viewtemp:Landroid/view/View;
    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 2393
    .local v5, pvhApperAlpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 2394
    .local v7, pvhApperY:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_2

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2395
    .local v6, pvhApperX:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2397
    .restart local v8       #temp:Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2398
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2400
    :cond_1
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2401
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2405
    .end local v5           #pvhApperAlpha:Landroid/animation/PropertyValuesHolder;
    .end local v6           #pvhApperX:Landroid/animation/PropertyValuesHolder;
    .end local v7           #pvhApperY:Landroid/animation/PropertyValuesHolder;
    .end local v8           #temp:Landroid/animation/ObjectAnimator;
    .end local v9           #viewtemp:Landroid/view/View;
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2406
    .local v0, AddRearrangeAnimation:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2408
    new-instance v10, Lcom/htc/widget/HtcGridView$2;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcGridView$2;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2453
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2454
    return-void

    .line 2392
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2393
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2394
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private StartDisappearAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 2564
    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2566
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 2567
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    sub-int/2addr v8, v10

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2570
    :cond_0
    const-string v8, "scaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2571
    .local v4, pvhSmallerX:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 2572
    .local v5, pvhSmallerY:Landroid/animation/PropertyValuesHolder;
    const-string v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2574
    .local v3, pvhDisapperAlpha:Landroid/animation/PropertyValuesHolder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2575
    .local v0, AnimationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 2577
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2578
    .local v7, viewtemp:Landroid/view/View;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    aput-object v5, v8, v12

    aput-object v3, v8, v11

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2579
    .local v6, temp:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2583
    .end local v6           #temp:Landroid/animation/ObjectAnimator;
    .end local v7           #viewtemp:Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2584
    .local v2, mDisappearAnimSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2585
    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2586
    new-instance v8, Lcom/htc/widget/HtcGridView$3;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcGridView$3;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2629
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2630
    return-void

    .line 2570
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 2571
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 2572
    :array_2
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private StartRearrangeAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3037
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setDelViewLocation()V

    .line 3038
    iput-boolean v11, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 3040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3042
    .local v0, AnimationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 3047
    iget-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    if-eqz v7, :cond_0

    .line 3048
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3049
    .local v6, viewtemp:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    .line 3050
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    .line 3051
    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 3052
    .local v4, pvTop:Landroid/animation/PropertyValuesHolder;
    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 3062
    .local v3, pvLeft:Landroid/animation/PropertyValuesHolder;
    :goto_1
    new-array v7, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v12

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 3063
    .local v5, temp:Landroid/animation/ObjectAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3064
    const-wide/16 v7, 0x96

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3065
    mul-int/lit8 v7, v1, 0x1e

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3067
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3042
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3055
    .end local v3           #pvLeft:Landroid/animation/PropertyValuesHolder;
    .end local v4           #pvTop:Landroid/animation/PropertyValuesHolder;
    .end local v5           #temp:Landroid/animation/ObjectAnimator;
    .end local v6           #viewtemp:Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3056
    .restart local v6       #viewtemp:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    .line 3057
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    .line 3058
    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 3059
    .restart local v4       #pvTop:Landroid/animation/PropertyValuesHolder;
    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .restart local v3       #pvLeft:Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_1

    .line 3069
    .end local v3           #pvLeft:Landroid/animation/PropertyValuesHolder;
    .end local v4           #pvTop:Landroid/animation/PropertyValuesHolder;
    .end local v6           #viewtemp:Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3070
    .local v2, mDeleteAnimSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3072
    new-instance v7, Lcom/htc/widget/HtcGridView$5;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcGridView$5;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3110
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 3112
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/widget/HtcGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/HtcGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    return p1
.end method

.method static synthetic access$2102(Lcom/htc/widget/HtcGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/widget/HtcGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 914
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 915
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 918
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 920
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 941
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 942
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 945
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 947
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    .line 2197
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 2201
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2204
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2205
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2206
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2209
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2211
    :cond_0
    if-gez v2, :cond_1

    .line 2213
    const/4 v2, 0x0

    .line 2232
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2233
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 2236
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 2217
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2218
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2220
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2223
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2226
    :cond_4
    if-lez v2, :cond_1

    .line 2228
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelBouncing()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3436
    const/high16 v6, -0x3cb8

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mPre:F

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mStart:F

    .line 3437
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3439
    .local v0, animSet:Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    .line 3440
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3441
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3442
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_2

    .line 3448
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3449
    :cond_1
    const-wide/16 v6, 0x82

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3450
    new-instance v6, Lcom/htc/widget/HtcGridView$6;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcGridView$6;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3477
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3478
    return-void

    .line 3443
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    const-string v6, "translationY"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 3444
    .local v5, pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v9

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3445
    .local v3, childScaleTransAnim:Landroid/animation/ObjectAnimator;
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3440
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1676
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1803
    :goto_0
    return v2

    .line 1680
    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1681
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->layoutChildren()V

    .line 1684
    :cond_1
    const/4 v1, 0x0

    .line 1685
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1687
    .local v0, action:I
    if-eq v0, v3, :cond_2

    .line 1688
    sparse-switch p1, :sswitch_data_0

    .line 1787
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1788
    goto :goto_0

    .line 1690
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1696
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1697
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1702
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1703
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1704
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1705
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1710
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1711
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1712
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1713
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1719
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1720
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1721
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1723
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->keyPressed()V

    .line 1724
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1730
    :sswitch_5
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1731
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1732
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1733
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1734
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1740
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1741
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1742
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1743
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1748
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1749
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1750
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1751
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1756
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1757
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1762
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1763
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1791
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1792
    goto/16 :goto_0

    .line 1795
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1797
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1799
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1801
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1688
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 718
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 719
    .local v6, lastPosition:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 721
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 724
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 726
    .local v4, lastBottom:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 730
    .local v1, end:I
    sub-int v0, v1, v4

    .line 732
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 733
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 737
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 738
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 740
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 744
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 745
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 748
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 751
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 755
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 758
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 760
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 766
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 769
    .local v6, start:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 773
    .local v0, end:I
    sub-int v7, v2, v6

    .line 774
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 775
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 776
    .local v3, lastBottom:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 780
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 781
    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 783
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 787
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 788
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 791
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 794
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 798
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 1075
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    .line 1076
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    .line 1077
    .local v4, stretchMode:I
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    .line 1078
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 1080
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1081
    if-lez v1, :cond_2

    .line 1083
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 1094
    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 1095
    iput v7, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 1098
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 1106
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 1109
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_1

    .line 1110
    const/4 v0, 0x1

    .line 1113
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1145
    .end local v3           #spaceLeftOver:I
    :goto_1
    return v0

    .line 1087
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    goto :goto_0

    .line 1091
    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    goto :goto_0

    .line 1101
    :pswitch_0
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    .line 1102
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1116
    .restart local v3       #spaceLeftOver:I
    :pswitch_1
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    .line 1117
    iput v2, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1122
    :pswitch_2
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    .line 1123
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 1124
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1127
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1133
    :pswitch_3
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    .line 1134
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1135
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1138
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1113
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int v0, v3, v4

    .line 418
    .local v0, end:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 419
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 422
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 423
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 425
    move-object v1, v2

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 432
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 433
    goto :goto_0

    .line 435
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 549
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 550
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 552
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 553
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 812
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 813
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 814
    .local v4, numColumns:I
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 817
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 819
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 820
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 831
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 832
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 835
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 837
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 839
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 840
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 841
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 843
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 844
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 845
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 846
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 854
    :goto_2
    return-object v8

    .line 822
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 824
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 825
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 835
    goto :goto_1

    .line 848
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 849
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 850
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 539
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 540
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 541
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 544
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 545
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 560
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 561
    .local v4, numColumns:I
    iget v12, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 564
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 566
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 567
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 575
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 576
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 578
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 579
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 581
    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 583
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 584
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 585
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcGridView;->pinToBottom(I)V

    .line 586
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 587
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 599
    :goto_2
    return-object v9

    .line 569
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 571
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 572
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 578
    goto :goto_1

    .line 589
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 591
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 592
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 593
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 594
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcGridView;->pinToTop(I)V

    .line 595
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 596
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 657
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 660
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 662
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 663
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 671
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 674
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 676
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 678
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_3

    .line 679
    const/4 v8, 0x0

    .line 712
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 665
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 667
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 668
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 671
    goto :goto_1

    .line 682
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 687
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 688
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 689
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 690
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 692
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    .line 693
    .local v2, childCount:I
    if-lez v2, :cond_4

    .line 694
    invoke-direct {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridView;->correctTooHigh(III)V

    .line 707
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 709
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 710
    goto :goto_2

    .line 697
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 698
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 699
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 701
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    .line 702
    .restart local v2       #childCount:I
    if-lez v2, :cond_4

    .line 703
    invoke-direct {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 712
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 502
    const/4 v1, 0x0

    .line 504
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 505
    .local v0, end:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 506
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 509
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 511
    invoke-direct {p0, p1, p2, v5}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 512
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 513
    move-object v1, v2

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 518
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 520
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 521
    goto :goto_0

    .line 523
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 524
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 527
    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 869
    move v0, p1

    .line 870
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 871
    sub-int/2addr v0, p2

    .line 873
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 886
    move v0, p1

    .line 887
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 888
    add-int/2addr v0, p2

    .line 890
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2038
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    .line 2039
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2044
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2045
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2046
    .local v3, rowStart:I
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2052
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2073
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2048
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2049
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 2056
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2071
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2056
    goto :goto_1

    .line 2059
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2062
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2065
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2068
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2071
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2052
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1477
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1480
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1492
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1487
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1490
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1492
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 439
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    .line 440
    .local v8, columnWidth:I
    iget v10, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    .line 443
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 446
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 447
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 457
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 459
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->shouldShowSelector()Z

    move-result v9

    .line 460
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 461
    .local v11, inClick:Z
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 463
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 464
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 466
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 469
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 470
    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 472
    add-int/2addr v4, v8

    .line 473
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 474
    add-int/2addr v4, v10

    .line 477
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 478
    :cond_2
    move-object v14, v7

    .line 464
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 443
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 450
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 452
    sub-int v0, v12, p1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    .line 453
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 466
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 469
    .restart local v5       #selected:Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 482
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 484
    if-eqz v14, :cond_9

    .line 485
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 488
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 992
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 993
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 994
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 998
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 1000
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1001
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 1003
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 1015
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 1017
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 1018
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 1022
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1027
    if-lez v12, :cond_3

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 1035
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1036
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 1038
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1061
    .end local v8           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 1062
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 1064
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 1071
    :goto_4
    return-object v15

    .line 1005
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 1007
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 1008
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1010
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 1011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 1012
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 1032
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 1035
    goto/16 :goto_2

    .line 1039
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 1046
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1047
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .line 1049
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 1043
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 1046
    goto :goto_6

    .line 1054
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 1057
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1058
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 1054
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 1057
    goto :goto_8

    .line 1066
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    .line 1068
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    .line 614
    .local v1, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 615
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 616
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 617
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 618
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 621
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 603
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 604
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 605
    .local v1, top:I
    sub-int v0, p1, v1

    .line 606
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    .line 610
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setDelViewLocation()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2705
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v11

    iput v11, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    .line 2706
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    sub-int v7, v11, v12

    .line 2707
    .local v7, positiondifference:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    .line 2708
    .local v2, NowCurrentChildCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_1

    move v1, v9

    .line 2709
    .local v1, IfNowAtLastPage:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_2

    move v0, v9

    .line 2711
    .local v0, IfNowAtFirstPage:Z
    :goto_1
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v11, :cond_3

    if-nez v1, :cond_3

    .line 2712
    const-string v9, "RearrangeAnimation"

    const-string v10, "case 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const-string v9, "RearrangeAnimation"

    const-string v10, "do nothing with mDelOriViewTopList and mDelOriViewLeftList "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v5, v9, v10

    .line 3005
    .local v5, difference:I
    const-string v9, "RearrangeAnimation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNowViewList.size()-LastTop.size()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v9, v10, :cond_23

    .line 3007
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v5, :cond_23

    .line 3009
    const-string v9, "RearrangeAnimation"

    const-string v10, "add from buttom"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3011
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v0           #IfNowAtFirstPage:Z
    .end local v1           #IfNowAtLastPage:Z
    .end local v5           #difference:I
    .end local v6           #i:I
    :cond_1
    move v1, v10

    .line 2708
    goto :goto_0

    .restart local v1       #IfNowAtLastPage:Z
    :cond_2
    move v0, v10

    .line 2709
    goto :goto_1

    .line 2714
    .restart local v0       #IfNowAtFirstPage:Z
    :cond_3
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_5

    if-nez v1, :cond_5

    .line 2716
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_4

    .line 2717
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 2"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 2719
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2720
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 2723
    :cond_4
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 3"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_0

    .line 2725
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2726
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2724
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2729
    .end local v6           #i:I
    :cond_5
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_8

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v11, :cond_8

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    .line 2730
    const-string v11, "RearrangeAnimation"

    const-string v12, "case 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string v11, "RearrangeAnimation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mOriBelowLeftCount ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v11, :cond_6

    .line 2736
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2740
    :cond_6
    const/4 v4, 0x0

    .line 2741
    .local v4, childindex:I
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2742
    .local v3, RemoveCount:I
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_7

    .line 2744
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2746
    .local v8, tempChild:Landroid/view/View;
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2747
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2748
    add-int/lit8 v4, v4, 0x1

    .line 2742
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2752
    .end local v8           #tempChild:Landroid/view/View;
    :cond_7
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 2755
    .end local v3           #RemoveCount:I
    .end local v4           #childindex:I
    .end local v6           #i:I
    :cond_8
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v11, :cond_c

    if-eqz v1, :cond_c

    if-nez v0, :cond_c

    .line 2758
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    add-int/2addr v11, v12

    if-lt v9, v11, :cond_a

    .line 2759
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 5"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_9

    .line 2765
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2770
    :cond_9
    const/4 v4, 0x0

    .line 2771
    .restart local v4       #childindex:I
    :goto_9
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 2772
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2774
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2775
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2776
    add-int/lit8 v4, v4, 0x1

    .line 2777
    goto :goto_9

    .line 2781
    .end local v4           #childindex:I
    .end local v6           #i:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_a
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 6"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_a
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_b

    .line 2787
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2791
    :cond_b
    const/4 v4, 0x0

    .line 2792
    .restart local v4       #childindex:I
    :goto_b
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 2793
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2795
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2796
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 2802
    .end local v4           #childindex:I
    .end local v6           #i:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_c
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_11

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_11

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v11, :cond_11

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 2806
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_e

    .line 2807
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 7"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_c
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_d

    .line 2811
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 2815
    :cond_d
    const/4 v4, 0x0

    .line 2816
    .restart local v4       #childindex:I
    :goto_d
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 2817
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2819
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2820
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    .line 2824
    .end local v4           #childindex:I
    .end local v6           #i:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_e
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 8"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_e
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_f

    .line 2827
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2828
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2826
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 2831
    :cond_f
    const/4 v6, 0x0

    :goto_f
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_10

    .line 2834
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2831
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 2838
    :cond_10
    const/4 v4, 0x0

    .line 2839
    .restart local v4       #childindex:I
    :goto_10
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 2840
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2842
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2843
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10

    .line 2848
    .end local v4           #childindex:I
    .end local v6           #i:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_11
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_16

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_16

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_16

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    .line 2851
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_13

    .line 2852
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 9"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v2, :cond_12

    .line 2855
    :goto_11
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v2, :cond_0

    .line 2856
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2857
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 2860
    :cond_12
    const-string v9, "RearrangeAnimation"

    const-string v10, "case 9 unhandle part"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2864
    :cond_13
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 10"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_12
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_14

    .line 2867
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2868
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2866
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 2871
    :cond_14
    const/4 v6, 0x0

    :goto_13
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_15

    .line 2873
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2874
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2871
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 2877
    :cond_15
    const/4 v4, 0x0

    .line 2878
    .restart local v4       #childindex:I
    :goto_14
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 2879
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2881
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2882
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2883
    add-int/lit8 v4, v4, 0x1

    .line 2884
    goto :goto_14

    .line 2888
    .end local v4           #childindex:I
    .end local v6           #i:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_16
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_17

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_17

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_17

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 2891
    const-string v9, "RearrangeAnimation"

    const-string v10, "case 11"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2893
    :cond_17
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v11, :cond_1c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_1c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_1c

    .line 2895
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v11, v12, :cond_19

    .line 2896
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 12"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2899
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2901
    const/4 v4, 0x0

    .line 2903
    .restart local v4       #childindex:I
    :goto_15
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_18

    .line 2904
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2906
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2907
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2909
    add-int/lit8 v4, v4, 0x1

    .line 2910
    goto :goto_15

    .line 2912
    .end local v8           #tempChild:Landroid/view/View;
    :cond_18
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 2917
    .end local v4           #childindex:I
    :cond_19
    const-string v11, "RearrangeAnimation"

    const-string v12, "case 13"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_16
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v11, :cond_1a

    .line 2921
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2922
    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2920
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 2925
    :cond_1a
    const/4 v4, 0x0

    .line 2927
    .restart local v4       #childindex:I
    :goto_17
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_1b

    .line 2928
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2930
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2931
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2933
    add-int/lit8 v4, v4, 0x1

    .line 2934
    goto :goto_17

    .line 2936
    .end local v8           #tempChild:Landroid/view/View;
    :cond_1b
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 2941
    .end local v4           #childindex:I
    .end local v6           #i:I
    :cond_1c
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_1e

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v10, :cond_1e

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v10, :cond_1e

    .line 2942
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 14"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    if-eqz v7, :cond_0

    .line 2946
    const/4 v4, 0x0

    .line 2947
    .restart local v4       #childindex:I
    :goto_18
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_1d

    .line 2948
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2950
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2951
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2953
    add-int/lit8 v4, v4, 0x1

    .line 2954
    goto :goto_18

    .line 2956
    .end local v8           #tempChild:Landroid/view/View;
    :cond_1d
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 2960
    .end local v4           #childindex:I
    :cond_1e
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v10, :cond_21

    if-nez v0, :cond_21

    .line 2963
    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v10, v11, :cond_1f

    .line 2964
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 15"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    const/4 v4, 0x0

    .line 2966
    .restart local v4       #childindex:I
    :goto_19
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_20

    .line 2967
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2969
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2970
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2972
    add-int/lit8 v4, v4, 0x1

    .line 2973
    goto :goto_19

    .line 2975
    .end local v4           #childindex:I
    .end local v8           #tempChild:Landroid/view/View;
    :cond_1f
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 16"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const/4 v4, 0x0

    .line 2978
    .restart local v4       #childindex:I
    :goto_1a
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_20

    .line 2979
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2981
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2982
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2984
    add-int/lit8 v4, v4, 0x1

    .line 2985
    goto :goto_1a

    .line 2988
    .end local v8           #tempChild:Landroid/view/View;
    :cond_20
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 2989
    .end local v4           #childindex:I
    :cond_21
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 2990
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 17"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v4, 0x0

    .line 2993
    .restart local v4       #childindex:I
    :goto_1b
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_22

    .line 2994
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2996
    .restart local v8       #tempChild:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2997
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2999
    add-int/lit8 v4, v4, 0x1

    .line 3000
    goto :goto_1b

    .line 3001
    .end local v8           #tempChild:Landroid/view/View;
    :cond_22
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    .line 3016
    .end local v4           #childindex:I
    .restart local v5       #difference:I
    :cond_23
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .restart local v6       #i:I
    :goto_1c
    if-ltz v6, :cond_25

    .line 3019
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 3020
    const-string v9, "RearrangeAnimation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove the same position i ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3022
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3023
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3024
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3025
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3016
    :cond_24
    add-int/lit8 v6, v6, -0x1

    goto :goto_1c

    .line 3031
    :cond_25
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1513
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1514
    .local v14, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1515
    .local v20, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1516
    .local v16, mode:I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1518
    .local v13, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1520
    .local v19, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1524
    .local v17, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1525
    .local v18, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1526
    new-instance v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v18           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1529
    .restart local v18       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1531
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    :goto_5
    if-eqz v20, :cond_2

    .line 1539
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1540
    if-eqz v14, :cond_2

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->requestFocus()Z

    .line 1545
    :cond_2
    if-eqz v19, :cond_3

    .line 1546
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1549
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1550
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1551
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1558
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1559
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1562
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1564
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1569
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1570
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1573
    .local v12, h:I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1575
    .local v10, childTop:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1576
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1577
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1588
    :pswitch_0
    move/from16 v8, p5

    .line 1592
    .local v8, childLeft:I
    :goto_9
    if-eqz v17, :cond_10

    .line 1593
    add-int v9, v8, v21

    .line 1594
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1595
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1601
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1602
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1605
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1607
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1609
    :cond_6
    return-void

    .line 1513
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1514
    .restart local v14       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1516
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1518
    .restart local v13       #isPressed:Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1520
    .restart local v19       #updateChildPressed:Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1534
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 1535
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1552
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1566
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1573
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1579
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1
    move/from16 v8, p5

    .line 1580
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1582
    .end local v8           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1583
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1585
    .end local v8           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1586
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1597
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1598
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private startCancelAnimation(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 3697
    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v2, :cond_1

    .line 3698
    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    invoke-interface {v2, p2}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3700
    const/4 v1, 0x1

    .line 3710
    .local v1, flag:Z
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerX:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerY:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3711
    .local v0, animGallery:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3712
    new-instance v2, Lcom/htc/widget/HtcGridView$9;

    invoke-direct {v2, p0, v1}, Lcom/htc/widget/HtcGridView$9;-><init>(Lcom/htc/widget/HtcGridView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3740
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3742
    return-void

    .line 3703
    .end local v0           #animGallery:Landroid/animation/ObjectAnimator;
    .end local v1           #flag:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #flag:Z
    goto :goto_0

    .line 3706
    .end local v1           #flag:Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #flag:Z
    goto :goto_0
.end method

.method private startPressAnimationPartOne(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3552
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v1, :cond_1

    .line 3554
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-interface {v1, v2}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3555
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerA:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3564
    .local v0, animGallery:Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3565
    new-instance v1, Lcom/htc/widget/HtcGridView$7;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcGridView$7;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3590
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3592
    return-void

    .line 3557
    .end local v0           #animGallery:Landroid/animation/ObjectAnimator;
    :cond_0
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0       #animGallery:Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 3561
    .end local v0           #animGallery:Landroid/animation/ObjectAnimator;
    :cond_1
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0       #animGallery:Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private startPressAnimationPartTwo(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 3621
    move v1, p2

    .line 3625
    .local v1, animItem:I
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v3, :cond_1

    .line 3626
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    invoke-interface {v3, p2}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3627
    const/4 v2, 0x0

    .line 3635
    .local v2, flag:Z
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerX:Landroid/animation/PropertyValuesHolder;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->pvhPressBiggerY:Landroid/animation/PropertyValuesHolder;

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3636
    .local v0, animGallery:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/htc/widget/HtcGridView$8;

    invoke-direct {v3, p0, v2, v1}, Lcom/htc/widget/HtcGridView$8;-><init>(Lcom/htc/widget/HtcGridView;ZI)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3686
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3687
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3689
    return-void

    .line 3629
    .end local v0           #animGallery:Landroid/animation/ObjectAnimator;
    .end local v2           #flag:Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2       #flag:Z
    goto :goto_0

    .line 3632
    .end local v2           #flag:Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2       #flag:Z
    goto :goto_0
.end method


# virtual methods
.method public SetAdapterCheckListener(Lcom/htc/widget/HtcGridView$AdapterCheckListener;)V
    .locals 0
    .parameter "adapterCheckListener"

    .prologue
    .line 3536
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    .line 3537
    return-void
.end method

.method public StartIntroAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v9, 0x3e99999a

    const/4 v8, 0x1

    .line 2635
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isIntroAnimationEnabled()Z

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2699
    :goto_0
    return-void

    .line 2639
    :cond_0
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2640
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 2642
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2644
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2646
    .local v3, temp:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2647
    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2649
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2654
    .end local v2           #i:I
    .end local v3           #temp:Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2656
    .local v0, AnimationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2658
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2659
    .local v4, tempview:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleX(F)V

    .line 2660
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    .line 2661
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2662
    .local v3, temp:Landroid/animation/ObjectAnimator;
    mul-int/lit8 v5, v2, 0x1e

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2663
    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2664
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2656
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2667
    .end local v3           #temp:Landroid/animation/ObjectAnimator;
    .end local v4           #tempview:Landroid/view/View;
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2668
    .local v1, IntroAnimateSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2669
    new-instance v5, Lcom/htc/widget/HtcGridView$4;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcGridView$4;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2698
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1869
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1870
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 1875
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1877
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1878
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1879
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1886
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1917
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1918
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->playSoundEffect(I)V

    .line 1919
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    .line 1922
    :cond_1
    if-eqz v2, :cond_2

    .line 1923
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    .line 1926
    :cond_2
    return v2

    .line 1881
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1882
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1883
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1888
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1889
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1890
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1891
    const/4 v2, 0x1

    goto :goto_1

    .line 1895
    :sswitch_1
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1896
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1897
    add-int v6, v4, v3

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1898
    const/4 v2, 0x1

    goto :goto_1

    .line 1902
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1903
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1904
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1905
    const/4 v2, 0x1

    goto :goto_1

    .line 1909
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1910
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1911
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1912
    const/4 v2, 0x1

    goto :goto_1

    .line 1886
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1244
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1247
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1248
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1249
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1252
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1253
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1254
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1255
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1257
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1258
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1259
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1266
    :goto_0
    return-void

    .line 1261
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1263
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1264
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2244
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    .line 2245
    .local v1, count:I
    if-lez v1, :cond_2

    .line 2246
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 2247
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2249
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 2251
    .local v2, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2252
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2253
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2254
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2255
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2258
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2259
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2260
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2261
    if-lez v3, :cond_1

    .line 2262
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2267
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2276
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 2277
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2278
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2279
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2280
    .local v0, height:I
    if-lez v0, :cond_0

    .line 2281
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 2282
    .local v1, numColumns:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    div-int v5, v7, v1

    .line 2283
    .local v5, whichRow:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    .line 2284
    .local v2, rowCount:I
    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2288
    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2298
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 2299
    .local v0, numColumns:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2300
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2301
    .local v1, result:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2303
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2305
    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3124
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    if-eqz v4, :cond_5

    .line 3126
    const-string v4, "AddAnimation"

    const-string v5, "start add amimation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    .line 3132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 3133
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3135
    const/4 v0, 0x0

    .line 3136
    .local v0, diff:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3137
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_0

    .line 3138
    add-int/lit8 v0, v0, 0x1

    .line 3136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3143
    :cond_1
    if-le v1, v0, :cond_2

    .line 3144
    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to mAddAnimateViewList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3147
    .local v3, temp:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3148
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3150
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3151
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    .end local v0           #diff:I
    .end local v2           #j:I
    .end local v3           #temp:Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3155
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3157
    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to mAppearAnimateViewList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3160
    .restart local v3       #temp:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3161
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3167
    .end local v3           #temp:Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartAddAnimation()V

    .line 3172
    .end local v1           #i:I
    :cond_5
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    if-eqz v4, :cond_7

    .line 3173
    const-string v4, "Animation"

    const-string v5, "mIntroAnimationEnabled = true , prepare introanimation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    .line 3175
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 3177
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3179
    .restart local v3       #temp:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3181
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3184
    .end local v3           #temp:Landroid/view/View;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->StartIntroAnimation()V

    .line 3189
    .end local v1           #i:I
    :cond_7
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 3190
    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    .line 3191
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    .line 3192
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 3194
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3195
    .restart local v3       #temp:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3197
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3192
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3201
    .end local v3           #temp:Landroid/view/View;
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartRearrangeAnimation()V

    .line 3205
    .end local v1           #i:I
    :cond_9
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3208
    return-void
.end method

.method fillGap(Z)V
    .locals 9
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 367
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 368
    .local v1, numColumns:I
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 370
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    .line 372
    .local v0, count:I
    if-eqz p1, :cond_3

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, paddingTop:I
    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getListPaddingTop()I

    move-result v3

    .line 377
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 379
    .local v5, startOffset:I
    :goto_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 380
    .local v4, position:I
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 381
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 383
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    .line 384
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/htc/widget/HtcGridView;->correctTooHigh(III)V

    .line 401
    .end local v3           #paddingTop:I
    :goto_1
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_2
    move v5, v3

    .line 377
    goto :goto_0

    .line 386
    .end local v3           #paddingTop:I
    :cond_3
    const/4 v2, 0x0

    .line 387
    .local v2, paddingBottom:I
    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 388
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getListPaddingBottom()I

    move-result v2

    .line 390
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 392
    .restart local v5       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 393
    .restart local v4       #position:I
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 394
    sub-int/2addr v4, v1

    .line 398
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    .line 399
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/htc/widget/HtcGridView;->correctTooLow(III)V

    goto :goto_1

    .line 390
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 396
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionPosition(FF)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2322
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    .line 2323
    .local v1, childCount:I
    const/4 v3, -0x1

    .line 2324
    .local v3, position:I
    if-lez v1, :cond_1

    .line 2326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2327
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2328
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    .line 2329
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v4

    add-int v3, v4, v2

    move v4, v3

    .line 2336
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_1
    return v4

    .line 2326
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2336
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    .line 626
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 628
    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 629
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 630
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 631
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 632
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 643
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 630
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 636
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 637
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 638
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 636
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 643
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1840
    const/4 v0, 0x0

    .line 1841
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1842
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1844
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    .line 1845
    const/4 v0, 0x1

    .line 1853
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1854
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    .line 1857
    :cond_1
    return v0

    .line 1846
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1847
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1848
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1849
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    .line 1850
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2187
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2146
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1275
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_0

    .line 1276
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1280
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invalidate()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    if-nez v3, :cond_1

    .line 1450
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1453
    :cond_1
    :goto_0
    return-void

    .line 1290
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1291
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1293
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v5

    .line 1295
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1298
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1299
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1300
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1303
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1323
    .local v12, index:I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1324
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1328
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1331
    .end local v12           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1332
    .local v8, dataChanged:Z
    if-eqz v8, :cond_5

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->handleDataChanged()V

    .line 1338
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
    if-nez v3, :cond_1

    .line 1450
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1305
    .end local v8           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1306
    .restart local v12       #index:I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1307
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1316
    .end local v12           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1344
    .restart local v8       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    .line 1348
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1349
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1351
    .local v17, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1352
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1353
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1352
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1356
    .end local v11           #i:I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1361
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->detachAllViewsFromParent()V

    .line 1363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1397
    if-nez v5, :cond_13

    .line 1398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    .line 1401
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1423
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1425
    if-eqz v18, :cond_18

    .line 1426
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->positionSelector(ILandroid/view/View;)V

    .line 1427
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1436
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1437
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1438
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->updateScrollIndicators()V

    .line 1443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    .line 1447
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1449
    if-nez v3, :cond_1

    .line 1450
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1365
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_3
    if-eqz v14, :cond_c

    .line 1366
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/htc/widget/HtcGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1368
    .end local v18           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/htc/widget/HtcGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1370
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1372
    .end local v18           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1373
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1374
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1449
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_d

    .line 1450
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_d
    throw v19

    .line 1377
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1378
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1381
    .end local v18           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1382
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1385
    .end local v18           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1386
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1390
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1391
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1394
    .end local v18           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/htc/widget/HtcGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1395
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1399
    .end local v18           #sel:Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1403
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1404
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    .line 1406
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/htc/widget/HtcGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1407
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1404
    goto :goto_6

    .line 1409
    .end local v13           #last:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1412
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1416
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1428
    .end local v7           #childrenTop:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1430
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1432
    .end local v4           #child:Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1363
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 351
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 352
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 359
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 356
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 357
    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 3746
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v1, :cond_1

    .line 3747
    const-string v1, "Motion"

    const-string v2, "LAYER_TYPE_HARDWARE is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 3750
    .local v0, ChildView:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3751
    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3753
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3756
    .end local v0           #ChildView:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 2316
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2317
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3801
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 3812
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1993
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1995
    const/4 v1, -0x1

    .line 1996
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1997
    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2001
    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mTempRect:Landroid/graphics/Rect;

    .line 2002
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 2003
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    .line 2004
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2006
    invoke-direct {p0, v3, p2}, Lcom/htc/widget/HtcGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2004
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2010
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2011
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2012
    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/HtcGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2013
    invoke-static {p3, v6, p2}, Lcom/htc/widget/HtcGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 2015
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 2016
    move v4, v2

    .line 2017
    move v1, v3

    goto :goto_1

    .line 2022
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 2023
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    .line 2027
    :goto_2
    return-void

    .line 2025
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1658
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1667
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1672
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3842
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1151
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    .line 1153
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1154
    .local v18, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1155
    .local v12, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1156
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1158
    .local v13, heightSize:I
    if-nez v18, :cond_0

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1164
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1167
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1168
    .local v8, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcGridView;->determineColumns(I)Z

    move-result v11

    .line 1170
    .local v11, didNotInitiallyFit:Z
    const/4 v5, 0x0

    .line 1171
    .local v5, childHeight:I
    const/4 v7, 0x0

    .line 1173
    .local v7, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1174
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1175
    .local v10, count:I
    if-lez v10, :cond_2

    .line 1176
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1178
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1179
    .local v17, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1180
    new-instance v17, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v17           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1182
    .restart local v17       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1185
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 1187
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/htc/widget/HtcGridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1189
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/htc/widget/HtcGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1191
    .local v9, childWidthSpec:I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1193
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1194
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/htc/widget/HtcGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1201
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v17           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1206
    :cond_3
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1209
    .local v16, ourSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 1210
    .local v15, numColumns:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v10, :cond_5

    .line 1211
    add-int v16, v16, v5

    .line 1212
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1215
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    .line 1216
    move/from16 v16, v13

    .line 1220
    :cond_5
    move/from16 v13, v16

    .line 1223
    .end local v14           #i:I
    .end local v15           #numColumns:I
    .end local v16           #ourSize:I
    :cond_6
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1227
    .restart local v16       #ourSize:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    .line 1228
    :cond_7
    const/high16 v20, 0x100

    or-int v19, v19, v20

    .line 1232
    .end local v16           #ourSize:I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcGridView;->setMeasuredDimension(II)V

    .line 1233
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 1234
    return-void

    .line 1162
    .end local v5           #childHeight:I
    .end local v7           #childState:I
    .end local v8           #childWidth:I
    .end local v10           #count:I
    .end local v11           #didNotInitiallyFit:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1173
    .restart local v5       #childHeight:I
    .restart local v7       #childState:I
    .restart local v8       #childWidth:I
    .restart local v11       #didNotInitiallyFit:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1210
    .restart local v10       #count:I
    .restart local v14       #i:I
    .restart local v15       #numColumns:I
    .restart local v16       #ourSize:I
    :cond_b
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 3852
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3863
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3872
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 3223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 3224
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 3225
    .local v19, retValue:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v16

    .line 3228
    .local v16, mTotalCount:I
    packed-switch v3, :pswitch_data_0

    .line 3432
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    :goto_1
    return v22

    .line 3232
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 3233
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 3235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3236
    .local v15, mAnimateChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3240
    :cond_1
    if-eqz v15, :cond_2

    .line 3241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/htc/widget/HtcGridView;->startCancelAnimation(Landroid/view/View;I)V

    .line 3245
    .end local v15           #mAnimateChild:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3246
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelBouncing()V

    goto :goto_0

    .line 3253
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3254
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelBouncing()V

    goto/16 :goto_0

    .line 3260
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_5

    const/4 v12, 0x1

    .line 3262
    .local v12, inList:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v22

    if-eqz v22, :cond_4

    if-eqz v12, :cond_4

    .line 3264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->findMotionPosition(FF)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    .line 3265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3270
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 3271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3272
    .local v21, view:Landroid/view/View;
    if-eqz v21, :cond_4

    .line 3273
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcGridView;->startPressAnimationPartOne(Landroid/view/View;)V

    .line 3274
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 3281
    .end local v21           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3282
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    .line 3283
    .local v7, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v17

    .line 3285
    .local v17, numColumns:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mPre:F

    .line 3286
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    .line 3292
    move/from16 v11, v17

    .local v11, i:I
    :goto_3
    if-ge v11, v7, :cond_6

    .line 3293
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3294
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    .line 3292
    add-int v11, v11, v17

    goto :goto_3

    .line 3260
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v11           #i:I
    .end local v12           #inList:Z
    .end local v17           #numColumns:I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3298
    .restart local v7       #childCount:I
    .restart local v11       #i:I
    .restart local v12       #inList:Z
    .restart local v17       #numColumns:I
    :cond_6
    sub-int v22, v7, v17

    add-int/lit8 v11, v22, -0x1

    :goto_4
    if-lez v11, :cond_0

    .line 3299
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3300
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    .line 3298
    sub-int v11, v11, v17

    goto :goto_4

    .line 3310
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v11           #i:I
    .end local v12           #inList:Z
    .end local v17           #numColumns:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 3311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 3312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 3313
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 3315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3316
    .restart local v15       #mAnimateChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3320
    :cond_7
    if-eqz v15, :cond_8

    .line 3321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/htc/widget/HtcGridView;->startCancelAnimation(Landroid/view/View;I)V

    .line 3328
    .end local v15           #mAnimateChild:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mBouncingEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 3329
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mCurrent:F

    .line 3330
    const/4 v5, 0x0

    .local v5, atTop:Z
    const/4 v4, 0x0

    .line 3333
    .local v4, atBottom:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_12

    .line 3334
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v10

    .line 3335
    .local v10, fp:I
    if-nez v10, :cond_9

    .line 3336
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3337
    .local v14, m:Landroid/view/View;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 3338
    const/4 v5, 0x1

    .line 3341
    .end local v14           #m:Landroid/view/View;
    :cond_9
    if-nez v5, :cond_a

    .line 3342
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3343
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_1

    .line 3346
    :cond_a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    .line 3350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4120

    div-float v9, v22, v23

    .line 3355
    .local v9, dist:F
    :goto_5
    const/high16 v22, 0x4210

    cmpl-float v22, v9, v22

    if-lez v22, :cond_b

    const/high16 v9, 0x4210

    .line 3357
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    .line 3358
    .restart local v7       #childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v17

    .line 3360
    .restart local v17       #numColumns:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    if-ge v11, v7, :cond_c

    .line 3361
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3362
    .restart local v6       #child:Landroid/view/View;
    if-nez v6, :cond_e

    .line 3424
    .end local v4           #atBottom:Z
    .end local v5           #atTop:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v9           #dist:F
    .end local v10           #fp:I
    .end local v11           #i:I
    .end local v17           #numColumns:I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mPre:F

    goto/16 :goto_0

    .line 3352
    .restart local v4       #atBottom:Z
    .restart local v5       #atTop:Z
    .restart local v10       #fp:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4120

    div-float v9, v22, v23

    .restart local v9       #dist:F
    goto :goto_5

    .line 3363
    .restart local v6       #child:Landroid/view/View;
    .restart local v7       #childCount:I
    .restart local v11       #i:I
    .restart local v17       #numColumns:I
    :cond_e
    move/from16 v0, v17

    if-lt v11, v0, :cond_f

    .line 3364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v22, v0

    if-nez v22, :cond_10

    .line 3365
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 3360
    :cond_f
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 3366
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v22, v0

    if-lez v22, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_11

    .line 3367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v9, v22

    div-int v23, v11, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v8, v22, v23

    .line 3368
    .local v8, d:F
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    .line 3369
    .end local v8           #d:F
    :cond_11
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_f

    .line 3370
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    .line 3375
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v9           #dist:F
    .end local v10           #fp:I
    .end local v11           #i:I
    .end local v17           #numColumns:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_c

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    .line 3377
    .restart local v7       #childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v13

    .line 3378
    .local v13, lp:I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_13

    .line 3379
    add-int/lit8 v22, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3380
    .restart local v14       #m:Landroid/view/View;
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 3381
    const/4 v4, 0x1

    .line 3384
    .end local v14           #m:Landroid/view/View;
    :cond_13
    if-nez v4, :cond_14

    .line 3385
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3386
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_1

    .line 3389
    :cond_14
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    .line 3392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_18

    .line 3393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4120

    div-float v9, v22, v23

    .line 3398
    .restart local v9       #dist:F
    :goto_8
    const/16 v22, 0x0

    const/high16 v23, 0x4210

    cmpl-float v23, v9, v23

    if-lez v23, :cond_15

    const/high16 v9, 0x4210

    .end local v9           #dist:F
    :cond_15
    sub-float v9, v22, v9

    .line 3400
    .restart local v9       #dist:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v17

    .line 3401
    .restart local v17       #numColumns:I
    rem-int v18, v7, v17

    .line 3402
    .local v18, remainder:I
    sub-int v22, v7, v18

    add-int/lit8 v20, v22, -0x1

    .line 3404
    .local v20, startPos:I
    if-nez v18, :cond_16

    .line 3405
    sub-int v20, v20, v17

    .line 3408
    :cond_16
    add-int/lit8 v11, v7, -0x1

    .restart local v11       #i:I
    :goto_9
    if-ltz v11, :cond_c

    .line 3409
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3410
    .restart local v6       #child:Landroid/view/View;
    if-eqz v6, :cond_c

    .line 3412
    move/from16 v0, v20

    if-gt v11, v0, :cond_17

    .line 3413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 3414
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 3408
    :cond_17
    :goto_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 3395
    .end local v6           #child:Landroid/view/View;
    .end local v9           #dist:F
    .end local v11           #i:I
    .end local v17           #numColumns:I
    .end local v18           #remainder:I
    .end local v20           #startPos:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4120

    div-float v9, v22, v23

    .restart local v9       #dist:F
    goto :goto_8

    .line 3415
    .restart local v6       #child:Landroid/view/View;
    .restart local v11       #i:I
    .restart local v17       #numColumns:I
    .restart local v18       #remainder:I
    .restart local v20       #startPos:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v22, v0

    if-lez v22, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1a

    .line 3416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v9, v22

    sub-int v23, v20, v11

    div-int v23, v23, v17

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v8, v22, v23

    .line 3417
    .restart local v8       #d:F
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    .line 3418
    .end local v8           #d:F
    :cond_1a
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_17

    .line 3419
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    .line 3228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 3879
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onWindowFocusChanged(Z)V

    .line 3880
    if-nez p1, :cond_0

    .line 3881
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3882
    iget-boolean v1, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    if-eqz v1, :cond_0

    .line 3883
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 3884
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3885
    .local v0, mAnimateChild:Landroid/view/View;
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    if-ltz v1, :cond_0

    if-nez v0, :cond_1

    .line 3893
    .end local v0           #mAnimateChild:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3886
    .restart local v0       #mAnimateChild:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3887
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3889
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcGridView;->startCancelAnimation(Landroid/view/View;I)V

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1814
    const/4 v0, -0x1

    .line 1816
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1817
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1822
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1823
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    .line 1825
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    .line 1826
    const/4 v1, 0x1

    .line 1829
    :cond_1
    return v1

    .line 1818
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1819
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3487
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 3488
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    .line 3522
    :cond_0
    :goto_0
    return v3

    .line 3491
    :cond_1
    const-string v4, "Motion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in performItemClick , position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    const-string v4, "Motion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in performItemClick , mTouchViewPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const-string v4, "Motion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in performItemClick , mNeededToCancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    const-string v4, "Motion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in performItemClick , this.getFirstVisiblePosition() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    if-eqz v4, :cond_0

    .line 3499
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3500
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3503
    :cond_2
    iput-boolean v3, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    .line 3504
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3505
    .local v1, mAnimateChild:Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/htc/widget/HtcGridView;->startPressAnimationPartTwo(Landroid/view/View;I)V

    .line 3506
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 3508
    const-string v3, "Motion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel animation from DonwIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3511
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3512
    const-string v3, "Motion"

    const-string v4, "start cancel animation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcGridView;->startCancelAnimation(Landroid/view/View;I)V

    .line 3507
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3516
    .end local v2           #temp:Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3519
    .end local v0           #i:I
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public scrollToFirstAddedPosition(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 3762
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 3763
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    if-eqz v0, :cond_0

    .line 3764
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;->onScrollEnd()V

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3769
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollToFirstAddedPosition(I)V

    .line 3770
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    .line 3772
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gt p1, v0, :cond_3

    .line 3774
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    div-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 3775
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    .line 3778
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/widget/HtcGridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 3780
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 3781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    .line 3784
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    div-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 3785
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    mul-int/lit8 v0, v0, 0x5

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    .line 3788
    :cond_5
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/widget/HtcGridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1934
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1935
    .local v5, selectedPosition:I
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    .line 1936
    .local v4, numColumns:I
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1940
    .local v0, count:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1941
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1942
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1949
    .local v1, endOfRow:I
    :goto_0
    const/4 v3, 0x0

    .line 1950
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1951
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_0

    .line 1975
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1976
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->playSoundEffect(I)V

    .line 1977
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    .line 1980
    :cond_1
    if-eqz v6, :cond_2

    .line 1981
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    .line 1984
    :cond_2
    return v3

    .line 1944
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1945
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1946
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_0

    .line 1953
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1955
    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1956
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1957
    const/4 v3, 0x1

    .line 1959
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1964
    :pswitch_1
    if-lez v5, :cond_0

    .line 1966
    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1967
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    .line 1968
    const/4 v3, 0x1

    .line 1970
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    .line 311
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 312
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 314
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 315
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 318
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 321
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 322
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 323
    iput-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 324
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkFocus()V

    .line 326
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 327
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 329
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 332
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 333
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 337
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    .line 346
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    .line 347
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 341
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkFocus()V

    .line 343
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setAddPositionsList(Ljava/util/ArrayList;)V
    .locals 2
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
    .local p1, index:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .line 2343
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2344
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2345
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2346
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2347
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2348
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2350
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isAddAnimationEnabled()Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2351
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2366
    :cond_0
    :goto_0
    return-void

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v0, :cond_2

    .line 2356
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationStart()V

    .line 2359
    :cond_2
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    .line 2361
    iput-boolean v1, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    .line 2363
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 2157
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2158
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    .line 2159
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2161
    :cond_0
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 7
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
    .local p1, index:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2458
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2459
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2460
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2461
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2462
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2463
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2464
    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    .line 2465
    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    .line 2466
    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    .line 2467
    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    .line 2468
    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    .line 2469
    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    .line 2471
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isDelAnimationEnabled()Z

    move-result v3

    if-eq v3, v6, :cond_2

    .line 2479
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2483
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v3, :cond_3

    .line 2484
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationStart()V

    .line 2488
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    .line 2491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2492
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    add-int v1, v3, v0

    .line 2493
    .local v1, pos:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2495
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2500
    .end local v1           #pos:I
    :cond_5
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_6

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_6

    .line 2501
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 2502
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2511
    :cond_6
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_7

    .line 2512
    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    .line 2518
    :cond_7
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 2519
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    if-ge v3, v4, :cond_8

    .line 2520
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    .line 2518
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2526
    :cond_9
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 2527
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    add-int v1, v3, v0

    .line 2528
    .restart local v1       #pos:I
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 2529
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2531
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2533
    .local v2, tempView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    .end local v2           #tempView:Landroid/view/View;
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2537
    :cond_b
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2539
    .restart local v2       #tempView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2545
    .end local v1           #pos:I
    .end local v2           #tempView:Landroid/view/View;
    :cond_c
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 2546
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    .line 2551
    :goto_5
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    .line 2555
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    .line 2559
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartDisappearAnimation()V

    goto/16 :goto_0

    .line 2548
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    goto :goto_5
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 2087
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2088
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    .line 2089
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2091
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 2103
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2104
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    .line 2105
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2107
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 2171
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2172
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    .line 2173
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2175
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    .line 1626
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1627
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    .line 1628
    return-void

    .line 1624
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1637
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1639
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    .line 1640
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->layoutChildren()V

    .line 1642
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1644
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1647
    .local v2, previous:I
    :goto_1
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1648
    .local v1, nextRow:I
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1650
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1651
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    .line 1654
    :cond_0
    return-void

    .line 1642
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1644
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 2135
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2136
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    .line 2137
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2139
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 2120
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2121
    iput p1, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    .line 2122
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    .line 2124
    :cond_0
    return-void
.end method

.method skipScroll()Z
    .locals 1

    .prologue
    .line 3218
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 974
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollByOffset(I)V

    .line 975
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 960
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollToPosition(I)V

    .line 961
    return-void
.end method
