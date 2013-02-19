.class public Lcom/htc/widget/CarouselViewSwitcher;
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

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->widgetSpace:I

    .line 23
    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    .line 25
    iput-boolean v2, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    .line 26
    iput-boolean v2, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    .line 29
    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    .line 95
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animDuration:I

    .line 97
    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    .line 98
    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    .line 162
    new-instance v0, Lcom/htc/widget/CarouselViewSwitcher$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselViewSwitcher$1;-><init>(Lcom/htc/widget/CarouselViewSwitcher;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    invoke-direct {p0}, Lcom/htc/widget/CarouselViewSwitcher;->setOrientation()V

    .line 39
    invoke-direct {p0}, Lcom/htc/widget/CarouselViewSwitcher;->setupLayoutParams()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/CarouselViewSwitcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    return-object v0
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 197
    .local v0, orientation:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    .line 198
    return-void
.end method

.method private setupLayoutParams()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 203
    iget v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->widgetSpace:I

    if-gez v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/htc/widget/CarouselViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->widgetSpace:I

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v0, lparams:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 209
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 212
    .restart local v0       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 213
    iget-boolean v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iget-boolean v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/htc/widget/CarouselViewSwitcher;->widgetSpace:I

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void

    .line 212
    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    .line 213
    :cond_4
    iget v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->widgetSpace:I

    goto :goto_1
.end method


# virtual methods
.method public addNegativeView(Landroid/view/View;)V
    .locals 2
    .parameter "childView"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    .line 90
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    .line 91
    iput-object p1, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

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
    .line 62
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    .line 69
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    .line 70
    iput-object p1, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    invoke-direct {p0}, Lcom/htc/widget/CarouselViewSwitcher;->setOrientation()V

    .line 52
    invoke-direct {p0}, Lcom/htc/widget/CarouselViewSwitcher;->setupLayoutParams()V

    .line 53
    return-void
.end method

.method switchPanelToNegative(Z)V
    .locals 1
    .parameter "skipPositive"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method switchPanelToPositive(Z)V
    .locals 1
    .parameter "skipPositive"

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 181
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

    .line 108
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    .line 114
    const-string v0, "Carousel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPositive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 124
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    iget-boolean v3, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v3, :cond_7

    move v6, v9

    :goto_3
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    .line 127
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 131
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_8

    move v6, v4

    :goto_4
    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_9

    move v10, v9

    :goto_5
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    .line 134
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    if-nez p1, :cond_4

    .line 142
    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_b

    .line 144
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    :cond_4
    :goto_7
    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_c

    move v0, v12

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    if-nez p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v1, :cond_d

    :goto_9
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v11

    .line 111
    goto/16 :goto_1

    :cond_6
    move v2, v9

    .line 124
    goto :goto_2

    :cond_7
    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v9

    .line 131
    goto :goto_4

    :cond_9
    move v10, v4

    goto :goto_5

    .line 138
    :cond_a
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    goto :goto_6

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_c
    move v0, v11

    .line 155
    goto :goto_8

    :cond_d
    move v11, v12

    .line 158
    goto :goto_9
.end method
