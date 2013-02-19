.class public Lcom/htc/painting/penmenu/base/BasePanel;
.super Landroid/widget/FrameLayout;
.source "BasePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/base/BasePanel$1;,
        Lcom/htc/painting/penmenu/base/BasePanel$Hint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BasePanel"


# instance fields
.field private mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

.field private mHint:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

.field private mHintAnimDuration:J

.field private mHintSwitcher:Landroid/widget/ViewSwitcher;

.field private mPaddingBetween:I

.field private mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

.field private mPenTipToSizeRatio:F

.field private mProgressAnimation:Landroid/view/animation/Animation;

.field private mProgressBar:Landroid/widget/ImageView;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/base/BasePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/base/BasePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x209006b

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 117
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenTipToSizeRatio:F

    .line 119
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPaddingBetween:I

    .line 121
    invoke-direct {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->init()V

    .line 122
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 433
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 434
    .local v2, y:F
    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->isValideArea(FF)Z

    move-result v0

    .line 436
    .local v0, ret:Z
    if-ne v0, v5, :cond_3

    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 439
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->recover()V

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->changeMenuState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->highlight()V

    .line 444
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getMenuState()Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v3

    sget-object v4, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v3, v4, :cond_2

    .line 445
    sget-object v3, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {p0, v3, v5}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    goto :goto_0

    .line 447
    :cond_2
    sget-object v3, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->MENU:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {p0, v3, v5}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    goto :goto_0

    .line 455
    :cond_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->recover()V

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    const/high16 v12, 0x4000

    .line 125
    const v7, 0x2020145

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/base/BasePanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    iput-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    .line 126
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v7, p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V

    .line 129
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->getSize()I

    move-result v7

    iput v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mSize:I

    .line 131
    const v7, 0x2020146

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/base/BasePanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    iput-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    .line 132
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v7, p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V

    .line 133
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setSize(I)V

    .line 134
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    iget v8, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenTipToSizeRatio:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setIconPosition(F)V

    .line 136
    const v7, 0x2020147

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/base/BasePanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    iput-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    .line 137
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-virtual {v7, p0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080452

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 154
    .local v5, spinner:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 155
    .local v6, w:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 156
    .local v1, h:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenTipToSizeRatio:F

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 157
    .local v2, paddingBottom:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenTipToSizeRatio:F

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 159
    .local v3, paddingRight:I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x55

    invoke-direct {v4, v10, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 161
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    .line 162
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v7, v11, v11, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 165
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/base/BasePanel;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20e00c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 171
    .local v0, animDuration:I
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x43b4

    int-to-float v10, v6

    div-float/2addr v10, v12

    int-to-float v11, v1

    div-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressAnimation:Landroid/view/animation/Animation;

    .line 172
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressAnimation:Landroid/view/animation/Animation;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 173
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressAnimation:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    iget-object v7, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressAnimation:Landroid/view/animation/Animation;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    invoke-direct {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->setupHintSwitcher()V

    .line 177
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getWidth()I

    move-result v6

    .line 393
    .local v6, w:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getHeight()I

    move-result v2

    .line 399
    .local v2, h:I
    iget v3, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mSize:I

    .line 401
    .local v3, radius:I
    sub-int v7, v6, v3

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-ltz v7, :cond_0

    sub-int v7, v2, v3

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_2

    .line 405
    :cond_0
    const/4 v4, 0x0

    .line 420
    :cond_1
    :goto_0
    return v4

    .line 408
    :cond_2
    const/4 v4, 0x0

    .line 409
    .local v4, ret:Z
    int-to-float v7, v6

    sub-float v0, v7, p1

    .line 410
    .local v0, dx:F
    int-to-float v7, v2

    sub-float v1, v7, p2

    .line 411
    .local v1, dy:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v5, v7, v8

    .line 412
    .local v5, rr:F
    mul-int v7, v3, v3

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_1

    .line 413
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private makeHintView(Lcom/htc/painting/penmenu/base/BasePanel$Hint;)Landroid/view/View;
    .locals 8
    .parameter "hint"

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 203
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 206
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, hintView:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 211
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    .local v3, text:Landroid/widget/TextView;
    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, arrow:Landroid/widget/ImageView;
    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    if-ne p1, v4, :cond_0

    .line 217
    const v4, 0x20403ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPaddingBetween:I

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    :goto_0
    return-object v1

    .line 226
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    const v4, 0x20403ad

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPaddingBetween:I

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    const-string v0, "BasePanel"

    const-string v1, "onPenEvent, receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 496
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    const-string v1, "BasePanel"

    const-string v2, "onTouchEvent, receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, 0x0

    .line 518
    :goto_0
    return v1

    .line 512
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 513
    .local v0, isPen:Z
    if-eqz v0, :cond_2

    .line 514
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private setupHintSwitcher()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 180
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mSize:I

    const/16 v2, 0x55

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 183
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20e00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    new-instance v1, Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    .line 189
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 194
    .restart local v0       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    sget-object v2, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->MENU:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->makeHintView(Lcom/htc/painting/penmenu/base/BasePanel$Hint;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    sget-object v2, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->makeHintView(Lcom/htc/painting/penmenu/base/BasePanel$Hint;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/base/BasePanel;->addView(Landroid/view/View;)V

    .line 198
    sget-object v1, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->MENU:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    iput-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHint:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    .line 199
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintAnimDuration:J

    .line 200
    return-void
.end method


# virtual methods
.method public changePen(Lcom/htc/painting/penmenu/Pen;Z)V
    .locals 3
    .parameter "pen"
    .parameter "isEraser"

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v0

    .line 366
    .local v0, color:I
    if-eqz p2, :cond_0

    .line 367
    const v0, -0x333334

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->changeColor(I)V

    .line 370
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->changeSize(F)V

    .line 371
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->changePenIcon(II)V

    .line 372
    return-void
.end method

.method public changePenColor(I)V
    .locals 2
    .parameter "penColor"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->changePenIcon(II)V

    .line 328
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->changeColor(I)V

    .line 329
    return-void
.end method

.method public changePenSize(F)V
    .locals 1
    .parameter "penSize"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->changeSize(F)V

    .line 315
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    .line 586
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 587
    .local v0, dx:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v4

    sub-int v1, v0, v4

    .line 588
    .local v1, dx2:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 589
    .local v2, dy:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v4

    sub-int v3, v2, v4

    .line 590
    .local v3, dy2:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    if-ne p2, v4, :cond_0

    .line 591
    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$1;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v5, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 608
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    .line 593
    :pswitch_1
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 594
    neg-int v4, v0

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 597
    :pswitch_2
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 598
    neg-int v4, v0

    sub-int/2addr v4, v1

    int-to-float v4, v4

    neg-int v5, v2

    sub-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 603
    :pswitch_3
    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 604
    neg-int v4, v2

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPenMenuSize()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPenTipToSizeRatio()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenTipToSizeRatio:F

    return v0
.end method

.method getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .locals 1
    .parameter "penTypeId"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mSize:I

    return v0
.end method

.method public hideProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 287
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 479
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 482
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->releaseIcon()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mBackgroundView:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;

    .line 470
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanel;->removeAllViews()V

    .line 471
    return-void
.end method

.method public setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V
    .locals 12
    .parameter "hint"
    .parameter "playAnim"

    .prologue
    .line 526
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHint:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    if-ne v2, p1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 529
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHint:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    .line 533
    new-instance v11, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v11}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 535
    .local v11, interpolator:Landroid/view/animation/Interpolator;
    sget-object v2, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    if-ne p1, v2, :cond_2

    .line 536
    if-eqz p2, :cond_1

    .line 537
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 541
    .local v0, moveInAnim:Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintAnimDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 542
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, -0x4080

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 548
    .local v1, moveOutAnim:Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 549
    invoke-virtual {v1, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 551
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 552
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 555
    .end local v0           #moveInAnim:Landroid/view/animation/Animation;
    .end local v1           #moveOutAnim:Landroid/view/animation/Animation;
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 557
    :cond_2
    if-eqz p2, :cond_3

    .line 558
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, -0x4080

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 562
    .restart local v0       #moveInAnim:Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintAnimDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 563
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 565
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f80

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 569
    .restart local v1       #moveOutAnim:Landroid/view/animation/Animation;
    iget-wide v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 570
    invoke-virtual {v1, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 572
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 573
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 576
    .end local v0           #moveInAnim:Landroid/view/animation/Animation;
    .end local v1           #moveOutAnim:Landroid/view/animation/Animation;
    :cond_3
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mHintSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto/16 :goto_0
.end method

.method public setPen(Lcom/htc/painting/penmenu/Pen;Z)V
    .locals 3
    .parameter "pen"
    .parameter "isEraser"

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v0

    .line 345
    .local v0, color:I
    if-eqz p2, :cond_0

    .line 346
    const v0, -0x333334

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setPenSize(IF)V

    .line 350
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->setPenIcon(II)V

    .line 351
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 302
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 270
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mProgressAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenSizeView:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanel;->mPenIconView:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->setVisibility(I)V

    .line 274
    return-void
.end method
