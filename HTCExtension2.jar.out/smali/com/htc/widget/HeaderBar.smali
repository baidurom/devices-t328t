.class public Lcom/htc/widget/HeaderBar;
.super Landroid/view/ViewGroup;
.source "HeaderBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HeaderBar$LayoutParams;
    }
.end annotation


# static fields
.field static final enableDebug:Z = true


# instance fields
.field private backgroundBound:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundEnable:Z

.field private bubbleSize:I

.field private bubbleView:Landroid/view/View;

.field protected bubbleViewOffset:I

.field private centerView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private final disableAlpha:I

.field private final enableAlpha:I

.field private enableLeftDivider:Z

.field private enableRightDivider:Z

.field private inflator:Landroid/view/LayoutInflater;

.field private lastLDividerEnable:Z

.field private lastRDividerEnable:Z

.field private leftDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private leftDividerHeight:I

.field private leftDividerPos:[I

.field private leftDividerWidth:I

.field private leftPadding:I

.field private leftViewCount:I

.field private final maxChildCount:I

.field private nPaddingHeight:I

.field private nPaddingWidth:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private progressSize:I

.field private progressView:Landroid/view/View;

.field protected progressViewOffset:I

.field private rightDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private rightDividerHeight:I

.field private rightDividerPos:[I

.field private rightDividerWidth:I

.field private rightPadding:I

.field protected rightUnitWidth:I

.field private rightViewCount:I

.field private transparentEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "icontext"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "icontext"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "icontext"
    .parameter "attrset"
    .parameter "defStyle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v6, p0, Lcom/htc/widget/HeaderBar;->maxChildCount:I

    .line 34
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    .line 35
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    .line 36
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    .line 38
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 39
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 41
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 45
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 47
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 48
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 49
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 50
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 53
    iput v3, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    .line 54
    iput v3, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    .line 57
    iput v3, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 58
    iput v3, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 157
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    .line 158
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    .line 540
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 541
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    .line 543
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    const/16 v3, 0x7f

    iput v3, p0, Lcom/htc/widget/HeaderBar;->enableAlpha:I

    .line 569
    const/16 v3, 0xff

    iput v3, p0, Lcom/htc/widget/HeaderBar;->disableAlpha:I

    .line 571
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    .line 633
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    .line 634
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    .line 705
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    .line 706
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    .line 97
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 100
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 101
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 103
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupEnvironment()V

    .line 104
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleAndProgress()V

    .line 107
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    sget-object v4, Lcom/htc/R$styleable;->HeaderBar:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, array:Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 126
    :goto_1
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 141
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 143
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setLeftDivider(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setRightDivider(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 116
    .end local v2           #resources:Landroid/content/res/Resources;
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 117
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1

    .line 120
    :sswitch_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 121
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1

    .line 129
    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_2

    .line 132
    :sswitch_3
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_2

    .line 144
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #resources:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x2080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 147
    :cond_2
    const v3, 0x2080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 126
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupBackgroundAlpha()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 626
    :cond_0
    return-void

    .line 624
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private setupBubbleAndProgress()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method private setupBubbleView()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1

    .line 226
    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    if-gez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    const v1, 0x2090038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "common_notification_on"

    const v3, 0x208003d

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_1
    return-void
.end method

.method private setupEnvironment()V
    .locals 5

    .prologue
    .line 162
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    if-gez v1, :cond_1

    .line 169
    :cond_0
    const v1, 0x20e008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    .line 170
    const v1, 0x20e0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 171
    const v1, 0x20e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "section_divider_top"

    const v3, 0x2080099

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setBackgroundResource(I)V

    .line 180
    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    if-gez v1, :cond_2

    const v1, 0x20e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    .line 181
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    if-gez v1, :cond_3

    const v1, 0x20e008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    .line 183
    :cond_3
    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/HeaderBar;->setPadding(IIII)V

    .line 188
    return-void

    .line 187
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setupProgressView()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1

    .line 242
    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    if-gez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    const v1, 0x209003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    :cond_1
    return-void
.end method


# virtual methods
.method public addCenterView(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addLeftView(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addRightView(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 1104
    instance-of v0, p1, Lcom/htc/widget/HeaderBar$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1023
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1025
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    if-nez v0, :cond_0

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 1028
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1034
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1035
    return-void
.end method

.method public dump()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1131
    const/4 v3, 0x0

    .line 1132
    .local v3, view:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1134
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, loop:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1136
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1137
    invoke-virtual {v3, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1138
    const-string v4, "HeaderBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildAt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_0
    return-void
.end method

.method public enableLeftDivider(Z)V
    .locals 2
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-ne p1, v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 345
    .local v0, enableDivider:Z
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eq v0, v1, :cond_0

    .line 348
    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 349
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 350
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 343
    .end local v0           #enableDivider:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableLeftLastDivider(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    if-ne p1, v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    .line 659
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableRightDivider(Z)V
    .locals 2
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-ne p1, v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 366
    .local v0, enableDivider:Z
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eq v0, v1, :cond_0

    .line 369
    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 370
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 371
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 364
    .end local v0           #enableDivider:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableRightLastDivider(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    if-ne p1, v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    .line 646
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableSecondBackground(Z)V
    .locals 4
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-ne v0, p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSecondBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 558
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    .line 560
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "section_divider_top"

    const v3, 0x2080099

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 565
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableTranparentBckground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 619
    return-void
.end method

.method public enableTransparentBackground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 609
    return-void
.end method

.method public enableTransparentBackground(Z)V
    .locals 4
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v3, 0x2080099

    .line 580
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    .line 581
    const-string v0, "HtcHeaderBar"

    const-string v1, "no this method in sense tablet 1.5:enableTransparentBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-eq v0, p1, :cond_0

    .line 588
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTransparentBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    .line 592
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string v0, "section_divider_top"

    :goto_1
    if-eqz p1, :cond_2

    :cond_2
    invoke-static {v1, v0, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->setBackgroundResource(I)V

    .line 597
    iget v0, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HeaderBar;->setPadding(IIII)V

    .line 598
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 599
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 592
    :cond_3
    const-string v0, "section_divider_top"

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HeaderBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/HeaderBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HeaderBar$LayoutParams;
    .locals 2
    .parameter "attrset"

    .prologue
    .line 1113
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/HeaderBar$LayoutParams;
    .locals 1
    .parameter "params"

    .prologue
    .line 1122
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBubbleCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    return v0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 1001
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1003
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "section_divider_top"

    const v3, 0x2080099

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1007
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 1009
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-eqz v0, :cond_1

    .line 1010
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    .line 1013
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1057
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1059
    iget v4, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 1060
    .local v4, top:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    iget v6, p0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v0, v5, v6

    .line 1063
    .local v0, bottom:I
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 1064
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 1068
    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eqz v5, :cond_0

    .line 1069
    const/4 v2, 0x0

    .local v2, loop:I
    :goto_0
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    if-ge v2, v5, :cond_0

    .line 1072
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    if-nez v5, :cond_2

    .line 1083
    .end local v2           #loop:I
    :cond_0
    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eqz v5, :cond_1

    .line 1084
    const/4 v2, 0x0

    .restart local v2       #loop:I
    :goto_1
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    if-ge v2, v5, :cond_1

    .line 1087
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    if-nez v5, :cond_3

    .line 1096
    .end local v2           #loop:I
    :cond_1
    return-void

    .line 1075
    .restart local v2       #loop:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    aget v1, v5, v2

    .line 1076
    .local v1, left:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    add-int v3, v1, v5

    .line 1078
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1079
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1090
    .end local v1           #left:I
    .end local v3           #right:I
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    aget v3, v5, v2

    .line 1091
    .restart local v3       #right:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    sub-int v1, v3, v5

    .line 1093
    .restart local v1       #left:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1094
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1084
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 754
    const/4 v10, 0x0

    .line 756
    .local v10, locateLeftPanel:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    .line 757
    .local v9, leftMost:I
    sub-int v15, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 759
    .local v13, rightMost:I
    sub-int v15, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingWidth:I

    .line 760
    sub-int v15, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingBottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    .line 762
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    .line 763
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    .line 764
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    .line 770
    const/4 v11, 0x0

    .local v11, loop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v2

    .local v2, childCount:I
    :goto_0
    if-ge v11, v2, :cond_13

    .line 772
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 773
    .local v7, childView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 776
    .local v14, vglParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eq v7, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-ne v7, v15, :cond_1

    .line 770
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 781
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v10, 0x0

    .line 784
    instance-of v15, v14, Lcom/htc/widget/HeaderBar$LayoutParams;

    if-eqz v15, :cond_2

    move-object v15, v14

    .line 785
    check-cast v15, Lcom/htc/widget/HeaderBar$LayoutParams;

    iget v15, v15, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    packed-switch v15, :pswitch_data_0

    .line 802
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 803
    .local v8, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 806
    .local v3, childHeight:I
    if-eqz v10, :cond_d

    .line 809
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    move-object v12, v14

    .line 812
    .local v12, mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_3
    if-nez v12, :cond_7

    const/4 v15, 0x0

    :goto_4
    add-int v4, v9, v15

    .line 813
    .local v4, childLeft:I
    if-nez v12, :cond_8

    const/4 v15, 0x0

    :goto_5
    add-int/2addr v15, v9

    add-int v5, v15, v8

    .line 816
    .local v5, childRight:I
    add-int v16, v9, v8

    if-nez v12, :cond_9

    const/4 v15, 0x0

    :goto_6
    add-int v9, v16, v15

    .line 819
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_a

    .line 821
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 822
    .local v6, childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 831
    .local v1, childBottom:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eqz v15, :cond_4

    .line 833
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    if-eqz v15, :cond_3

    .line 834
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    move/from16 v16, v0

    aput v9, v15, v16

    .line 836
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    add-int/2addr v9, v15

    .line 840
    :cond_4
    if-gt v5, v13, :cond_b

    .line 842
    invoke-virtual {v7, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 843
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    .line 851
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 852
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "too many left child view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 789
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    .end local v12           #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    const/4 v10, 0x1

    .line 790
    goto :goto_2

    .line 794
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 795
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "more than one center view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 797
    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    goto/16 :goto_1

    .line 809
    .restart local v3       #childHeight:I
    .restart local v8       #childWidth:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 812
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v12       #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 813
    .restart local v4       #childLeft:I
    :cond_8
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 816
    .restart local v5       #childRight:I
    :cond_9
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v15, v15, v17

    goto :goto_6

    .line 826
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 827
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_7

    .line 847
    :cond_b
    invoke-virtual {v7, v4, v6, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 996
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v7           #childView:Landroid/view/View;
    .end local v8           #childWidth:I
    .end local v12           #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    :goto_8
    return-void

    .line 857
    .restart local v3       #childHeight:I
    .restart local v7       #childView:Landroid/view/View;
    .restart local v8       #childWidth:I
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    if-le v8, v15, :cond_10

    .line 859
    move v5, v13

    .line 860
    .restart local v5       #childRight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int v4, v5, v15

    .line 869
    .restart local v4       #childLeft:I
    :goto_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int/2addr v13, v15

    .line 872
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_11

    .line 874
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 875
    .restart local v6       #childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 884
    .restart local v1       #childBottom:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eqz v15, :cond_f

    .line 886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    if-eqz v15, :cond_e

    .line 887
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    move/from16 v16, v0

    aput v13, v15, v16

    .line 889
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    sub-int/2addr v13, v15

    .line 893
    :cond_f
    if-lt v4, v9, :cond_12

    .line 895
    invoke-virtual {v7, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 896
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    .line 904
    :goto_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 905
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "too many right child view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 864
    .end local v1           #childBottom:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int/2addr v15, v8

    div-int/lit8 v15, v15, 0x2

    sub-int v5, v13, v15

    .line 865
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .restart local v4       #childLeft:I
    goto :goto_9

    .line 879
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 880
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_a

    .line 901
    :cond_12
    const-string v15, "HeaderBar"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "skip right view:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 910
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v7           #childView:Landroid/view/View;
    .end local v8           #childWidth:I
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_14

    .line 912
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 913
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 915
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    sub-int v5, v13, v15

    .line 916
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .line 918
    .restart local v4       #childLeft:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 919
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .line 922
    .restart local v1       #childBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 925
    sub-int v15, v13, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 929
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 931
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 932
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 934
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    sub-int v5, v13, v15

    .line 935
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .line 937
    .restart local v4       #childLeft:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 938
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .line 941
    .restart local v1       #childBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 944
    sub-int v15, v13, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 948
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    if-ge v9, v13, :cond_c

    .line 950
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 951
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 954
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_17

    .line 956
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 957
    .restart local v6       #childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 983
    .restart local v1       #childBottom:I
    :goto_c
    sub-int v15, v13, v9

    if-eq v8, v15, :cond_16

    .line 986
    const-string v15, "HeaderBar"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "measure centerView:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    sub-int v16, v13, v9

    const/high16 v17, 0x4000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/view/View;->measure(II)V

    .line 994
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15, v9, v6, v13, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 961
    .end local v1           #childBottom:I
    .end local v6           #childTop:I
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 962
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_c

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 717
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 718
    .local v1, headerWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 720
    .local v0, headerHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 721
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    .line 722
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    .line 723
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingBottom:I

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HeaderBar;->measureChildren(II)V

    .line 739
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HeaderBar;->setMeasuredDimension(II)V

    .line 741
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 742
    return-void
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->setBubbleText(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setBubbleOffset(I)V
    .locals 2
    .parameter "offset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    if-ne p1, v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput p1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 437
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleView()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    const v1, 0x20300e2

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 419
    return-void

    .line 417
    :cond_1
    const v1, 0x20300e3

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleView()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    return-void
.end method

.method public setLeftDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 257
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 261
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 264
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    if-ne v0, v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 288
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 282
    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 283
    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setProgressOffset(I)V
    .locals 2
    .parameter "offset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    if-ne p1, v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iput p1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 454
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 457
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupProgressView()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public setRightDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 298
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 302
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 305
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    if-ne v0, v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 316
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 328
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 329
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 321
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 323
    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 324
    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public updateResource()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    const-string v3, "HeaderBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateResource():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, 0x0

    .local v2, loop:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 676
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 678
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 674
    .end local v1           #childView:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    instance-of v3, v1, Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 683
    check-cast v3, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarText;->updateResource()V

    .line 686
    :cond_2
    instance-of v3, v1, Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v3, :cond_0

    .line 687
    check-cast v1, Lcom/htc/widget/HeaderBarDropDown;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarDropDown;->updateResource()V

    goto :goto_1

    .line 689
    :cond_3
    return-void
.end method
