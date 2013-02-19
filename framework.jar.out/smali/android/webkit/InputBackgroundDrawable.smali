.class public Landroid/webkit/InputBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "InputBackgroundDrawable.java"


# static fields
.field private static final DONW_DURATION:I = 0x12c

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final MODE_DARK:I = 0x0

.field public static final MODE_LIGHT:I = 0x1


# instance fields
.field private mColor:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaddingLeftRight:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    .local v0, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    .line 38
    const-string v1, "common_b_inputfield_outer"

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    const-string v1, "common_b_inputfield_pressed"

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    const-string v1, "common_b_inputfield_rest"

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    :goto_0
    const-string/jumbo v1, "margin_m"

    const-string v2, "dimen"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    .line 48
    const-string/jumbo v1, "multiply_color"

    const-string/jumbo v2, "multiply_color"

    const-string v3, "color"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/InputBackgroundDrawable;->mColor:I

    .line 50
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Landroid/webkit/InputBackgroundDrawable;->mColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 51
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 52
    iget-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    return-void

    .line 42
    :cond_0
    const-string v1, "common_inputfield_outer"

    invoke-static {p1, v1}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    const-string v1, "common_inputfield_pressed"

    invoke-static {p1, v1}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    const-string v1, "common_inputfield_rest"

    invoke-static {p1, v1}, Landroid/webkit/InputBackgroundDrawable;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 51
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.htc"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, defRes:I
    if-nez v0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "couldn\'t get com.htc resource id."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    iget-boolean v0, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/InputBackgroundDrawable;->mIsFocused:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/webkit/InputBackgroundDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 70
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    :goto_0
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 126
    iget v0, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 127
    iget v0, p0, Landroid/webkit/InputBackgroundDrawable;->mPaddingLeftRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5
    .parameter "state"

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, isPressed:Z
    const/4 v1, 0x0

    .line 89
    .local v1, isFocused:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 90
    aget v3, p1, v0

    const v4, 0x101009c

    if-ne v3, v4, :cond_1

    .line 91
    const/4 v1, 0x1

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 93
    const/4 v2, 0x1

    goto :goto_1

    .line 96
    :cond_2
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-nez v3, :cond_4

    .line 97
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 101
    :cond_3
    :goto_2
    iput-boolean v2, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    .line 102
    iput-boolean v1, p0, Landroid/webkit/InputBackgroundDrawable;->mIsFocused:Z

    .line 103
    invoke-virtual {p0}, Landroid/webkit/InputBackgroundDrawable;->invalidateSelf()V

    .line 104
    const/4 v3, 0x1

    return v3

    .line 98
    :cond_4
    iget-boolean v3, p0, Landroid/webkit/InputBackgroundDrawable;->mIsPressed:Z

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, p0, Landroid/webkit/InputBackgroundDrawable;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/webkit/InputBackgroundDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 137
    invoke-virtual {p0}, Landroid/webkit/InputBackgroundDrawable;->invalidateSelf()V

    .line 138
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 142
    return-void
.end method
