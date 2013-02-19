.class public Lcom/htc/widget/ActionBarExt;
.super Ljava/lang/Object;
.source "ActionBarExt.java"


# static fields
.field static final enableDebug:Z


# instance fields
.field private IsEnteringEditmode:Z

.field private actionBar:Landroid/app/ActionBar;

.field private actionBarView:Lcom/android/internal/widget/ActionBarView;

.field private final animDuration:I

.field private animationIn:Landroid/view/animation/AnimationSet;

.field private animationInView:Landroid/view/View;

.field private animationOut:Landroid/view/animation/AnimationSet;

.field private animationOutView:Landroid/view/View;

.field private commonHeight:I

.field private final containerPadding:I

.field private context:Landroid/content/Context;

.field private customContainer:Lcom/htc/widget/ActionBarContainer;

.field private editmodeContainer:Lcom/htc/widget/ActionBarContainer;

.field private enableFullScreen:Z

.field private enableTransparent:Z

.field private frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private resources:Landroid/content/res/Resources;

.field private searchContainer:Lcom/htc/widget/ActionBarContainer;

.field private transparentRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 7
    .parameter "icontext"
    .parameter "iactionBar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    .line 35
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarExt;->enableFullScreen:Z

    .line 36
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarExt;->enableTransparent:Z

    .line 83
    iput v4, p0, Lcom/htc/widget/ActionBarExt;->containerPadding:I

    .line 85
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    .line 86
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    .line 100
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    .line 144
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 242
    const v2, 0x43658000

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ActionBarExt;->transparentRatio:I

    .line 287
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    .line 290
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;

    .line 291
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;

    .line 293
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    .line 294
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    .line 296
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/htc/widget/ActionBarExt;->animDuration:I

    .line 391
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 395
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 522
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    .line 523
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarExt;->IsEnteringEditmode:Z

    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid null argument"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    .line 48
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->enableHTCActionBar()V

    .line 50
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    .line 53
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    if-nez v2, :cond_2

    .line 54
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "package resouce null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_4

    .line 59
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v1, Lcom/android/internal/app/ActionBarImpl;

    .line 61
    .local v1, internalActionBar:Lcom/android/internal/app/ActionBarImpl;
    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 62
    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->getActionBarView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 64
    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 67
    .local v0, containerView:Landroid/view/View;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 69
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 72
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 73
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    .end local v0           #containerView:Landroid/view/View;
    .end local v1           #internalActionBar:Lcom/android/internal/app/ActionBarImpl;
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_5

    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "actionbar internal view null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0, v2, v6}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/ActionBarExt;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/ActionBarExt;)Lcom/htc/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/ActionBarExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarExt;->IsEnteringEditmode:Z

    return p1
.end method

.method private setupAnimationEnv()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f80

    const/high16 v10, 0x4020

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, animation1:Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 304
    .local v9, animation2:Landroid/view/animation/Animation;
    iget v3, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    if-gez v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    const v4, 0x20e0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    if-nez v3, :cond_2

    .line 311
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation1:Landroid/view/animation/Animation;
    iget v3, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    neg-int v3, v3

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 314
    .restart local v0       #animation1:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 316
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #animation2:Landroid/view/animation/Animation;
    invoke-direct {v9, v11, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 317
    .restart local v9       #animation2:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    .line 320
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 321
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 322
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 323
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    new-instance v4, Lcom/htc/widget/ActionBarExt$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarExt$1;-><init>(Lcom/htc/widget/ActionBarExt;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 352
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation1:Landroid/view/animation/Animation;
    iget v3, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    neg-int v3, v3

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 355
    .restart local v0       #animation1:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #animation2:Landroid/view/animation/Animation;
    invoke-direct {v9, v2, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 358
    .restart local v9       #animation2:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    .line 361
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 362
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 364
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 367
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/htc/widget/ActionBarExt$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarExt$2;-><init>(Lcom/htc/widget/ActionBarExt;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 389
    :cond_2
    return-void
.end method

.method private updateBackgroundDrawable(Landroid/view/View;Z)V
    .locals 6
    .parameter "updateView"
    .parameter "forceReload"

    .prologue
    const/4 v5, 0x0

    .line 249
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 253
    :cond_0
    if-eqz p2, :cond_4

    .line 258
    iget-object v4, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/widget/ActionBarExt;->enableFullScreen:Z

    if-eqz v2, :cond_1

    const-string v2, "common_app_bkg_top_full_src"

    :goto_1
    iget-boolean v3, p0, Lcom/htc/widget/ActionBarExt;->enableFullScreen:Z

    if-eqz v3, :cond_2

    const v3, 0x208014b

    :goto_2
    invoke-static {v4, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, resourceID:I
    if-eqz v1, :cond_3

    .line 263
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    .end local v1           #resourceID:I
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-boolean v2, p0, Lcom/htc/widget/ActionBarExt;->enableTransparent:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/widget/ActionBarExt;->transparentRatio:I

    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 258
    .end local v0           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v2, "common_app_bkg_top_src"

    goto :goto_1

    :cond_2
    const v3, 0x2080118

    goto :goto_2

    .line 266
    .restart local v1       #resourceID:I
    :cond_3
    const/4 v0, 0x0

    .line 267
    .restart local v0       #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 272
    .end local v0           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #resourceID:I
    :cond_4
    const/4 v0, 0x0

    .line 273
    .restart local v0       #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 277
    :cond_5
    const/16 v2, 0xff

    goto :goto_4
.end method


# virtual methods
.method public enableHTCLandscape(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->enableHTCLandscape(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public getCustomContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 155
    iput-object v2, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 156
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 161
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 179
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget v0, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    if-gez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    const v1, 0x20e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    .line 167
    :cond_1
    iput-object v2, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 168
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    .line 169
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    goto :goto_0
.end method

.method public getEditModeContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 528
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    const v3, 0x20e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 532
    .local v1, height:I
    new-instance v2, Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    .line 533
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    .line 535
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarContainer;->setCenterGravityEnabled(Z)V

    .line 536
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    .line 537
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-direct {p0, v2, v5}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 540
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 544
    .local v0, actionBarInternal:Lcom/android/internal/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 550
    .end local v0           #actionBarInternal:Lcom/android/internal/app/ActionBarImpl;
    .end local v1           #height:I
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v2
.end method

.method public getSearchContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 106
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v1, :cond_2

    .line 108
    iget v1, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    if-gez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->resources:Landroid/content/res/Resources;

    const v2, 0x20e0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    .line 111
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    .line 112
    new-instance v1, Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    .line 115
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    const-string v2, "searchContainer"

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, v5}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/widget/ActionBarExt;->commonHeight:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-direct {p0, v1, v5}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 123
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 128
    .local v0, actionBarInternal:Lcom/android/internal/app/ActionBarImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 131
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v1, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getActionBarView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 139
    .end local v0           #actionBarInternal:Lcom/android/internal/app/ActionBarImpl;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v1
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 515
    :cond_0
    return-void
.end method

.method protected setContainerMarginRatio(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 487
    .local v0, actionImpl:Lcom/android/internal/app/ActionBarImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ActionBarContainer;->setContainerMarginRatio(F)V

    .line 489
    :cond_0
    return-void
.end method

.method public setEditModeEnabled(Z)V
    .locals 13
    .parameter "enable"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 556
    iget-boolean v5, p0, Lcom/htc/widget/ActionBarExt;->IsEnteringEditmode:Z

    if-eqz v5, :cond_0

    .line 616
    :goto_0
    return-void

    .line 560
    :cond_0
    iput-boolean v11, p0, Lcom/htc/widget/ActionBarExt;->IsEnteringEditmode:Z

    .line 562
    move v2, p1

    .line 566
    .local v2, flag:Z
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 568
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_1

    .line 569
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const-string v6, "rotationX"

    new-array v7, v11, [F

    const/high16 v8, 0x43b4

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 570
    .local v3, rotateanimaot:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 571
    .local v1, closeanimator:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v5, v12}, Lcom/htc/widget/ActionBarContainer;->setAlpha(F)V

    .line 572
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    .line 573
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 582
    .local v4, showanimator:Landroid/animation/ObjectAnimator;
    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v4, v5, v9

    aput-object v1, v5, v11

    aput-object v3, v5, v10

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 584
    new-instance v5, Lcom/htc/widget/ActionBarExt$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/htc/widget/ActionBarExt$3;-><init>(Lcom/htc/widget/ActionBarExt;Landroid/animation/AnimatorSet;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 614
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 575
    .end local v1           #closeanimator:Landroid/animation/ObjectAnimator;
    .end local v3           #rotateanimaot:Landroid/animation/ObjectAnimator;
    .end local v4           #showanimator:Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const-string v6, "rotationX"

    new-array v7, v11, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 576
    .restart local v3       #rotateanimaot:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 577
    .restart local v1       #closeanimator:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/ActionBarView;->setAlpha(F)V

    .line 578
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 579
    iget-object v5, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .restart local v4       #showanimator:Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 570
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 573
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 576
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 579
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setFullScreenEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarExt;->enableFullScreen:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarExt;->enableFullScreen:Z

    .line 196
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 197
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected setListMenuAnchorView(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setListMenuAnchorView(Landroid/view/View;)V

    .line 501
    :cond_0
    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    :cond_0
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 481
    :cond_0
    return-void
.end method

.method public setTransparentEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarExt;->enableTransparent:Z

    if-eq v0, p1, :cond_0

    .line 209
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarExt;->enableTransparent:Z

    .line 212
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 213
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public setTransparentRatio(F)V
    .locals 4
    .parameter "ratio"

    .prologue
    const/4 v3, 0x0

    .line 222
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 225
    .local v0, alphaValue:I
    iget v1, p0, Lcom/htc/widget/ActionBarExt;->transparentRatio:I

    if-ne v1, v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iput v0, p0, Lcom/htc/widget/ActionBarExt;->transparentRatio:I

    .line 233
    iget-boolean v1, p0, Lcom/htc/widget/ActionBarExt;->enableTransparent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    .line 237
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/ActionBarExt;->updateBackgroundDrawable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public switchContainer()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_2

    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    const/16 v2, 0x5dd

    const-string v3, "ACTIONBAR_EXT"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/ActionBarExt;->setupAnimationEnv()V

    .line 412
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 413
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 416
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 432
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->animationOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;

    .line 424
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateFontResource()V
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->customContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->updateFontResource()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->searchContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->updateFontResource()V

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->updateFontResource()V

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt;->actionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 451
    .local v0, actionBarInternal:Lcom/android/internal/app/ActionBarImpl;
    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->updateFontResource()V

    .line 456
    :cond_3
    return-void
.end method
