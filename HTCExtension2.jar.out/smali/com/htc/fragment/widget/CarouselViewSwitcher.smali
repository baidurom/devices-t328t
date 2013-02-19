.class public Lcom/htc/fragment/widget/CarouselViewSwitcher;
.super Landroid/widget/FrameLayout;
.source "CarouselViewSwitcher.java"


# instance fields
.field private final animDuration:I

.field private animListener:Landroid/view/animation/Animation$AnimationListener;

.field private animationIn:Landroid/view/animation/TranslateAnimation;

.field private animationOut:Landroid/view/animation/TranslateAnimation;

.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private isPositive:Z

.field private negativeView:Landroid/view/View;

.field private positiveView:Landroid/view/View;

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    .line 24
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    .line 26
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    .line 27
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    .line 30
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    .line 96
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animDuration:I

    .line 98
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    .line 99
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    .line 165
    new-instance v0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;-><init>(Lcom/htc/fragment/widget/CarouselViewSwitcher;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 39
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setOrientation()V

    .line 40
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setupLayoutParams()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/CarouselViewSwitcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    return-object v0
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 200
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    .line 201
    return-void

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupLayoutParams()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 206
    iget v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    if-gez v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .local v0, lparams:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 212
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .restart local v0       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void

    .line 215
    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    .line 216
    :cond_4
    iget v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    goto :goto_1
.end method


# virtual methods
.method public addNegativeView(Landroid/view/View;)V
    .locals 2
    .parameter "childView"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    .line 91
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    .line 92
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addPositiveView(Landroid/view/View;)V
    .locals 1
    .parameter "childView"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    .line 70
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    .line 71
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setOrientation()V

    .line 53
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setupLayoutParams()V

    .line 54
    return-void
.end method

.method switchPanelToNegative(Z)V
    .locals 1
    .parameter "skipPositive"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method switchPanelToPositive(Z)V
    .locals 1
    .parameter "skipPositive"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public switchPanelView(Z)V
    .locals 13
    .parameter "skipPositive"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/high16 v9, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPositive:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 125
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v3, :cond_7

    move v6, v9

    :goto_3
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    .line 128
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 132
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_8

    move v6, v4

    :goto_4
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_9

    move v10, v9

    :goto_5
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    .line 135
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 139
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    if-nez p1, :cond_4

    .line 143
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_b

    .line 145
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_4
    :goto_7
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_c

    move v0, v12

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    if-nez p1, :cond_e

    .line 159
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v1, :cond_d

    :goto_9
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v11

    .line 112
    goto/16 :goto_1

    :cond_6
    move v2, v9

    .line 125
    goto :goto_2

    :cond_7
    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v9

    .line 132
    goto :goto_4

    :cond_9
    move v10, v4

    goto :goto_5

    .line 139
    :cond_a
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    goto :goto_6

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_c
    move v0, v11

    .line 156
    goto :goto_8

    :cond_d
    move v11, v12

    .line 159
    goto :goto_9

    .line 161
    :cond_e
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v1, :cond_f

    const/16 v12, 0x8

    :cond_f
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
