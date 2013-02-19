.class public abstract Lcom/htc/widget/AbsSpinner;
.super Lcom/htc/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AbsSpinner$1;,
        Lcom/htc/widget/AbsSpinner$WaveRunnable;,
        Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;,
        Lcom/htc/widget/AbsSpinner$RecycleBin;,
        Lcom/htc/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAND_MIN_WIDTH:I = 0x68

.field private static final PORT_MIN_WIDTH:I = 0x55


# instance fields
.field private ITEM_SIZE:I

.field private MAX_AVERAGE_COUNT:I

.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mAnimationWidthHeight:I

.field mBlockLayoutRequests:Z

.field private mChangeWidthHeightAnimation:Z

.field private mChangeWidthHeightRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpandedHeight:I

.field mExpandedPos:I

.field private mExpandedWidth:I

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/widget/FastScroller;

.field mFirstItemX:I

.field mFirstItemY:I

.field mHeightMeasureSpec:I

.field mHighBorder:I

.field private mIndicatorIndex:I

.field private mIsDragBinGridView:Z

.field private mLastIndicatorIndex:I

.field private mLateShrinkedFlag:Z

.field mLowBorder:I

.field final mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

.field private mReducedHeight:I

.field mReducedPos:I

.field private mReducedWidth:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mShrinkedHeight:I

.field mShrinkedPos:I

.field private mShrinkedWidth:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

.field private mWaveRunnableRunning:Z

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 55
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 56
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 57
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 58
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 86
    iput-boolean v3, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    .line 88
    iput-object v4, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 765
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 767
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    .line 770
    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedHeight:I

    .line 783
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    .line 784
    iput v3, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 820
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 821
    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    .line 824
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 825
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 826
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 828
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 829
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 901
    new-instance v0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1019
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1021
    new-instance v0, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    .line 1221
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 102
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setOrientation()V

    .line 103
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 56
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 57
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 58
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 59
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 61
    new-instance v3, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 86
    iput-boolean v6, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    .line 88
    iput-object v7, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 765
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 767
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    .line 770
    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedHeight:I

    .line 783
    const/16 v3, 0x3c

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    .line 784
    iput v6, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 820
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 821
    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    .line 824
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 825
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 826
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 828
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 829
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 901
    new-instance v3, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1019
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1021
    new-instance v3, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    .line 1221
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 114
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setOrientation()V

    .line 115
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    .line 118
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 122
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 123
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 126
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mReducedHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/widget/AbsSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setFocusable(Z)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 141
    return-void
.end method

.method private setMaxAverageCount()V
    .locals 3

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_5

    .line 1193
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x68

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 1201
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1203
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1204
    add-int/lit8 v0, v0, 0x1

    .line 1206
    :cond_2
    if-lez v0, :cond_6

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_6

    .line 1207
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1213
    .end local v0           #count:I
    :cond_3
    :goto_1
    return-void

    .line 1196
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x55

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto :goto_0

    .line 1198
    :cond_5
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto :goto_0

    .line 1208
    .restart local v0       #count:I
    :cond_6
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v0, v1, :cond_7

    .line 1209
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    goto :goto_1

    .line 1211
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    .line 96
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->access$1500(Lcom/htc/widget/AbsSpinner$WaveRunnable;)V

    .line 1218
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->access$1600(Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;)V

    .line 1219
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 655
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 319
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 324
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedHeight()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsHeight()I
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 727
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 729
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsHeightWithNoAnimation()I
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 738
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    add-int/lit8 v0, v0, 0x1

    .line 741
    :cond_0
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    .line 747
    .end local v0           #count:I
    :goto_0
    return v1

    .line 744
    .restart local v0       #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    goto :goto_0

    .line 747
    .end local v0           #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method getLayoutParamsWidth()I
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 796
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 799
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidthWithNoAnimation()I
    .locals 3

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 806
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    add-int/lit8 v0, v0, 0x1

    .line 810
    :cond_0
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    .line 816
    .end local v0           #count:I
    :goto_0
    return v1

    .line 813
    .restart local v0       #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->ITEM_SIZE:I

    goto :goto_0

    .line 816
    .end local v0           #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method getMaxCapacity()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return v0
.end method

.method getReducedHeight()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method getReducedPosition()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 397
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedHeight()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedHeight:I

    return v0
.end method

.method getShrinkedPosition()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/FastScroller;->onScroll(Lcom/htc/widget/AbsSpinner;III)V

    .line 680
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onAttachedToWindow()V

    .line 689
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onAttachedToWindow()V

    .line 692
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 717
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setOrientation()V

    .line 720
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 722
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onDetachedFromWindow()V

    .line 704
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onDetachedFromWindow()V

    .line 705
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 665
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 670
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 220
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 221
    .local v7, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 222
    .local v0, heightMode:I
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AdapterView;->onMeasure(II)V

    .line 226
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    .line 230
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v9, v11, :cond_6

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    :goto_0
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v9, v11, :cond_7

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    :goto_1
    iput v9, v10, Landroid/graphics/Rect;->left:I

    .line 232
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v9, v11, :cond_8

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v9, v10, Landroid/graphics/Rect;->right:I

    .line 233
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v9, v11, :cond_9

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 235
    iget-boolean v9, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->handleDataChanged()V

    .line 238
    :cond_0
    const/4 v2, 0x1

    .line 239
    .local v2, needsMeasuring:Z
    const/4 v3, 0x0

    .line 240
    .local v3, preferredHeight:I
    const/4 v4, 0x0

    .line 242
    .local v4, preferredWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v5

    .line 243
    .local v5, selectedPosition:I
    if-ltz v5, :cond_4

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 245
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v6

    .line 246
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_1

    .line 247
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 249
    :cond_1
    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5, v6}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 255
    :cond_2
    if-eqz v6, :cond_4

    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_3

    .line 259
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 260
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 263
    :cond_3
    invoke-virtual {p0, v6, p1, p2}, Lcom/htc/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 265
    invoke-virtual {p0, v6}, Lcom/htc/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 266
    invoke-virtual {p0, v6}, Lcom/htc/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 268
    const/4 v2, 0x0

    .line 269
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v9, :cond_4

    .line 271
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v9, p0, v6, p1, p2}, Lcom/htc/widget/FastScroller;->measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V

    .line 272
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v9}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    iput v9, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    .line 274
    iget-boolean v9, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_a

    .line 275
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v10}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 282
    .end local v6           #view:Landroid/view/View;
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 284
    iget-boolean v9, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_b

    .line 286
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 288
    if-nez v7, :cond_5

    .line 289
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 300
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 301
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 303
    invoke-static {v3, p2}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v1

    .line 304
    .local v1, heightSize:I
    invoke-static {v4, p1}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v8

    .line 306
    .local v8, widthSize:I
    const-string v9, "Deck"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, v8, v1}, Lcom/htc/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 308
    iput p2, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 309
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 310
    return-void

    .line 230
    .end local v1           #heightSize:I
    .end local v2           #needsMeasuring:Z
    .end local v3           #preferredHeight:I
    .end local v4           #preferredWidth:I
    .end local v5           #selectedPosition:I
    .end local v8           #widthSize:I
    :cond_6
    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_0

    .line 231
    :cond_7
    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_1

    .line 232
    :cond_8
    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 233
    :cond_9
    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3

    .line 277
    .restart local v2       #needsMeasuring:Z
    .restart local v3       #preferredHeight:I
    .restart local v4       #preferredWidth:I
    .restart local v5       #selectedPosition:I
    .restart local v6       #view:Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v10}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_4

    .line 293
    .end local v6           #view:Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 295
    if-nez v0, :cond_5

    .line 296
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    goto :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/AbsSpinner$SavedState;

    .line 550
    .local v0, ss:Lcom/htc/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 552
    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 553
    iput-boolean v5, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 554
    iput-boolean v5, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 555
    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/AdapterView;->mSyncRowId:J

    .line 556
    iget v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/AdapterView;->mSyncPosition:I

    .line 557
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/AdapterView;->mSyncMode:I

    .line 558
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 560
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 531
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 532
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 533
    .local v0, ss:Lcom/htc/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    .line 534
    iget-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    .line 539
    :goto_0
    return-object v0

    .line 537
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/FastScroller;->onSizeChanged(IIII)V

    .line 645
    :cond_0
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/AbsSpinner;->onMeasure(II)V

    .line 646
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 448
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 449
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 450
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 454
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 455
    invoke-virtual {p0, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 457
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 458
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    iget v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 463
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 454
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 463
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 338
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 339
    .local v4, recycleBin:Lcom/htc/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 342
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 343
    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 344
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 345
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 416
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->requestLayout()V

    .line 418
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 200
    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 201
    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 203
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 204
    iput v2, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    .line 205
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/AdapterView;->mOldSelectedRowId:J

    .line 207
    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    .line 210
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 155
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 157
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 165
    iput v0, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    .line 166
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/AdapterView;->mOldSelectedRowId:J

    .line 168
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    .line 169
    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/AdapterView;->mOldItemCount:I

    .line 170
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 171
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    .line 173
    new-instance v1, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 174
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 178
    .local v0, position:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 181
    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    .line 193
    .end local v0           #position:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 194
    return-void

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    .line 188
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    .line 190
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setDragBinGridView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    .line 788
    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2
    .parameter "expos"

    .prologue
    .line 834
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 836
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 841
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 842
    return-void

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedHeight:I

    goto :goto_0
.end method

.method setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    .line 609
    if-eqz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Lcom/htc/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->stop()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 885
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 886
    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0
    .parameter "lastin"

    .prologue
    .line 893
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 894
    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 1224
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 366
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 367
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    .line 368
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 354
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 356
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 357
    return-void

    .line 354
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 379
    iget v1, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 381
    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 382
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 383
    invoke-virtual {p0, v0, p2}, Lcom/htc/widget/AbsSpinner;->layout(IZ)V

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 386
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2
    .parameter "shpos"

    .prologue
    const/4 v1, -0x1

    .line 856
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 857
    if-eq p1, v1, :cond_0

    .line 858
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setIndicatorIndex(I)V

    .line 859
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    .line 861
    :cond_0
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 862
    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0
    .parameter "shpos"
    .parameter "isRequestLayout"

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 850
    if-eqz p2, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 853
    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->start()V

    .line 1013
    return-void
.end method

.method startWidthHeightAnimation(II)V
    .locals 1
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->start(II)V

    .line 905
    return-void
.end method
