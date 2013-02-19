.class public Lcom/htc/painting/penmenu/history/PenHistory;
.super Landroid/widget/FrameLayout;
.source "PenHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/history/PenHistory$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenHistory"


# instance fields
.field private final DURATION:I

.field private final HISTORY_SIZE:I

.field private final INTERVAL:I

.field private final PEN_VIEW_SIZE:I

.field private mAnimInProgress:Z

.field private mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

.field private mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

.field private mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mPenDataReady:Z

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mPenViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/history/PenHistoryPenView;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

.field private mSize:I

.field private mState:Lcom/htc/painting/penmenu/history/PenHistory$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/history/PenHistory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/history/PenHistory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    .line 115
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    .line 117
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    .line 119
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    .line 120
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    .line 122
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->init()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/painting/penmenu/history/PenHistory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/menu/OnCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistory$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->getAppearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private findPenViewIndexByHistoryIndex(I)I
    .locals 3
    .parameter "historyIndex"

    .prologue
    .line 307
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 308
    :cond_0
    const/4 v1, -0x1

    .line 317
    :cond_1
    :goto_0
    return v1

    .line 310
    :cond_2
    const/4 v1, -0x1

    .line 311
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getHistoryIndex()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 313
    move v1, v0

    .line 314
    goto :goto_0

    .line 311
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAppearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v6, 0x0

    .line 601
    if-nez p1, :cond_0

    .line 602
    const-string v3, "PenHistory"

    const-string v4, "getAppearAnim - penView is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    .line 629
    :goto_0
    return-object v0

    .line 605
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 606
    .local v0, appearAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 608
    .local v2, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 609
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 610
    .local v1, fadeIn:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 612
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 613
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$5;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$5;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v6, 0x0

    .line 583
    if-nez p1, :cond_0

    .line 584
    const-string v3, "PenHistory"

    const-string v4, "getDisappearAnim - penView is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 587
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 588
    .local v0, disappearAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 590
    .local v2, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 591
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 592
    .local v1, fadeOut:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 594
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 595
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getHideBackgroundAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 527
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 529
    .local v1, hideAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 531
    .local v2, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 532
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 533
    .local v0, fadeOut:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 535
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$4;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$4;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 553
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 554
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 556
    return-object v1
.end method

.method private getHidePenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 503
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v1

    .line 505
    .local v1, size:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-direct {v0, v5, v2, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 507
    .local v0, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 508
    new-instance v2, Lcom/htc/painting/penmenu/history/PenHistory$3;

    invoke-direct {v2, p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory$3;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 523
    return-object v0
.end method

.method private getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pen"

    .prologue
    const/4 v1, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v1

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v2, :cond_2

    .line 325
    const-string v2, "PenHistory"

    const-string v3, "getPenIcon - mPenMenu is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 329
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getHistoryIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    .line 634
    if-nez p1, :cond_0

    .line 635
    const-string v1, "PenHistory"

    const-string v2, "getRotateNextAnim - penView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 643
    :goto_0
    return-object v0

    .line 639
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c

    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 642
    .local v0, rotateNext:Landroid/view/animation/RotateAnimation;
    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private getRotatePreviousAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    .line 648
    if-nez p1, :cond_0

    .line 649
    const-string v1, "PenHistory"

    const-string v2, "getRotatePreviousAnim - penView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x0

    .line 657
    :goto_0
    return-object v0

    .line 653
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x42b4

    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 656
    .local v0, rotatePrev:Landroid/view/animation/RotateAnimation;
    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private getShowBackgroundAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 402
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 403
    .local v2, showAnim:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 406
    .local v1, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 407
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 408
    .local v0, fadeIn:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 410
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$2;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$2;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 425
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    return-object v2
.end method

.method private getShowPenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v1

    .line 380
    .local v1, size:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-direct {v0, v2, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 382
    .local v0, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 383
    new-instance v2, Lcom/htc/painting/penmenu/history/PenHistory$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory$1;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 779
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    sget-object v12, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    if-ne v11, v12, :cond_1

    .line 780
    const/4 v5, 0x0

    .line 855
    :cond_0
    :goto_0
    return v5

    .line 783
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 785
    const/4 v5, 0x1

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/htc/painting/penmenu/history/PenHistory;->isValideArea(FF)Z

    move-result v5

    .line 790
    .local v5, inValidArea:Z
    iget-boolean v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    if-eqz v11, :cond_0

    .line 792
    const/4 v8, 0x0

    .line 793
    .local v8, ret:Z
    const/4 v11, 0x1

    if-ne v5, v11, :cond_7

    .line 794
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v11, :cond_3

    .line 795
    const-string v11, "PenHistory"

    const-string v12, "handleMotionEvent - mPenMenu is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v5, 0x1

    goto :goto_0

    .line 799
    :cond_3
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 802
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 805
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_7

    .line 806
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 807
    .local v6, obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v2, v11, v12

    .line 808
    .local v2, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float v3, v11, v12

    .line 809
    .local v3, dy:F
    invoke-virtual {v6, v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->contain(FF)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_7

    .line 814
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 815
    const/4 v8, 0x1

    .line 817
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getHistoryIndex()I

    move-result v9

    .line 821
    .local v9, selectedIndex:I
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v11, v9}, Lcom/htc/painting/penmenu/history/HistoryQueue;->peek(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v10

    .line 824
    .local v10, selectedPen:Lcom/htc/painting/penmenu/Pen;
    invoke-direct {p0, v10}, Lcom/htc/painting/penmenu/history/PenHistory;->getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/htc/painting/penmenu/history/PenHistory;->setupSelectPenView(Lcom/htc/painting/penmenu/history/PenHistoryPenView;Landroid/graphics/Bitmap;)V

    .line 827
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPen()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 830
    .local v1, currentPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v11, v9, v1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->update(ILcom/htc/painting/penmenu/Pen;)I

    move-result v7

    .line 833
    .local v7, orderInHistory:I
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 836
    const/4 v0, -0x1

    .line 837
    .local v0, appearViewIndex:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_6

    .line 838
    invoke-direct {p0, v7}, Lcom/htc/painting/penmenu/history/PenHistory;->findPenViewIndexByHistoryIndex(I)I

    move-result v0

    .line 846
    :cond_6
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11, v10}, Lcom/htc/painting/penmenu/PenMenu;->setCurrentPen(Lcom/htc/painting/penmenu/Pen;)V

    .line 848
    invoke-direct {p0, v4, v0}, Lcom/htc/painting/penmenu/history/PenHistory;->startPenViewAnimation(II)V

    .end local v0           #appearViewIndex:I
    .end local v1           #currentPen:Lcom/htc/painting/penmenu/Pen;
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #i:I
    .end local v6           #obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .end local v7           #orderInHistory:I
    .end local v9           #selectedIndex:I
    .end local v10           #selectedPen:Lcom/htc/painting/penmenu/Pen;
    :cond_7
    move v5, v8

    .line 855
    goto/16 :goto_0

    .line 805
    .restart local v2       #dx:F
    .restart local v3       #dy:F
    .restart local v4       #i:I
    .restart local v6       #obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 21

    .prologue
    .line 126
    new-instance v17, Lcom/htc/painting/penmenu/history/HistoryQueue;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/htc/painting/penmenu/history/HistoryQueue;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 129
    .local v10, inflator:Landroid/view/LayoutInflater;
    const v17, 0x209006c

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    sget-object v17, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x20802ba

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 135
    .local v6, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    .line 137
    const v17, 0x2020148

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 140
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    .line 141
    .local v8, count:I
    const/high16 v17, 0x42b4

    mul-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 142
    .local v7, beginAngle:F
    const/high16 v17, 0x42b4

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 143
    .local v5, angleRange:F
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x55

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    .line 147
    .local v3, ICON_ORBIT_RADIUS:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 148
    new-instance v12, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v12, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v12, v11}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    int-to-float v0, v9

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-float v4, v7, v17

    .line 152
    .local v4, angle:F
    int-to-double v0, v3

    move-wide/from16 v17, v0

    float-to-double v0, v4

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v13, v17, v19

    .line 153
    .local v13, x:D
    int-to-double v0, v3

    move-wide/from16 v17, v0

    float-to-double v0, v4

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v15, v17, v19

    .line 155
    .local v15, y:D
    double-to-float v0, v13

    move/from16 v17, v0

    double-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconPos(FF)V

    .line 156
    invoke-virtual {v12, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconAngle(F)V

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/painting/penmenu/history/PenHistory;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 162
    .end local v4           #angle:F
    .end local v12           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .end local v13           #x:D
    .end local v15           #y:D
    :cond_0
    new-instance v17, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 168
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 756
    iget-object v5, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getActionPanelSize()I

    move-result v5

    int-to-float v2, v5

    .line 757
    .local v2, innerRadius:F
    iget-object v5, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v5

    int-to-float v3, v5

    .line 758
    .local v3, outerRadius:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v5, p1

    .line 759
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, p2

    .line 764
    .local v1, dy:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float v4, v5, v6

    .line 765
    .local v4, rr:F
    mul-float v5, v2, v2

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    mul-float v5, v3, v3

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 766
    const/4 v5, 0x1

    .line 768
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private matchUpPenView()V
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->size()I

    move-result v0

    .line 287
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 288
    if-lez v0, :cond_0

    .line 289
    add-int/lit8 v0, v0, -0x1

    .line 290
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setHistoryIndex(I)V

    .line 291
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->peek(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 287
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setHistoryIndex(I)V

    .line 295
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 298
    :cond_1
    return-void
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    const-string v0, "PenHistory"

    const-string v1, "onPenEvent, receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 891
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    :cond_0
    const-string v1, "PenHistory"

    const-string v2, "onTouchEvent, receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v1, 0x0

    .line 901
    :goto_0
    return v1

    .line 896
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 897
    .local v0, isPen:Z
    if-eqz v0, :cond_2

    .line 898
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 901
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private setupSelectPenView(Lcom/htc/painting/penmenu/history/PenHistoryPenView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "selectedPenView"
    .parameter "icon"

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    const-string v0, "PenHistory"

    const-string v1, "setupSelectPenView - selectedPenView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 571
    :cond_0
    if-nez p2, :cond_1

    .line 572
    const-string v0, "PenHistory"

    const-string v1, "setupSelectPenView - icon is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 577
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getIconAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconAngle(F)V

    .line 578
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconPos(FF)V

    goto :goto_0
.end method

.method private startPenViewAnimation(II)V
    .locals 5
    .parameter "disappearIndex"
    .parameter "appearIndex"

    .prologue
    .line 667
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 668
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 671
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 672
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 673
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 677
    .local v1, disappearAnim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/htc/painting/penmenu/history/PenHistory$6;

    invoke-direct {v4, p0}, Lcom/htc/painting/penmenu/history/PenHistory$6;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 694
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 746
    :goto_1
    return-void

    .line 700
    .end local v1           #disappearAnim:Landroid/view/animation/Animation;
    .end local v2           #i:I
    :cond_1
    if-gt p1, p2, :cond_2

    .line 704
    move v2, p1

    .restart local v2       #i:I
    :goto_2
    if-ge v2, p2, :cond_3

    .line 705
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 706
    .restart local v3       #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotatePreviousAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 713
    .end local v2           #i:I
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .restart local v2       #i:I
    :goto_3
    if-gt v2, p1, :cond_3

    .line 714
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 715
    .restart local v3       #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 719
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 720
    .local v0, appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 721
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 722
    .restart local v1       #disappearAnim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/htc/painting/penmenu/history/PenHistory$7;

    invoke-direct {v4, p0, v0}, Lcom/htc/painting/penmenu/history/PenHistory$7;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public addPen(Lcom/htc/painting/penmenu/Pen;)I
    .locals 5
    .parameter "pen"

    .prologue
    const/4 v2, -0x1

    .line 262
    if-nez p1, :cond_0

    .line 263
    const-string v3, "PenHistory"

    const-string v4, "addPen - null pen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 278
    :goto_0
    return v1

    .line 266
    :cond_0
    const/4 v1, -0x1

    .line 268
    .local v1, ret:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v3, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findPen(Lcom/htc/painting/penmenu/Pen;)I

    move-result v0

    .line 269
    .local v0, foundPenIndex:I
    if-eq v0, v2, :cond_1

    .line 270
    const-string v2, "PenHistory"

    const-string v3, "addPen - warning: find same pen in history "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->remove(I)Lcom/htc/painting/penmenu/Pen;

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->add(Lcom/htc/painting/penmenu/Pen;)I

    move-result v1

    .line 276
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    goto :goto_0
.end method

.method public findOrderInHistory(I)I
    .locals 1
    .parameter "seqNo"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findOrder(I)I

    move-result v0

    return v0
.end method

.method public getHistoryPens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->getPens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInnerRadius()I
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getActionPanelSize()I

    move-result v0

    return v0
.end method

.method public getSamePen(Lcom/htc/painting/penmenu/Pen;)Lcom/htc/painting/penmenu/Pen;
    .locals 4
    .parameter "penToFind"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    const-string v2, "PenHistory"

    const-string v3, "getSamePen - null pen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 230
    :cond_1
    const/4 v1, 0x0

    .line 231
    .local v1, ret:Lcom/htc/painting/penmenu/Pen;
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findPen(Lcom/htc/painting/penmenu/Pen;)I

    move-result v0

    .line 232
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->remove(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 234
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    goto :goto_0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    return v0
.end method

.method public hide(Z)V
    .locals 10
    .parameter "playAnimation"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 464
    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    iput-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 466
    if-ne p1, v8, :cond_3

    .line 468
    iput-boolean v8, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, delayMillis:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 472
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 473
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isSet()Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 475
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getHidePenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 476
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 477
    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    add-int/2addr v1, v4

    .line 471
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    goto :goto_1

    .line 486
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHideBackgroundAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 487
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 489
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 500
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #delayMillis:I
    :cond_2
    :goto_2
    return-void

    .line 492
    .end local v2           #i:I
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_4

    .line 493
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 492
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 495
    :cond_4
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 496
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v4, :cond_2

    .line 497
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v4}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    goto :goto_2
.end method

.method public onPenDataStateChanged(Z)V
    .locals 0
    .parameter "ready"

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    .line 928
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 865
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 192
    .local v1, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    goto :goto_0

    .line 194
    .end local v1           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    .line 195
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 196
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    .line 197
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 199
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->removeAllViews()V

    .line 200
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/htc/painting/penmenu/history/HistoryQueue;

    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    invoke-direct {v0, v1}, Lcom/htc/painting/penmenu/history/HistoryQueue;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    .line 248
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 249
    return-void
.end method

.method public setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 213
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 102
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 441
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    sget-object v2, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    if-ne v1, v2, :cond_0

    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 445
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 442
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 451
    iput-boolean v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    goto :goto_1

    .line 454
    :cond_1
    return-void
.end method

.method public show(Z)V
    .locals 10
    .parameter "playAnimation"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 343
    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    iput-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 345
    if-ne p1, v9, :cond_2

    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, delayMillis:I
    iput-boolean v9, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 350
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 351
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 352
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isSet()Z

    move-result v4

    if-ne v4, v9, :cond_0

    .line 354
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getShowPenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 355
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 356
    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 357
    iget v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    add-int/2addr v1, v4

    .line 350
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 361
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    goto :goto_1

    .line 365
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getShowBackgroundAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 366
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 367
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 375
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #delayMillis:I
    :goto_2
    return-void

    .line 370
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_3

    .line 371
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 370
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 373
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    goto :goto_2
.end method
