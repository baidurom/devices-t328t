.class public Lcom/htc/fragment/widget/CarouselTextView;
.super Landroid/widget/TextView;
.source "CarouselTextView.java"


# static fields
.field private static final LINES_1_MARQUEE:I = 0x2

.field private static final LINES_1_NORMAL:I = 0x1

.field private static final LINES_2_NORMAL:I = 0x3

.field private static final LINES_UNSPECIFIED:I

.field private static multiplyPaint:Landroid/graphics/Paint;

.field private static screenPaint:Landroid/graphics/Paint;


# instance fields
.field private display:Landroid/view/Display;

.field private firstDraw:Z

.field private firstWordWidth:F

.field private forceSingleLine:Z

.field private isOneWordString:Z

.field private isPortrait:Z

.field private lines:I

.field private mHandler:Landroid/os/Handler;

.field private mLayoutRequester:Ljava/lang/Runnable;

.field private final maxAlpha:I

.field private final minAlpha:I

.field private mutiplyEnable:Z

.field private previousString:Ljava/lang/CharSequence;

.field private screenBitmap:Landroid/graphics/Bitmap;

.field private screenCanvas:Landroid/graphics/Canvas;

.field private screenEnable:Z

.field private final screenScale:F

.field private totalStringWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    .line 45
    sput-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->minAlpha:I

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->maxAlpha:I

    .line 35
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenScale:F

    .line 37
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->isPortrait:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->forceSingleLine:Z

    .line 48
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 54
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 334
    iput v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    .line 336
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    .line 337
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    .line 338
    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    .line 339
    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    .line 343
    new-instance v0, Lcom/htc/fragment/widget/CarouselTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselTextView$1;-><init>(Lcom/htc/fragment/widget/CarouselTextView;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    .line 457
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstDraw:Z

    .line 63
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselTextView;->checkTextWidth(Ljava/lang/CharSequence;)V

    .line 64
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setOrientation()V

    .line 66
    invoke-virtual {p0, v3, v2}, Lcom/htc/fragment/widget/CarouselTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->minAlpha:I

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->maxAlpha:I

    .line 35
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenScale:F

    .line 37
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->isPortrait:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->forceSingleLine:Z

    .line 48
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 54
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 334
    iput v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    .line 336
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    .line 337
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    .line 338
    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    .line 339
    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    .line 343
    new-instance v0, Lcom/htc/fragment/widget/CarouselTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselTextView$1;-><init>(Lcom/htc/fragment/widget/CarouselTextView;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    .line 457
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstDraw:Z

    .line 73
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselTextView;->checkTextWidth(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setOrientation()V

    .line 76
    invoke-virtual {p0, v3, v2}, Lcom/htc/fragment/widget/CarouselTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/CarouselTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setupTextLines()V

    return-void
.end method

.method private checkTextWidth(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 367
    :cond_0
    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    .line 368
    iput v5, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    .line 369
    iput v5, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    .line 393
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 372
    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, newText:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 375
    .local v2, newTextLen:I
    new-array v3, v2, [F

    .line 376
    .local v3, widths:[F
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 378
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    .line 379
    iput v5, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 382
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    .line 384
    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    .line 389
    :cond_3
    iget v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    .line 390
    :goto_1
    if-ge v0, v2, :cond_1

    .line 391
    iget v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    aget v5, v3, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_4
    iget v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    aget v5, v3, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getStatesSet()[[I
    .locals 3

    .prologue
    .line 453
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    return-object v0
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 96
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->isPortrait:Z

    .line 99
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setupTextLines()V

    .line 100
    return-void

    .line 96
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupTextLines()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 399
    .local v1, holder:Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v3, :cond_2

    .line 400
    check-cast v1, Lcom/htc/fragment/widget/CarouselWidget;

    .end local v1           #holder:Landroid/view/ViewParent;
    iget-object v0, v1, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    .line 401
    .local v0, fs:Lcom/htc/fragment/widget/FastScroller;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->getState()I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    .end local v0           #fs:Lcom/htc/fragment/widget/FastScroller;
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 410
    .local v2, width:I
    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3

    if-gtz v2, :cond_4

    .line 411
    :cond_3
    iput v5, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    goto :goto_0

    .line 416
    :cond_4
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->isPortrait:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->forceSingleLine:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->isOneWordString:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstWordWidth:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 417
    :cond_5
    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->totalStringWidth:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 418
    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    if-eq v3, v7, :cond_1

    .line 420
    iput v7, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    .line 421
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselTextView;->setSingleLine(Z)V

    .line 424
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 425
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 426
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselTextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0

    .line 428
    :cond_6
    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    if-eq v3, v6, :cond_1

    .line 430
    iput v6, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    .line 431
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselTextView;->setSingleLine(Z)V

    .line 432
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselTextView;->setLines(I)V

    .line 434
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 435
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 438
    :cond_7
    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    if-eq v3, v8, :cond_1

    .line 440
    iput v8, p0, Lcom/htc/fragment/widget/CarouselTextView;->lines:I

    .line 441
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselTextView;->setSingleLine(Z)V

    .line 442
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselTextView;->setLines(I)V

    .line 446
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 447
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public enableBrightScreen(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/high16 v4, 0x3f80

    .line 158
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    if-ne p1, v2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 162
    :cond_0
    if-eqz p1, :cond_2

    .line 163
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mContext:Landroid/content/Context;

    const v3, 0x203005b

    invoke-virtual {p0, v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 165
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x206004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselTextView;->setTextColor(I)V

    .line 173
    :goto_1
    if-eqz p1, :cond_1

    .line 174
    sget-object v2, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 175
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 177
    .local v1, screenMatrix:Landroid/graphics/ColorMatrix;
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, screenArray:[F
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 182
    const/4 v2, 0x0

    aput v4, v0, v2

    .line 183
    const/4 v2, 0x6

    aput v4, v0, v2

    .line 184
    const/16 v2, 0xc

    aput v4, v0, v2

    .line 185
    const/16 v2, 0x12

    aput v4, v0, v2

    .line 187
    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 188
    sget-object v2, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    sget-object v2, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 194
    .end local v0           #screenArray:[F
    .end local v1           #screenMatrix:Landroid/graphics/ColorMatrix;
    :cond_1
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    .line 195
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->invalidate()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mContext:Landroid/content/Context;

    const v3, 0x203005c

    invoke-virtual {p0, v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 169
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselTextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public enableClickMultiply(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    if-ne p1, v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    .line 123
    sget-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    .line 127
    sget-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    sget-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    :cond_1
    sget-object v0, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "multiply_color"

    const/high16 v4, 0x206

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    :cond_2
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    .line 137
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->invalidate()V

    goto :goto_0
.end method

.method enableForceSingleLine(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselTextView;->forceSingleLine:Z

    .line 106
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setupTextLines()V

    .line 107
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 321
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, exception:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setOrientation()V

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 299
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 304
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 249
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 255
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    const/4 v7, 0x0

    .line 262
    .local v7, canvasCount:I
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselTextView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    const/16 v6, 0x1f

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mutiplyEnable:Z

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/htc/fragment/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 273
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 276
    :cond_4
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenEnable:Z

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/htc/fragment/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselTextView;->mScrollY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstDraw:Z

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->firstDraw:Z

    .line 464
    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    .line 465
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "owidth"
    .parameter "oheight"

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 235
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselTextView;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselTextView;->previousString:Ljava/lang/CharSequence;

    .line 360
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselTextView;->checkTextWidth(Ljava/lang/CharSequence;)V

    .line 362
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselTextView;->setupTextLines()V

    goto :goto_0
.end method
