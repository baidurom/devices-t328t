.class public Lcom/htc/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/SeekBar$OnToggleChangeListener;,
        Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private bound:Landroid/graphics/Rect;

.field private context:Landroid/content/Context;

.field private curProgress1:I

.field private curProgress2:I

.field private drawback:Landroid/graphics/drawable/Drawable;

.field private drawplayed:Landroid/graphics/drawable/Drawable;

.field private drawplayed2:Landroid/graphics/drawable/Drawable;

.field private drawthumb:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private mEnabled:Z

.field private maxProgress:I

.field private measuredWidth:I

.field private secAlpha:I

.field private secEnable:Z

.field private seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

.field private startLeft:I

.field private startTop:I

.field private tglEnable:Z

.field private thumbHeight:I

.field private thumbStartTop:I

.field private thumbWidth:I

.field private toggleListener:Lcom/htc/widget/SeekBar$OnToggleChangeListener;

.field private toggleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 64
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrset"
    .parameter "defstyle"

    .prologue
    const/4 v4, 0x0

    const v3, 0x208018a

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/htc/widget/SeekBar;->width:I

    .line 23
    iput v0, p0, Lcom/htc/widget/SeekBar;->height:I

    .line 24
    iput v0, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    .line 25
    iput v0, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    .line 26
    iput v0, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    .line 28
    iput v1, p0, Lcom/htc/widget/SeekBar;->startTop:I

    .line 29
    iput v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    .line 30
    iput v1, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    .line 32
    iput v0, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    .line 33
    iput v0, p0, Lcom/htc/widget/SeekBar;->curProgress2:I

    .line 35
    const/16 v0, 0x5a

    iput v0, p0, Lcom/htc/widget/SeekBar;->secAlpha:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/SeekBar;->toggleSize:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/SeekBar;->secEnable:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/SeekBar;->tglEnable:Z

    .line 42
    iput-object v4, p0, Lcom/htc/widget/SeekBar;->toggleListener:Lcom/htc/widget/SeekBar$OnToggleChangeListener;

    .line 43
    iput-object v4, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    .line 70
    iput-object p1, p0, Lcom/htc/widget/SeekBar;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, v2}, Lcom/htc/widget/SeekBar;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/htc/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->drawback:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20803e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_progress_full"

    invoke-static {p1, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_progress_full"

    invoke-static {p1, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    .line 84
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->width:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->height:I

    .line 90
    invoke-direct {p0}, Lcom/htc/widget/SeekBar;->initialize()V

    .line 91
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/widget/SeekBar;->width:I

    iget v1, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    .line 99
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->startTop:I

    .line 102
    iget v0, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v1, p0, Lcom/htc/widget/SeekBar;->height:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    .line 105
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawback:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->secAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    return v0
.end method

.method public getProgress1()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    return v0
.end method

.method public getProgress2()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/widget/SeekBar;->curProgress2:I

    return v0
.end method

.method public getToggleSize()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/htc/widget/SeekBar;->toggleSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/SeekBar;->secEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 281
    .local v1, widthSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 283
    .local v0, widthMode:I
    iput v1, p0, Lcom/htc/widget/SeekBar;->width:I

    .line 285
    const-string v2, "SeekBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widthSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v2, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/SeekBar;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/SeekBar;->width:I

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/SeekBar;->initialize()V

    .line 292
    iget v2, p0, Lcom/htc/widget/SeekBar;->width:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/SeekBar;->setMeasuredDimension(II)V

    .line 295
    iget v2, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/SeekBar;->setProgress(I)V

    .line 296
    iget v2, p0, Lcom/htc/widget/SeekBar;->curProgress2:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/SeekBar;->setProgress2(I)V

    .line 297
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 321
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 323
    .local v1, seekbarBound:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 324
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 325
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 326
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 329
    .local v3, xpos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 331
    .local v4, ypos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return v10

    .line 335
    :pswitch_0
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v6, :cond_1

    .line 336
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v6}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    .line 338
    :cond_1
    iget v6, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 341
    .local v0, progress:I
    if-gez v0, :cond_2

    move v0, v5

    .line 342
    :cond_2
    iget v5, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    if-le v0, v5, :cond_3

    iget v0, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 344
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 350
    .end local v0           #progress:I
    :pswitch_1
    iget-object v6, p0, Lcom/htc/widget/SeekBar;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    iget v6, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 355
    .restart local v0       #progress:I
    if-gez v0, :cond_4

    move v0, v5

    .line 356
    :cond_4
    iget v5, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    if-le v0, v5, :cond_5

    iget v0, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 358
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/SeekBar;->setProgress(I)V

    .line 360
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_0

    .line 361
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    invoke-interface {v5, v6, v10}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_0

    .line 370
    .end local v0           #progress:I
    :pswitch_2
    iget-boolean v6, p0, Lcom/htc/widget/SeekBar;->tglEnable:Z

    if-eqz v6, :cond_8

    .line 372
    iget v6, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    iget v8, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 373
    .restart local v0       #progress:I
    iget v6, p0, Lcom/htc/widget/SeekBar;->toggleSize:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v0

    int-to-double v6, v6

    iget v8, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 374
    .local v2, stage:I
    iget v6, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    mul-int/2addr v6, v2

    int-to-double v6, v6

    iget v8, p0, Lcom/htc/widget/SeekBar;->toggleSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 377
    if-gez v0, :cond_6

    move v0, v5

    .line 378
    :cond_6
    iget v5, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    if-le v0, v5, :cond_7

    iget v0, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 380
    :cond_7
    invoke-virtual {p0, v0}, Lcom/htc/widget/SeekBar;->setProgress(I)V

    .line 382
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->toggleListener:Lcom/htc/widget/SeekBar$OnToggleChangeListener;

    if-eqz v5, :cond_8

    .line 383
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->toggleListener:Lcom/htc/widget/SeekBar$OnToggleChangeListener;

    invoke-interface {v5, v2, v0}, Lcom/htc/widget/SeekBar$OnToggleChangeListener;->onToggleChanged(II)V

    .line 386
    .end local v0           #progress:I
    .end local v2           #stage:I
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_0

    .line 387
    iget-object v5, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v5}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch()V

    goto/16 :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/htc/widget/SeekBar;->mEnabled:Z

    .line 152
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "maximum"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/htc/widget/SeekBar;->setMaxProgress(I)V

    .line 133
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .parameter "maximum"

    .prologue
    .line 141
    if-lez p1, :cond_0

    .end local p1
    :goto_0
    iput p1, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 142
    return-void

    .line 141
    .restart local p1
    :cond_0
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/widget/SeekBar;->seekbarListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    .line 119
    return-void
.end method

.method public setOnToggleChangeListener(Lcom/htc/widget/SeekBar$OnToggleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/widget/SeekBar;->toggleListener:Lcom/htc/widget/SeekBar$OnToggleChangeListener;

    .line 128
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 168
    if-gez p1, :cond_0

    move p1, v1

    .line 169
    :cond_0
    iget v2, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    if-le p1, v2, :cond_1

    iget p1, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 171
    :cond_1
    iput p1, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    .line 172
    iget v2, p0, Lcom/htc/widget/SeekBar;->curProgress1:I

    int-to-double v2, v2

    iget v4, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 175
    .local v0, xlength:I
    if-gez v0, :cond_2

    move v0, v1

    .line 176
    :cond_2
    iget v1, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/SeekBar;->drawthumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbStartTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->thumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/SeekBar;->invalidate()V

    .line 189
    return-void

    .line 183
    :cond_4
    if-lez v0, :cond_5

    .line 184
    iget-object v1, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/SeekBar;->drawplayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setProgress2(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 200
    if-gez p1, :cond_0

    move p1, v1

    .line 201
    :cond_0
    iget v2, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    if-le p1, v2, :cond_1

    iget p1, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    .line 203
    :cond_1
    iput p1, p0, Lcom/htc/widget/SeekBar;->curProgress2:I

    .line 204
    iget v2, p0, Lcom/htc/widget/SeekBar;->curProgress2:I

    int-to-double v2, v2

    iget v4, p0, Lcom/htc/widget/SeekBar;->maxProgress:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 207
    .local v0, xlength:I
    if-gez v0, :cond_2

    move v0, v1

    .line 208
    :cond_2
    iget v1, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/htc/widget/SeekBar;->measuredWidth:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 211
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/SeekBar;->drawplayed2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/htc/widget/SeekBar;->startTop:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    iget v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    add-int/2addr v1, v0

    iget v5, p0, Lcom/htc/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    :goto_0
    iget v5, p0, Lcom/htc/widget/SeekBar;->startTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->height:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/widget/SeekBar;->invalidate()V

    .line 214
    return-void

    .line 211
    :cond_4
    iget v1, p0, Lcom/htc/widget/SeekBar;->startLeft:I

    goto :goto_0
.end method

.method public setSecondEnable(Z)V
    .locals 0
    .parameter "isecEnable"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/htc/widget/SeekBar;->secEnable:Z

    .line 161
    return-void
.end method

.method public setToggleEnable(Z)V
    .locals 0
    .parameter "isecEnable"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/htc/widget/SeekBar;->tglEnable:Z

    .line 251
    return-void
.end method

.method public setToggleSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 259
    if-lez p1, :cond_0

    .end local p1
    :goto_0
    iput p1, p0, Lcom/htc/widget/SeekBar;->toggleSize:I

    .line 260
    return-void

    .line 259
    .restart local p1
    :cond_0
    const/4 p1, 0x3

    goto :goto_0
.end method
