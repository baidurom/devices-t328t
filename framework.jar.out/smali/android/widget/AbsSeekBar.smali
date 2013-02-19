.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final bArabicDisplay:Z


# instance fields
.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 71
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 78
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 87
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 467
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 273
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 274
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 275
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 276
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 279
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 281
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 284
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 286
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 287
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 294
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    return-void

    .line 289
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 290
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 414
    .local v4, width:I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 415
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 417
    .local v5, x:I
    const/4 v2, 0x0

    .line 420
    .local v2, progress:F
    sget-boolean v6, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-nez v6, :cond_2

    .line 422
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_0

    .line 423
    const/4 v3, 0x0

    .line 453
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 454
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 456
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 457
    return-void

    .line 424
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 425
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 427
    .end local v3           #scale:F
    :cond_1
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 428
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 432
    .end local v3           #scale:F
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mirror"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 434
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 435
    .end local v3           #scale:F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 436
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_0

    .line 438
    .end local v3           #scale:F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 439
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 442
    .end local v3           #scale:F
    :cond_5
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_6

    .line 443
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_0

    .line 444
    .end local v3           #scale:F
    :cond_6
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_7

    .line 445
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 447
    .end local v3           #scale:F
    :cond_7
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 448
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 237
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 240
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 242
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 243
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 245
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 246
    if-eqz v5, :cond_0

    .line 247
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 249
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 250
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 252
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 237
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 243
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 257
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 259
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 263
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 264
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 202
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 209
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 211
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 204
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 195
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 196
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 301
    sget-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    sget-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 492
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 494
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 509
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 496
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 497
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 498
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 503
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 504
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 331
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 332
    .local v2, dw:I
    const/4 v1, 0x0

    .line 333
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 334
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 335
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 339
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 341
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 330
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 328
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 216
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 217
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 232
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 474
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 482
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 409
    :cond_1
    :goto_0
    return v1

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 357
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 358
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 360
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 361
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 362
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 367
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 368
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 371
    .local v0, x:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 372
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 373
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 374
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 376
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 377
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 378
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 384
    .end local v0           #x:F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 385
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 386
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 398
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 391
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 392
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 393
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 402
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 403
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 404
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 406
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 161
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 162
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 102
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 103
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    const/4 v0, 0x1

    .line 108
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 117
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 123
    :cond_1
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 131
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 134
    .end local v1           #state:[I
    :cond_2
    return-void

    .line 106
    .end local v0           #needUpdate:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 150
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 151
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 152
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
