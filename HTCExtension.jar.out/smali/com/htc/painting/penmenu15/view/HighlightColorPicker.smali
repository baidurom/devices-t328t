.class public Lcom/htc/painting/penmenu15/view/HighlightColorPicker;
.super Lcom/htc/painting/penmenu15/view/CircularPanel;
.source "HighlightColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;
    }
.end annotation


# static fields
.field private static final END_ANGLE:I = 0xb4

.field private static final ID_UNHIGHLIGHT:I = 0x1f9

.field private static final START_ANGLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private final BTN_DIST:I

.field private final INNER_RADIUS:I

.field private final OUTER_RADIUS:I

.field private mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

.field private mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

.field private mMotionTarget:I

.field private mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

.field private mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    .line 40
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    .line 41
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 43
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 132
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    .line 50
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    .line 51
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->BTN_DIST:I

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    .line 40
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    .line 41
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 43
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 132
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    .line 59
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    .line 60
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->BTN_DIST:I

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    .line 40
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    .line 41
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 43
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 132
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    .line 69
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    .line 70
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->INNER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->OUTER_RADIUS:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->BTN_DIST:I

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private findColorInd(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)I
    .locals 6
    .parameter "hlConfig"

    .prologue
    .line 329
    const/high16 v4, -0x8000

    .line 330
    .local v4, result:I
    if-eqz p1, :cond_0

    instance-of v5, p1, Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 331
    check-cast v1, Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;

    .line 332
    .local v1, config:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;
    invoke-interface {v1}, Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;->getSupportedColors()[I

    move-result-object v0

    .line 333
    .local v0, colors:[I
    invoke-interface {v1}, Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;->getColor()I

    move-result v2

    .line 334
    .local v2, curColor:I
    if-eqz v0, :cond_0

    .line 335
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 336
    aget v5, v0, v3

    if-ne v5, v2, :cond_1

    .line 337
    move v4, v3

    .line 343
    .end local v0           #colors:[I
    .end local v1           #config:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;
    .end local v2           #curColor:I
    .end local v3           #i:I
    :cond_0
    return v4

    .line 335
    .restart local v0       #colors:[I
    .restart local v1       #config:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;
    .restart local v2       #curColor:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setClickable(Z)V

    .line 87
    const/16 v2, 0x1f9

    const/4 v3, -0x5

    iget v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->BTN_DIST:I

    add-int/lit8 v4, v0, -0x8

    const v5, 0x20403bd

    const v6, 0x20802c2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 91
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private refreshAdapter()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->invalidate()V

    .line 113
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->requestLayout()V

    .line 114
    return-void
.end method

.method private setHighlightConfigByStateManager(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)V
    .locals 7
    .parameter "hlConfig"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    instance-of v0, p1, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    move-object v1, p1

    check-cast v1, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v5, 0xb4

    iget v6, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->BTN_DIST:I

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;-><init>(Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;III)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    .line 353
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->refreshAdapter()V

    .line 356
    :cond_0
    return-void
.end method

.method private updateSelectionTo(I)V
    .locals 4
    .parameter "highlightInd"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    const/16 v3, -0xa

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 272
    .local v0, unhighlight:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 273
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    const/high16 v3, -0x8000

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setSelection(I)V

    .line 274
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    .line 279
    :goto_1
    return-void

    .end local v0           #unhighlight:Z
    :cond_0
    move v0, v2

    .line 271
    goto :goto_0

    .line 276
    .restart local v0       #unhighlight:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setSelection(I)V

    .line 277
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    goto :goto_1
.end method


# virtual methods
.method public containsUnhighlight(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v0

    .line 165
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 166
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v1

    .line 167
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0           #count:I
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 178
    invoke-super {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->drawableStateChanged()V

    .line 179
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getDrawableState()[I

    move-result-object v0

    .line 180
    .local v0, drawableState:[I
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HilightColorPicker: drawableStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setDrawableState([I)V

    .line 185
    :cond_0
    return-void
.end method

.method public getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 235
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 237
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method public getUnhighlightPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;)V
    .locals 1
    .parameter "mgr"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 80
    invoke-virtual {p1, p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addInternalHighlightListener(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;)V

    .line 81
    sget-object v0, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 82
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->invalidate()V

    .line 228
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 247
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_2

    .line 252
    const/16 v1, -0xa

    .line 253
    .local v1, highlihghtInd:I
    const/4 v0, 0x0

    .line 261
    .local v0, color:I
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->updateSelectionTo(I)V

    .line 264
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    invoke-interface {v2, v1, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;->onHLColorSelected(II)V

    goto :goto_0

    .line 256
    .end local v0           #color:I
    .end local v1           #highlihghtInd:I
    :cond_2
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    .line 257
    .restart local v1       #highlihghtInd:I
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #color:I
    goto :goto_1
.end method

.method public onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mPenMenuMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getHLConfig()Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    move-result-object v1

    .line 312
    .local v1, hlConfig:Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;
    sget-object v2, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p1, v2}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setHighlightConfigByStateManager(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v2, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->COLOR:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p1, v2}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->STATE:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p1, v2}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    :cond_2
    invoke-interface {v1}, Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;->getConfigState()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_3

    .line 317
    const/16 v0, -0xa

    .line 322
    .local v0, highlightInd:I
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->updateSelectionTo(I)V

    goto :goto_0

    .line 320
    .end local v0           #highlightInd:I
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->findColorInd(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)I

    move-result v0

    .restart local v0       #highlightInd:I
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v0, drawingRect:Landroid/graphics/Rect;
    invoke-super/range {p0 .. p5}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onLayout(ZIIII)V

    .line 127
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->onDrawingBoundsChanged(Landroid/graphics/Rect;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onMeasure(II)V

    .line 367
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getMeasuredWidth()I

    move-result v3

    .line 368
    .local v3, newMeasuredWidth:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getMeasuredHeight()I

    move-result v2

    .line 370
    .local v2, newMeasuredHeight:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getSuggestedMinimumWidth()I

    move-result v1

    .line 371
    .local v1, minWidth:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getSuggestedMinimumHeight()I

    move-result v0

    .line 372
    .local v0, minHeight:I
    if-ne v3, v1, :cond_0

    if-eq v2, v0, :cond_1

    .line 374
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setMeasuredDimension(II)V

    .line 376
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/high16 v3, -0x8000

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->findLocationInItem(FF)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    .line 141
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setPressed(I)V

    .line 142
    const-string v0, "PenMenuNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionTarget set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mMotionTarget:I

    if-eq v0, v3, :cond_3

    .line 149
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 151
    :goto_1
    return v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setPressed(I)V

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public performUnhighlightClick()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mUnHLBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 294
    return-void
.end method

.method public setAdapter(Lcom/htc/painting/penmenu15/view/HLColorAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->release()V

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mAdapter:Lcom/htc/painting/penmenu15/view/HLColorAdapter;

    .line 108
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->refreshAdapter()V

    .line 109
    return-void
.end method

.method public setOnHLColorSelectedListener(Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->mListener:Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;

    .line 206
    invoke-virtual {p0, p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method
