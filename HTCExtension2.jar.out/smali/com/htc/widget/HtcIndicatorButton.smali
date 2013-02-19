.class public Lcom/htc/widget/HtcIndicatorButton;
.super Landroid/view/View;
.source "HtcIndicatorButton.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# static fields
.field public static final DEFAULT_MODE:I = 0x0

.field public static final DRAK_MODE:I = 0x1


# instance fields
.field private mCircleInner:Landroid/graphics/drawable/Drawable;

.field private mCircleOuterPressed:Landroid/graphics/drawable/Drawable;

.field private mCircleOuterRest:Landroid/graphics/drawable/Drawable;

.field private mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

.field private mCommonCollapseRest:Landroid/graphics/drawable/Drawable;

.field private mCommonExpandOn:Landroid/graphics/drawable/Drawable;

.field private mCommonExpandRest:Landroid/graphics/drawable/Drawable;

.field private mDarkCircleInner:Landroid/graphics/drawable/Drawable;

.field private mDarkCircleOuterPressed:Landroid/graphics/drawable/Drawable;

.field private mDarkCircleOuterRest:Landroid/graphics/drawable/Drawable;

.field private mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

.field private mDarkCommonCollapseRest:Landroid/graphics/drawable/Drawable;

.field private mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

.field private mDarkCommonExpandRest:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field mIsExpanded:Z

.field mIsPressed:Z

.field mIsRestOn:Z

.field private mMode:I

.field private mMultiplyColor:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcIndicatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "backgroundMode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    .line 37
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterRest:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleInner:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandRest:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseRest:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterRest:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleInner:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandRest:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseRest:Landroid/graphics/drawable/Drawable;

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mWidth:I

    .line 57
    iput v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mHeight:I

    .line 192
    iput-boolean v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsPressed:Z

    .line 193
    iput-boolean v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    .line 194
    iput-boolean v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsRestOn:Z

    .line 72
    iput p2, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIndicatorButton;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterRest:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleInner:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandRest:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseRest:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterRest:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleInner:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandRest:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseRest:Landroid/graphics/drawable/Drawable;

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mWidth:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mHeight:I

    .line 192
    iput-boolean v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsPressed:Z

    .line 193
    iput-boolean v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    .line 194
    iput-boolean v2, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsRestOn:Z

    .line 79
    sget-object v1, Lcom/htc/R$styleable;->HtcIndicatorButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIndicatorButton;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private applyMultiplyColor()V
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 184
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 188
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private drawIndicatorInPressState(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 259
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawIndicatorInRestState(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleOuterRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCircleInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleOuterRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCircleInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIndicatorButton;->loadDrawables(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMultiplyColor:I

    .line 88
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 90
    return-void
.end method

.method private loadDrawables(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, resource:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v1, :cond_0

    .line 108
    const v1, 0x2080168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 110
    const v1, 0x2080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcIndicatorButton;->setupMeasurement(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    const v1, 0x208000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    .line 119
    const v1, 0x208000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcIndicatorButton;->setupMeasurement(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setDrawableBounds(II)V
    .locals 2
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 155
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setupMeasurement(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mWidth:I

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mHeight:I

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 235
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-nez v0, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonExpandOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mDarkCommonCollapseOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    return v0
.end method

.method isRestOn()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsRestOn:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 145
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->getWidth()I

    move-result v1

    .line 148
    .local v1, viewWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->getHeight()I

    move-result v0

    .line 151
    .local v0, viewHeight:I
    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcIndicatorButton;->setDrawableBounds(II)V

    .line 152
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mWidth:I

    iget v1, p0, Lcom/htc/widget/HtcIndicatorButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcIndicatorButton;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .parameter "expanded"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    if-ne p1, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsExpanded:Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->invalidate()V

    goto :goto_0
.end method

.method setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    if-ne v0, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcIndicatorButton;->mMode:I

    .line 99
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcIndicatorButton;->loadDrawables(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 201
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsPressed:Z

    if-ne v0, p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsPressed:Z

    .line 203
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->invalidate()V

    goto :goto_0
.end method

.method setRestOn(Z)V
    .locals 1
    .parameter "restOn"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsRestOn:Z

    if-ne p1, v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcIndicatorButton;->mIsRestOn:Z

    .line 220
    invoke-virtual {p0}, Lcom/htc/widget/HtcIndicatorButton;->invalidate()V

    goto :goto_0
.end method
