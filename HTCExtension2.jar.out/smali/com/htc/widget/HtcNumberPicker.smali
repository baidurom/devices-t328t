.class public Lcom/htc/widget/HtcNumberPicker;
.super Landroid/widget/RelativeLayout;
.source "HtcNumberPicker.java"

# interfaces
.implements Lcom/htc/view/table/AbstractTableView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcNumberPicker$TableAdapter;,
        Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;,
        Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;
    }
.end annotation


# static fields
.field public static final SHADOW_LAYER_1ST:I = 0x0

.field public static final SHADOW_LAYER_2ND:I = 0x1

.field public static final SHADOW_LAYER_3RD:I = 0x2


# instance fields
.field private AM:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private PM:Ljava/lang/String;

.field private final ahanLog:Z

.field private currentCV:I

.field private cv:Landroid/widget/RelativeLayout;

.field private isRightIdle:Z

.field private mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

.field private mAmPmTextSize:I

.field private mCenterCV:I

.field private mChangeBkg:Z

.field private mChangeTextColor:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mCustomShadow:Z

.field private mDigits:I

.field private mEffectId:I

.field mEnd:I

.field private mFeedbackEnabled:Z

.field private mFeedbackWhenCenterViewChanged:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHapticTimeStamp1:J

.field private mHapticTimeStamp2:J

.field private mHtcContext:Landroid/content/Context;

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field mIsNeverSlidedBeforeSet:Z

.field mIsOnInitState:Z

.field private mLayoutParams:Lcom/htc/view/table/TableLayoutParams;

.field private mPos:I

.field mReadyToSet:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScrollControl:Lcom/htc/widget/TableViewScrollControl;

.field private mShadowId:I

.field mStart:I

.field private mTableCenter:I

.field private mTableHeight:I

.field private mTableInflater:Landroid/view/LayoutInflater;

.field private mTableView:Lcom/htc/widget/MyTableView;

.field private mTableViewSlideOffset:I

.field private mTextColor:I

.field private mTumblerId:I

.field private previousCV:I

.field private shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

.field private shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

.field private shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/high16 v3, -0x8000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v2, "NumberTableView"

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->LOG_TAG:Ljava/lang/String;

    .line 47
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->ahanLog:Z

    .line 53
    iput-object v7, p0, Lcom/htc/widget/HtcNumberPicker;->mScrollControl:Lcom/htc/widget/TableViewScrollControl;

    .line 61
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 63
    iput-object v7, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 64
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    .line 215
    new-instance v2, Lcom/htc/widget/HtcNumberPicker$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcNumberPicker$1;-><init>(Lcom/htc/widget/HtcNumberPicker;)V

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 223
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 265
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    .line 281
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 282
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    .line 399
    iput v3, p0, Lcom/htc/widget/HtcNumberPicker;->currentCV:I

    iput v3, p0, Lcom/htc/widget/HtcNumberPicker;->previousCV:I

    iput v3, p0, Lcom/htc/widget/HtcNumberPicker;->mCenterCV:I

    .line 400
    iput v4, p0, Lcom/htc/widget/HtcNumberPicker;->mEffectId:I

    .line 401
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackWhenCenterViewChanged:Z

    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackEnabled:Z

    .line 508
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableViewSlideOffset:I

    .line 82
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    .line 83
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20501e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    .line 84
    iget v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableCenter:I

    .line 86
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    .line 87
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090065

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    const v2, 0x2020138

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MyTableView;

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    .line 92
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 94
    new-instance v0, Lcom/htc/view/table/TableLayoutParams;

    invoke-direct {v0}, Lcom/htc/view/table/TableLayoutParams;-><init>()V

    .line 95
    .local v0, mLayoutParams:Lcom/htc/view/table/TableLayoutParams;
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    .line 96
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    .line 97
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->setOrientation(I)V

    .line 98
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v4, v0}, Lcom/htc/widget/MyTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    .line 99
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MyTableView;->setNumColumnRows(I)V

    .line 100
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 101
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 102
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 103
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 105
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    new-instance v1, Lcom/htc/widget/TableViewScrollControl;

    .end local v1           #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-direct {v1}, Lcom/htc/widget/TableViewScrollControl;-><init>()V

    .line 109
    .restart local v1       #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-virtual {v1, v5}, Lcom/htc/widget/TableViewScrollControl;->setOrientation(I)V

    .line 110
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/TableViewScrollControl;->setTableView(Lcom/htc/view/table/TableView;)V

    .line 112
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MyTableView;->setScrollControl(Lcom/htc/view/ScrollControl;)V

    .line 114
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Lcom/htc/widget/MyTableView;->setSelector(I)V

    .line 120
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MyTableView;->setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mDigits:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->AM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->PM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mCustomShadow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeTextColor:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method private hideViewOutOfRange(Lcom/htc/view/table/AbstractTableView;I)V
    .locals 7
    .parameter "list"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, temp:Landroid/view/View;
    const/4 v3, 0x0

    .line 446
    .local v3, threshold:F
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 448
    .local v1, isOutOfRange:Ljava/lang/Boolean;
    if-eqz p1, :cond_5

    .line 449
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 450
    invoke-virtual {p1, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_2

    .line 452
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3dcccccd

    mul-float v3, v4, v6

    .line 453
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, v3

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    .line 453
    goto :goto_1

    :cond_4
    move v4, v5

    .line 454
    goto :goto_2

    .line 458
    .end local v0           #i:I
    :cond_5
    return-void
.end method

.method private slideWithOffsetForWorkaround(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->slideWithOffset(I)V

    .line 338
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 339
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 340
    :cond_1
    return-void
.end method


# virtual methods
.method public changeBkg()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    .line 146
    return-void
.end method

.method public getCenterView()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v1}, Lcom/htc/widget/MyTableView;->getCenterChildPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHapticEnabled()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackEnabled:Z

    return v0
.end method

.method public getTableView()Lcom/htc/view/table/TableView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    return-object v0
.end method

.method public getTableViewSlideOffset()I
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableViewSlideOffset:I

    if-gez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20501e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableViewSlideOffset:I

    .line 516
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableViewSlideOffset:I

    return v0
.end method

.method public notifyOnInitState()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    .line 328
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 272
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 273
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 274
    .local v1, screenH:I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 275
    .local v2, screenW:I
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-nez v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v4}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getEnd()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x400

    if-eq v2, v3, :cond_2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_0

    .line 277
    :cond_2
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/view/table/AbstractTableView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 476
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcNumberPicker;->hideViewOutOfRange(Lcom/htc/view/table/AbstractTableView;I)V

    .line 479
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackWhenCenterViewChanged:Z

    if-eqz v0, :cond_0

    .line 482
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    if-ne p2, v3, :cond_0

    .line 420
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/MyTableView;->setStopExcept(I)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-ne v1, p1, :cond_1

    .line 425
    if-ne v3, p2, :cond_2

    .line 426
    iget-boolean v1, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackWhenCenterViewChanged:Z

    .line 427
    iput-boolean v3, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    if-ne v3, v1, :cond_3

    if-nez p2, :cond_3

    .line 431
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 432
    invoke-virtual {p0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 433
    .local v0, target:I
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackWhenCenterViewChanged:Z

    .line 435
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;->onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_0

    .line 437
    .end local v0           #target:I
    :cond_3
    if-nez p2, :cond_1

    .line 438
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 724
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    .line 725
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->onDestroy()V

    .line 727
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 729
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    .line 730
    return-void
.end method

.method public setBackground(II)V
    .locals 2
    .parameter "tumblerId"
    .parameter "shadowId"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mTumblerId:I

    .line 156
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker;->mShadowId:I

    .line 157
    const v0, 0x2020136

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTumblerId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    const v0, 0x2020137

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v0, 0x2020139

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mShadowId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    return-void
.end method

.method public setCenter(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/MyTableView;->setCenterView(II)V

    .line 358
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcNumberPicker;->hideViewOutOfRange(Lcom/htc/view/table/AbstractTableView;I)V

    .line 362
    :cond_0
    return-void
.end method

.method public setCenterView(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x258

    const/4 v7, 0x1

    const/4 v6, -0x5

    const/4 v5, 0x0

    .line 285
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-nez v3, :cond_0

    .line 320
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-boolean v3, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v3, :cond_8

    .line 289
    iget-boolean v3, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    if-eqz v3, :cond_1

    iget p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 290
    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 291
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p1

    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v4}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/HtcNumberPicker;->mCurrent:I

    .line 293
    iget v3, p0, Lcom/htc/widget/HtcNumberPicker;->mCurrent:I

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcNumberPicker;->setCenter(I)V

    .line 294
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 295
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 296
    .local v1, screenH:I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 298
    .local v2, screenW:I
    if-eqz p1, :cond_2

    const/16 v3, 0x3b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a

    if-eq p1, v3, :cond_2

    if-eq p1, v7, :cond_2

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    const/16 v3, 0x17

    if-ne p1, v3, :cond_6

    .line 300
    :cond_2
    const/16 v3, 0x500

    if-eq v1, v3, :cond_3

    const/16 v3, 0x500

    if-ne v2, v3, :cond_4

    .line 311
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 312
    iput-boolean v7, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 313
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    goto :goto_0

    .line 302
    :cond_4
    if-eq v2, v9, :cond_5

    if-ne v2, v8, :cond_3

    .line 303
    :cond_5
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    goto :goto_1

    .line 306
    :cond_6
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getEnd()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    if-eq v2, v9, :cond_7

    if-ne v2, v8, :cond_3

    .line 307
    :cond_7
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 308
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    goto :goto_1

    .line 315
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #screenH:I
    .end local v2           #screenW:I
    :cond_8
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 317
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public setCustomShadow(IFFFI)V
    .locals 7
    .parameter "layer"
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    const/4 v6, 0x1

    .line 208
    if-nez p1, :cond_1

    new-instance v0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;-><init>(Lcom/htc/widget/HtcNumberPicker;FFFI)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    .line 212
    :goto_0
    iput-boolean v6, p0, Lcom/htc/widget/HtcNumberPicker;->mCustomShadow:Z

    .line 213
    :cond_0
    return-void

    .line 209
    :cond_1
    if-ne p1, v6, :cond_2

    new-instance v0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;-><init>(Lcom/htc/widget/HtcNumberPicker;FFFI)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;-><init>(Lcom/htc/widget/HtcNumberPicker;FFFI)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    goto :goto_0
.end method

.method public setHapticEnabled(ZI)V
    .locals 1
    .parameter "bHapticEnabled"
    .parameter "iHapticEffectId"

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mFeedbackEnabled:Z

    .line 496
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 126
    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 227
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    .line 228
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    .line 229
    new-instance v0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 233
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "candidates"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 241
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    .line 242
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    .line 243
    new-instance v0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 247
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setRepeatEnable(Z)V

    .line 746
    :cond_0
    return-void
.end method

.method public setShowNumberDigits(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 250
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mDigits:I

    .line 251
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 5
    .parameter "textColor"

    .prologue
    .line 173
    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-nez v4, :cond_0

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v4}, Lcom/htc/widget/MyTableView;->getChildCount()I

    move-result v0

    .line 176
    .local v0, childCount:I
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mTextColor:I

    .line 178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 179
    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v4, v1}, Lcom/htc/widget/MyTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 180
    .local v2, tmpRl:Landroid/widget/RelativeLayout;
    const v4, 0x2020060

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, tmpTv:Landroid/widget/TextView;
    iget v4, p0, Lcom/htc/widget/HtcNumberPicker;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    .end local v2           #tmpRl:Landroid/widget/RelativeLayout;
    .end local v3           #tmpTv:Landroid/widget/TextView;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeTextColor:Z

    goto :goto_0
.end method

.method public slideWithOffset(I)V
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->slideWithOffset(I)V

    .line 387
    if-lez p1, :cond_0

    .line 389
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 392
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 393
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 394
    return-void

    .line 390
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    goto :goto_0
.end method
