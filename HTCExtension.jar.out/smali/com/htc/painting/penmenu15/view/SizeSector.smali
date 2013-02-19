.class public Lcom/htc/painting/penmenu15/view/SizeSector;
.super Lcom/htc/painting/penmenu15/view/SectorController;
.source "SizeSector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ID_MINUS:I = 0x379

.field private static final ID_PLUS:I = 0x378

.field private static final TAG:Ljava/lang/String; = "SectorController"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mTempRect:Landroid/graphics/Rect;

    .line 22
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SizeSector;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/SectorController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mTempRect:Landroid/graphics/Rect;

    .line 27
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SizeSector;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/SectorController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mTempRect:Landroid/graphics/Rect;

    .line 32
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SizeSector;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/16 v1, 0xb4

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->setAngles(IIZ)V

    .line 38
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->setProgress(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 71
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method protected inChildCoreArea(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, inChild:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SizeSector;->getChildCount()I

    move-result v1

    .line 99
    .local v1, childCnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 100
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/SizeSector;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, child:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 102
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mTempRect:Landroid/graphics/Rect;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const/4 v3, 0x1

    .line 108
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v3

    .line 99
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initialize(IIIII)V
    .locals 9
    .parameter "buttonDist"
    .parameter "iconPlusRes"
    .parameter "iconMinusRes"
    .parameter "indicatorDist"
    .parameter "indicatorRes"

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mContext:Landroid/content/Context;

    const/16 v2, 0x378

    const/16 v3, 0x158

    move-object v0, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/SizeSector;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v8

    .line 49
    .local v8, plusBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    invoke-virtual {v8, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-super {p0, v8}, Lcom/htc/painting/penmenu15/view/SectorController;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 51
    new-instance v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;

    invoke-direct {v0, v8}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SizeSector;->mContext:Landroid/content/Context;

    const/16 v2, 0x379

    const/16 v3, 0xc4

    move-object v0, p0

    move v4, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/SizeSector;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v7

    .line 56
    .local v7, minsuBtn:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    invoke-virtual {v7, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-super {p0, v7}, Lcom/htc/painting/penmenu15/view/SectorController;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 58
    new-instance v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;

    invoke-direct {v0, v7}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    invoke-super {p0, p5, p4}, Lcom/htc/painting/penmenu15/view/SectorController;->setIconRes(II)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SizeSector;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->setProgress(I)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SizeSector;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->setProgress(I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x378
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
