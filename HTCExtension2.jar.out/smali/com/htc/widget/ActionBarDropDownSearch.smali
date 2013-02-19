.class public Lcom/htc/widget/ActionBarDropDownSearch;
.super Landroid/view/ViewGroup;
.source "ActionBarDropDownSearch.java"

# interfaces
.implements Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;


# instance fields
.field private actionDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private actionSearch:Lcom/htc/widget/ActionBarSearch;

.field private final animDuration:I

.field private childDivider:Landroid/graphics/drawable/Drawable;

.field private commonOffset:I

.field private counter:I

.field private counterView:Landroid/widget/TextView;

.field private defaultDisplay:Landroid/view/Display;

.field private displayMetric:Landroid/util/DisplayMetrics;

.field private frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private isPortrait:Z

.field private isTablet:Z

.field private final panelRatio:F

.field private resource:Landroid/content/res/Resources;

.field private transitionAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    .line 37
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isTablet:Z

    .line 66
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->defaultDisplay:Landroid/view/Display;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    .line 90
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 100
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    .line 118
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    .line 130
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 271
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->animDuration:I

    .line 276
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    .line 287
    iput v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counter:I

    .line 389
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->displayMetric:Landroid/util/DisplayMetrics;

    .line 392
    const/high16 v0, 0x4020

    iput v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->panelRatio:F

    .line 613
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 616
    iput v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    .line 46
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "package resouce null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->defaultDisplay:Landroid/view/Display;

    .line 50
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->defaultDisplay:Landroid/view/Display;

    .line 52
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->defaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "default display null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDownSearch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 59
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 62
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDownSearch;->addView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/widget/ActionBarSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarDropDownSearch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/ActionBarDropDownSearch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->cleanTransitionAnimator()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    return-object v0
.end method

.method private cleanTransitionAnimator()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    .line 128
    :cond_0
    return-void
.end method

.method private setupCounterView()V
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    const v2, 0x20e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 344
    .local v0, size:I
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    .line 346
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 348
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    const v2, 0x208003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 352
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarDropDownSearch;->addView(Landroid/view/View;)V

    .line 357
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarDropDownSearch;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateEnvironment()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 74
    .local v0, orientation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    .line 75
    iget-boolean v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isTablet:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    if-nez v1, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    .line 78
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarSearch;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 79
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-boolean v3, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setVisibility(I)V

    .line 83
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v2

    .line 74
    goto :goto_0

    :cond_4
    move v3, v2

    .line 75
    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    goto :goto_1

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarDropDown;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 631
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarSearch;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    if-nez v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    const v3, 0x2080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 636
    :cond_0
    iget v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    if-gez v2, :cond_1

    .line 637
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarSearch;->getLeft()I

    move-result v0

    .line 640
    .local v0, leftBound:I
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v1, v0, v2

    .line 643
    .local v1, rightBound:I
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 646
    .end local v0           #leftBound:I
    .end local v1           #rightBound:I
    :cond_2
    return-void
.end method

.method public getActionBarDropDown()Lcom/htc/widget/ActionBarDropDown;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method public getActionBarSearch()Lcom/htc/widget/ActionBarSearch;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    .line 109
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDownSearch;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counter:I

    goto :goto_0
.end method

.method public getCounterVisibility()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 371
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only avaiable on container"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 404
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V

    .line 408
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 386
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 387
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingLeft:I

    .line 447
    .local v10, currentLeft:I
    sub-int v19, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v11, v19, v20

    .line 449
    .local v11, currentRight:I
    sub-int v19, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v14, v19, v20

    .line 450
    .local v14, paddingWidth:I
    sub-int v19, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v13, v19, v20

    .line 453
    .local v13, paddingHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->isPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredWidth()I

    move-result v8

    .line 460
    .local v8, childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredHeight()I

    move-result v3

    .line 462
    .local v3, childHeight:I
    sub-int v16, v11, v10

    .line 465
    .local v16, remainderSpace:I
    move/from16 v0, v16

    if-eq v8, v0, :cond_0

    .line 467
    const/high16 v19, 0x4000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 468
    .local v18, widthMeasure:I
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 470
    .local v12, heightMeasure:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/htc/widget/ActionBarSearch;->measure(II)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredWidth()I

    move-result v8

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredHeight()I

    move-result v3

    .line 477
    .end local v12           #heightMeasure:I
    .end local v18           #widthMeasure:I
    :cond_0
    if-le v3, v13, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    .line 480
    .local v7, childViewT:I
    add-int v4, v7, v13

    .line 489
    .local v4, childViewB:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v7, v11, v4}, Lcom/htc/widget/ActionBarSearch;->layout(IIII)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->layout(IIII)V

    .line 611
    .end local v3           #childHeight:I
    .end local v4           #childViewB:I
    .end local v7           #childViewT:I
    .end local v8           #childWidth:I
    .end local v16           #remainderSpace:I
    :cond_1
    :goto_1
    return-void

    .line 484
    .restart local v3       #childHeight:I
    .restart local v8       #childWidth:I
    .restart local v16       #remainderSpace:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v20, v13, v3

    div-int/lit8 v20, v20, 0x2

    add-int v7, v19, v20

    .line 485
    .restart local v7       #childViewT:I
    add-int v4, v7, v3

    .restart local v4       #childViewB:I
    goto :goto_0

    .line 499
    .end local v3           #childHeight:I
    .end local v4           #childViewB:I
    .end local v7           #childViewT:I
    .end local v8           #childWidth:I
    .end local v16           #remainderSpace:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->displayMetric:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/ActionBarDropDownSearch;->displayMetric:Landroid/util/DisplayMetrics;

    .line 502
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredWidth()I

    move-result v8

    .line 503
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredHeight()I

    move-result v3

    .line 506
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->displayMetric:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 507
    .local v17, screenSpace:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4020

    mul-float v19, v19, v20

    const/high16 v20, 0x4060

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 509
    .local v15, panelSpace:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/ActionBarDropDownSearch;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 510
    .local v9, containerSpace:I
    sub-int v19, v17, v9

    sub-int v2, v15, v19

    .line 513
    .local v2, availableSpace:I
    if-eq v8, v2, :cond_5

    .line 515
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 516
    .restart local v18       #widthMeasure:I
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 518
    .restart local v12       #heightMeasure:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/htc/widget/ActionBarSearch;->measure(II)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredWidth()I

    move-result v8

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarSearch;->getMeasuredHeight()I

    move-result v3

    .line 525
    .end local v12           #heightMeasure:I
    .end local v18           #widthMeasure:I
    :cond_5
    if-le v3, v13, :cond_b

    .line 527
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    .line 528
    .restart local v7       #childViewT:I
    add-int v4, v7, v13

    .line 537
    .restart local v4       #childViewB:I
    :goto_2
    move v6, v11

    .line 538
    .local v6, childViewR:I
    sub-int v5, v6, v8

    .line 541
    .local v5, childViewL:I
    move v11, v5

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v6, v4}, Lcom/htc/widget/ActionBarSearch;->layout(IIII)V

    .line 549
    .end local v2           #availableSpace:I
    .end local v3           #childHeight:I
    .end local v4           #childViewB:I
    .end local v5           #childViewL:I
    .end local v6           #childViewR:I
    .end local v7           #childViewT:I
    .end local v8           #childWidth:I
    .end local v9           #containerSpace:I
    .end local v15           #panelSpace:I
    .end local v17           #screenSpace:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarDropDown;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarDropDown;->getMeasuredWidth()I

    move-result v8

    .line 552
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarDropDown;->getMeasuredHeight()I

    move-result v3

    .line 554
    .restart local v3       #childHeight:I
    sub-int v16, v11, v10

    .line 556
    .restart local v16       #remainderSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    move/from16 v19, v0

    if-gez v19, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->resource:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x2050001

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    .line 560
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 561
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v16, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->commonOffset:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 564
    :cond_8
    move/from16 v0, v16

    if-le v8, v0, :cond_9

    .line 566
    const/high16 v19, 0x4000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 567
    .restart local v18       #widthMeasure:I
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 569
    .restart local v12       #heightMeasure:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/htc/widget/ActionBarDropDown;->measure(II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarDropDown;->getMeasuredWidth()I

    move-result v8

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/ActionBarDropDown;->getMeasuredHeight()I

    move-result v3

    .line 576
    .end local v12           #heightMeasure:I
    .end local v18           #widthMeasure:I
    :cond_9
    if-le v3, v13, :cond_c

    .line 578
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    .line 579
    .restart local v7       #childViewT:I
    add-int v4, v7, v13

    .line 588
    .restart local v4       #childViewB:I
    :goto_3
    move v5, v10

    .line 589
    .restart local v5       #childViewL:I
    add-int v6, v5, v8

    .line 592
    .restart local v6       #childViewR:I
    move v10, v6

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v6, v4}, Lcom/htc/widget/ActionBarDropDown;->layout(IIII)V

    .line 599
    .end local v3           #childHeight:I
    .end local v4           #childViewB:I
    .end local v5           #childViewL:I
    .end local v6           #childViewR:I
    .end local v7           #childViewT:I
    .end local v8           #childWidth:I
    .end local v16           #remainderSpace:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 602
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 605
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v20, v13, v3

    div-int/lit8 v20, v20, 0x2

    add-int v7, v19, v20

    .line 606
    .restart local v7       #childViewT:I
    add-int v4, v7, v3

    .line 609
    .restart local v4       #childViewB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    add-int v20, v10, v8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v7, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 532
    .end local v4           #childViewB:I
    .end local v7           #childViewT:I
    .restart local v2       #availableSpace:I
    .restart local v9       #containerSpace:I
    .restart local v15       #panelSpace:I
    .restart local v17       #screenSpace:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v20, v13, v3

    div-int/lit8 v20, v20, 0x2

    add-int v7, v19, v20

    .line 533
    .restart local v7       #childViewT:I
    add-int v4, v7, v3

    .restart local v4       #childViewB:I
    goto/16 :goto_2

    .line 583
    .end local v2           #availableSpace:I
    .end local v4           #childViewB:I
    .end local v7           #childViewT:I
    .end local v9           #containerSpace:I
    .end local v15           #panelSpace:I
    .end local v17           #screenSpace:I
    .restart local v16       #remainderSpace:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarDropDownSearch;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v20, v13, v3

    div-int/lit8 v20, v20, 0x2

    add-int v7, v19, v20

    .line 584
    .restart local v7       #childViewT:I
    add-int v4, v7, v3

    .restart local v4       #childViewB:I
    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 422
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 423
    .local v1, moduleWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 426
    .local v0, moduleHeight:I
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/ActionBarDropDownSearch;->measureChildren(II)V

    .line 427
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/ActionBarDropDownSearch;->setMeasuredDimension(II)V

    .line 428
    return-void
.end method

.method public onResourceUpdate()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->onResourceUpdate()V

    .line 659
    :cond_0
    return-void
.end method

.method public setActionBarSearchEnabled(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide/16 v7, 0x12c

    const/4 v6, 0x2

    .line 136
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v4, :cond_0

    .line 138
    new-instance v4, Lcom/htc/widget/ActionBarSearch;

    iget-object v5, p0, Lcom/htc/widget/ActionBarDropDownSearch;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    .line 139
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v4, v2}, Lcom/htc/widget/ActionBarSearch;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarDropDownSearch;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v4}, Lcom/htc/widget/ActionBarSearch;->getVisibility()I

    move-result v4

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-ne v4, v2, :cond_2

    .line 268
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const/16 v4, 0x5dd

    const-string v5, "ACTIONBAR_DROP_DOWN_SEARCH"

    invoke-static {v9, v2, v4, v5}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 155
    :cond_4
    const/4 v0, 0x0

    .line 156
    .local v0, animation1:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 158
    .local v1, animation2:Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_5

    .line 161
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    .line 168
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v0, v4, v3

    aput-object v1, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/ActionBarDropDownSearch$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarDropDownSearch$1;-><init>(Lcom/htc/widget/ActionBarDropDownSearch;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;

    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    .line 218
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v0, v4, v3

    aput-object v1, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/ActionBarDropDownSearch$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarDropDownSearch$2;-><init>(Lcom/htc/widget/ActionBarDropDownSearch;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 161
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 164
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xb4t 0x43t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 211
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 214
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x43t
    .end array-data
.end method

.method public setCounter(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->setupCounterView()V

    .line 313
    iget v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counter:I

    if-ne p1, v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 320
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->mContext:Landroid/content/Context;

    const v2, 0x203005e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 333
    :cond_1
    :goto_1
    iput p1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counter:I

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch;->mContext:Landroid/content/Context;

    const v2, 0x203005f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setCounterVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDownSearch;->setupCounterView()V

    .line 303
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method
