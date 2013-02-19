.class Lcom/htc/fragment/widget/CarouselSlidingDrawer;
.super Landroid/widget/RelativeLayout;
.source "CarouselSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;,
        Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;,
        Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;,
        Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# instance fields
.field actionBar:Landroid/app/ActionBar;

.field private actionBarShow:Z

.field private final animDuration:I

.field carousel:Lcom/htc/fragment/widget/CarouselFragment;

.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mExpanded:Z

.field private mHandle:Landroid/view/View;

.field private final mHandleId:I

.field private mOnDrawerCloseListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

.field private mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

.field private mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mTracking:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x5dd

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->widgetSpace:I

    .line 129
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    .line 132
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    .line 137
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 201
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    .line 202
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    .line 306
    const/16 v1, 0x12c

    iput v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->animDuration:I

    .line 384
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBarShow:Z

    .line 152
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOrientation()V

    .line 154
    sget-object v1, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandleId:I

    .line 157
    iget v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandleId:I

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mHandleId is invalide from attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContentId:I

    .line 161
    iget v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContentId:I

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mContentId is invalide from attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandleId:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContentId:I

    if-ne v1, v2, :cond_2

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mHandleId and mContentId must different"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    const-string v1, "CAROUSEL_ENTER_EDIT_MODE"

    invoke-static {v4, p0, v5, v1}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 171
    const-string v1, "CAROUSEL_EXIT_EDIT_MODE"

    invoke-static {v4, p0, v5, v1}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method private closeDrawer()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    .line 341
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    if-eqz v4, :cond_2

    .line 342
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 345
    :cond_2
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    if-eqz v4, :cond_3

    .line 346
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    invoke-interface {v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerCompleteClose()V

    .line 350
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v4, :cond_5

    move v4, v2

    :goto_1
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v5, :cond_6

    move v8, v3

    :goto_2
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 354
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 355
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 356
    new-instance v2, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;-><init>(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_4

    .line 373
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 376
    :cond_4
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBarShow:Z

    if-ne v2, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_5
    move v4, v3

    .line 350
    goto :goto_1

    :cond_6
    move v8, v2

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 388
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    .line 419
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v5, :cond_4

    move v6, v3

    :goto_2
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 423
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 424
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 425
    new-instance v2, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;-><init>(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 452
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 456
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_5

    .line 459
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBarShow:Z

    .line 465
    :goto_3
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_3
    move v2, v3

    .line 419
    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    .line 461
    .restart local v0       #animation:Landroid/view/animation/Animation;
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBarShow:Z

    goto :goto_3
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 146
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    .line 147
    return-void

    .line 146
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateClose()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public animateOpen()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public animateToggle()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->closeDrawer()V

    .line 301
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->invalidate()V

    .line 302
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 303
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mTracking:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOrientation()V

    .line 184
    iget v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->widgetSpace:I

    if-gez v2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x205006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->widgetSpace:I

    .line 188
    :cond_0
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isPortrait:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->widgetSpace:I

    :goto_1
    invoke-virtual {p0, v3, v3, v2, v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setPadding(IIII)V

    .line 191
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 193
    .local v0, handle:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 194
    .local v1, paddingM2:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const v3, 0x2030052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDarkPrimaryFontColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v3, "common_app_bkg_top_src"

    const v4, 0x2080118

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    .end local v0           #handle:Landroid/widget/TextView;
    .end local v1           #paddingM2:I
    :cond_1
    return-void

    .line 188
    :cond_2
    iget v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->widgetSpace:I

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 211
    iget v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    .line 212
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mHandle is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v3, Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;

    invoke-direct {v3, p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;-><init>(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 227
    .local v0, handle:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 228
    .local v1, paddingM2:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const v3, 0x2030052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDarkPrimaryFontColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v3, "common_app_bkg_top_src"

    const v4, 0x2080118

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 233
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 234
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 235
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 236
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 238
    iget v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    .line 239
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    .line 240
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mContent is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->openDrawer()V

    .line 282
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->invalidate()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 285
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 286
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    .line 495
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    .line 482
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 327
    return-void
.end method

.method public setOnEditModeDrawerStateListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V
    .locals 0
    .parameter "onEditModeDrawerStateListener"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    .line 503
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->openDrawer()V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->invalidate()V

    .line 266
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestLayout()V

    .line 267
    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method
