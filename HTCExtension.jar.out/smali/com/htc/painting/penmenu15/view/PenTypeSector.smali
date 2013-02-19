.class public Lcom/htc/painting/penmenu15/view/PenTypeSector;
.super Lcom/htc/painting/penmenu15/view/CircularPanel;
.source "PenTypeSector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/painting/penmenu15/transition/Transitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;
    }
.end annotation


# static fields
.field public static final ID_ERASER:I = 0x3b

.field public static final ID_HIGHLIGHT:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

.field private mContext:Landroid/content/Context;

.field private mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

.field private mMotionTarget:I

.field private mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 162
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    .line 354
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 162
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    .line 354
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    .line 66
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 162
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    .line 354
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private drawAdapter(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 242
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v6, :cond_1

    .line 244
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getAllDrawables()Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 247
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 248
    .local v3, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    invoke-virtual {v3, p1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 251
    .end local v3           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    :cond_0
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getDividers()Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, dividers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularDivider;>;"
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 253
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/drawable/CircularDivider;

    .line 254
    .local v1, divider:Lcom/htc/painting/penmenu15/drawable/CircularDivider;
    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->draw(Landroid/graphics/Canvas;)V

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 257
    .end local v0           #count:I
    .end local v1           #divider:Lcom/htc/painting/penmenu15/drawable/CircularDivider;
    .end local v2           #dividers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularDivider;>;"
    .end local v4           #drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    .end local v5           #i:I
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setClickable(Z)V

    .line 81
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setAnimationTransitionData()V

    .line 82
    return-void
.end method

.method private refreshAdapter()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->invalidate()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->requestLayout()V

    .line 139
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->setAdapter(Lcom/htc/painting/penmenu15/view/PenTypeAdapter;)V

    .line 140
    return-void
.end method

.method private setAnimationTransitionData()V
    .locals 12

    .prologue
    .line 357
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 361
    .local v0, in:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 363
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 367
    .local v1, out:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 369
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 374
    .local v2, childIn:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 375
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 376
    const-wide/16 v4, 0x4b

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 378
    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/16 v7, 0x64

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 380
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 385
    .local v3, childOut:Landroid/view/animation/Animation;
    new-instance v4, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    iget-object v8, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    move-object v5, p0

    move-object v6, v0

    move-object v7, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/htc/painting/penmenu15/view/PenTypeAdapter;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    .line 387
    return-void
.end method


# virtual methods
.method public addEraserButton(II)V
    .locals 7
    .parameter "deg"
    .parameter "dist"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    const/16 v2, 0x3b

    const v5, 0x20403b7

    const v6, 0x20802bc

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 91
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setViewShifts(II)V

    .line 93
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public addHLButton(II)V
    .locals 7
    .parameter "deg"
    .parameter "dist"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mContext:Landroid/content/Context;

    const/16 v2, 0x3c

    const v5, 0x20403b8

    const v6, 0x20802bd

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 102
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setViewShifts(II)V

    .line 104
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->drawAdapter(Landroid/graphics/Canvas;)V

    .line 239
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->drawAdapter(Landroid/graphics/Canvas;)V

    .line 229
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 265
    invoke-super {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->drawableStateChanged()V

    .line 266
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getDrawableState()[I

    move-result-object v0

    .line 267
    .local v0, drawableState:[I
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenTypeSector: drawableStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setDrawableState([I)V

    .line 272
    :cond_0
    return-void
.end method

.method public getEraserButton()Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    return-object v0
.end method

.method public getHLButton()Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    return-object v0
.end method

.method public getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 322
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 324
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->invalidate()V

    .line 315
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 335
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    iget v3, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setSelection(I)V

    .line 337
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    if-eqz v2, :cond_2

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 345
    .restart local v1       #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 346
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    invoke-interface {v2, v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;->onPenTypeSelected(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 349
    .end local v1           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_2
    return-void

    .line 341
    .restart local v1       #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_3
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getSelection()I

    move-result v0

    .line 343
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getItem(I)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v0, drawingRect:Landroid/graphics/Rect;
    invoke-super/range {p0 .. p5}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onLayout(ZIIII)V

    .line 155
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->onDrawingBoundsChanged(Landroid/graphics/Rect;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onMeasure(II)V

    .line 409
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 410
    .local v1, parent:Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 411
    .local v2, width:I
    const/4 v0, 0x0

    .line 412
    .local v0, height:I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    invoke-virtual {p0, v2, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setMeasuredDimension(II)V

    .line 423
    :goto_1
    return-void

    .line 409
    .end local v0           #height:I
    .end local v1           #parent:Landroid/view/View;
    .end local v2           #width:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    .restart local v0       #height:I
    .restart local v1       #parent:Landroid/view/View;
    .restart local v2       #width:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onMeasure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/high16 v3, -0x8000

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->findLocationInItem(FF)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    .line 171
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setTouched(I)V

    .line 172
    const-string v0, "PenMenuNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionTarget set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    if-eq v0, v3, :cond_3

    .line 179
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 181
    :goto_1
    return v0

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setTouched(I)V

    goto :goto_0

    .line 181
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTransitionIn()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->startTransition(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public onTransitionOut()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mTransitioner:Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->startTransition(I)V

    .line 444
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->notifyDataSetInvalidate()V

    .line 396
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->invalidate()V

    .line 398
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/htc/painting/penmenu15/view/PenTypeAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->release()V

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 133
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->refreshAdapter()V

    .line 134
    return-void
.end method

.method public setOnPenSelectedListener(Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mListener:Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;

    .line 293
    invoke-virtual {p0, p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public typeChoose(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 199
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "typeChoose event.x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->findLocationInItem(FF)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    .line 202
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "typeChoose set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setSelection(I)V

    .line 205
    :cond_0
    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeSector;->mMotionTarget:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    .line 206
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 208
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    const/4 v0, 0x1

    .line 214
    :cond_1
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "typeChoose ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method
