.class public Lcom/htc/fm/ui/widget/FMSeekBar;
.super Landroid/view/View;
.source "FMSeekBar.java"


# static fields
.field private static final DEFAULT_LENGTH:I = 0x64

.field private static final SAVE_MOVE_TIME_INTERVAL:I = 0x64


# instance fields
.field private mFrequencyFactor:D

.field private mHeight:I

.field private mIsEnabled:Z

.field private mLength:I

.field private mLineIndicator:Landroid/graphics/drawable/Drawable;

.field private mLineRect:Landroid/graphics/Rect;

.field private mOnTouchDownTime:J

.field private mPosition:I

.field private mPressed:Z

.field private mPrevMoveTime:J

.field private mStartLine:I

.field private mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

.field private mTriangleIndicator:Landroid/graphics/drawable/Drawable;

.field private mTriangleRect:Landroid/graphics/Rect;

.field private mTriangleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/ui/widget/FMSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/ui/widget/FMSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    .line 21
    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    .line 22
    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    .line 23
    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mHeight:I

    .line 24
    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleWidth:I

    .line 26
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mFrequencyFactor:D

    .line 28
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mOnTouchDownTime:J

    .line 29
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPrevMoveTime:J

    .line 31
    iput-boolean v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPressed:Z

    .line 32
    iput-boolean v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mIsEnabled:Z

    .line 54
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/htc/fm/R$styleable;->FMSeekBar:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/16 v3, 0x64

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    .line 56
    const v3, 0x7f020023

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 57
    .local v1, tLineIndicator:I
    const/4 v3, 0x2

    const v4, 0x7f02001e

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 59
    .local v2, tTriangleIndicatorResID:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    .line 64
    iget-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mHeight:I

    .line 65
    iget-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleWidth:I

    .line 69
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget v6, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineRect:Landroid/graphics/Rect;

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleRect:Landroid/graphics/Rect;

    .line 72
    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    sget v4, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mFrequencyFactor:D

    .line 73
    return-void
.end method

.method private getPosition(I)I
    .locals 2
    .parameter "pX"

    .prologue
    .line 196
    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    sub-int v0, p1, v1

    .line 197
    .local v0, pPosition:I
    if-gez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :cond_0
    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    if-ge v1, v0, :cond_1

    .line 201
    iget v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    .line 203
    :cond_1
    return v0
.end method


# virtual methods
.method public getFreq()I
    .locals 5

    .prologue
    .line 181
    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mFrequencyFactor:D

    mul-double/2addr v1, v3

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 182
    .local v0, tFreq:I
    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    if-ge v1, v0, :cond_0

    .line 183
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    .line 186
    :cond_0
    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-le v1, v0, :cond_1

    .line 187
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    .line 190
    :cond_1
    div-int/lit8 v1, v0, 0x64

    mul-int/lit8 v0, v1, 0x64

    .line 192
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget v2, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mStartLine:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 88
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 90
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 91
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    iget v2, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLineIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTriangleIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/ui/widget/FMSeekBar;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const-wide/16 v11, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    iget-boolean v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mIsEnabled:Z

    if-nez v7, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v5

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, moveAction:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 108
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 110
    .local v4, y:I
    if-ltz v4, :cond_2

    iget v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mHeight:I

    if-le v4, v7, :cond_3

    :cond_2
    if-ne v0, v6, :cond_0

    .line 114
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->invalidate()V

    move v5, v6

    .line 168
    goto :goto_0

    .line 116
    :pswitch_0
    iput-boolean v6, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPressed:Z

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mOnTouchDownTime:J

    .line 118
    invoke-direct {p0, v3}, Lcom/htc/fm/ui/widget/FMSeekBar;->getPosition(I)I

    move-result v5

    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    .line 119
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->getFreq()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;->onStartTrackingTouch(I)V

    goto :goto_1

    .line 124
    :pswitch_1
    iget-boolean v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPressed:Z

    if-eqz v5, :cond_4

    .line 128
    invoke-direct {p0, v3}, Lcom/htc/fm/ui/widget/FMSeekBar;->getPosition(I)I

    move-result v5

    iput v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 130
    .local v1, tNow:J
    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPrevMoveTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_6

    .line 131
    iput-wide v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPrevMoveTime:J

    .line 139
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    if-eqz v5, :cond_4

    .line 140
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->getFreq()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;->onProgressChanged(I)V

    goto :goto_1

    .line 133
    :cond_6
    iget-wide v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPrevMoveTime:J

    sub-long v7, v1, v7

    cmp-long v5, v7, v11

    if-lez v5, :cond_5

    .line 134
    iput-wide v1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPrevMoveTime:J

    goto :goto_2

    .line 146
    .end local v1           #tNow:J
    :pswitch_2
    iget-boolean v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPressed:Z

    if-eqz v7, :cond_4

    .line 149
    iput-boolean v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPressed:Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 152
    .restart local v1       #tNow:J
    iget-wide v7, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mOnTouchDownTime:J

    sub-long v7, v1, v7

    cmp-long v5, v7, v11

    if-lez v5, :cond_7

    .line 153
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    if-eqz v5, :cond_7

    .line 154
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->getFreq()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;->onProgressChanged(I)V

    .line 158
    :cond_7
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    if-eqz v5, :cond_4

    .line 159
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->getFreq()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;->onStopTrackingTouch(I)V

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "pIsEnabled"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mIsEnabled:Z

    .line 208
    return-void
.end method

.method public setFreq(I)V
    .locals 4
    .parameter "pFrequency"

    .prologue
    .line 176
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mFrequencyFactor:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mPosition:I

    .line 177
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FMSeekBar;->invalidate()V

    .line 178
    return-void
.end method

.method public setLength(I)V
    .locals 4
    .parameter "pLength"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    .line 77
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mFrequencyFactor:D

    .line 78
    return-void
.end method

.method public setTouchListener(Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FMSeekBar;->mTouchListener:Lcom/htc/fm/ui/helper/FMSeekBarTouchListener;

    .line 173
    return-void
.end method
