.class public Lcom/htc/painting/penmenu/PenMenuBar;
.super Landroid/widget/LinearLayout;
.source "PenMenuBar.java"

# interfaces
.implements Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mColorOptionBar:Landroid/widget/LinearLayout;

.field private mOptionViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/PenMenuBarOptionView;",
            ">;"
        }
    .end annotation
.end field

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mProgressAnimation:Landroid/view/animation/Animation;

.field private mProgressBar:Landroid/widget/ImageView;

.field private mSizeOptionBar:Landroid/widget/LinearLayout;

.field private mWarningToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/painting/penmenu/PenMenuBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/penmenu/PenMenuBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/PenMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mOptionViewList:Ljava/util/List;

    .line 67
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x209006a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    const v2, 0x2020141

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mColorOptionBar:Landroid/widget/LinearLayout;

    .line 72
    const v2, 0x2020143

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mSizeOptionBar:Landroid/widget/LinearLayout;

    .line 74
    const v2, 0x2020144

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080454

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    .local v1, spinner:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 81
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 84
    .local v7, animDuration:I
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressAnimation:Landroid/view/animation/Animation;

    .line 86
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressAnimation:Landroid/view/animation/Animation;

    int-to-long v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBar;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method private setOptions(ILandroid/widget/LinearLayout;)V
    .locals 7
    .parameter "menuId"
    .parameter "bar"

    .prologue
    const/4 v6, -0x2

    .line 126
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 127
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v2, :cond_0

    .line 128
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x4188

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 131
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 132
    .local v1, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    new-instance v3, Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, optionView:Lcom/htc/painting/penmenu/PenMenuBarOptionView;
    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v3, p1, v1, p0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setOptionItem(ILcom/htc/painting/penmenu/menu/OptionItem;Lcom/htc/painting/penmenu/PenMenuBar;)V

    .line 136
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mOptionViewList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    .end local v3           #optionView:Lcom/htc/painting/penmenu/PenMenuBarOptionView;
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mColorOptionBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mOptionViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    .line 268
    .local v1, optionView:Lcom/htc/painting/penmenu/PenMenuBarOptionView;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->releaseResource()V

    goto :goto_1

    .line 270
    .end local v1           #optionView:Lcom/htc/painting/penmenu/PenMenuBarOptionView;
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mOptionViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 272
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mColorOptionBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 273
    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mColorOptionBar:Landroid/widget/LinearLayout;

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mSizeOptionBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 276
    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mSizeOptionBar:Landroid/widget/LinearLayout;

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 279
    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    .line 281
    :cond_5
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->removeAllViews()V

    .line 282
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v2, :cond_0

    .line 283
    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    goto :goto_0
.end method

.method public onOptionChanged(II)V
    .locals 3
    .parameter "menuId"
    .parameter "optionId"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mOptionViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    .line 169
    .local v1, view:Lcom/htc/painting/penmenu/PenMenuBarOptionView;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->getMenuId()I

    move-result v2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 171
    :cond_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->changeIcon()V

    goto :goto_0
.end method

.method public onOptionInitialized()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBar;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 197
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mProgressBar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/htc/painting/penmenu/PenMenu;->changePen(II)V

    .line 232
    :cond_0
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 2
    .parameter "penMenu"

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 108
    sget-object v0, Lcom/htc/painting/penmenu/PenMenuBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setPenMenu - null parameter."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 118
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mColorOptionBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenuBar;->setOptions(ILandroid/widget/LinearLayout;)V

    .line 120
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mSizeOptionBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenuBar;->setOptions(ILandroid/widget/LinearLayout;)V

    .line 122
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu/PenMenu;->setOnOptionChangedListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V

    goto :goto_0
.end method

.method setSizeId(I)V
    .locals 2
    .parameter "sizeId"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/htc/painting/penmenu/PenMenu;->changePen(II)V

    .line 244
    :cond_0
    return-void
.end method

.method public setToastPosition(III)V
    .locals 1
    .parameter "gravity"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenuBar;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mWarningToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mWarningToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method showWarningUsePen()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mWarningToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBar;->mWarningToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    :cond_0
    return-void
.end method
