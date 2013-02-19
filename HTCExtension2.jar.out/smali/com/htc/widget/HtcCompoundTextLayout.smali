.class public Lcom/htc/widget/HtcCompoundTextLayout;
.super Lcom/htc/widget/HtcItemBackgroundLayout;
.source "HtcCompoundTextLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DISABLE_ALPHA:I = 0x66

.field private static final NORMAL_ALPHA:I = 0xff


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mDrawableCenterX:I

.field private mDrawableCenterY:I

.field private mIsSizeChanged:Z

.field private mMargin:I

.field private mOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffxOffset:I

.field private mOffyOffset:I

.field private mOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnxOffset:I

.field private mOnyOffset:I

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterxOffset:I

.field private mOuteryOffset:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mPressDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressxOffset:I

.field private mPressyOffset:I

.field private mRestDrawable:Landroid/graphics/drawable/Drawable;

.field private mRestxOffset:I

.field private mRestyOffset:I

.field private mText:Landroid/widget/TextView;

.field private mTextPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mTextPaddingRight:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mColor:I

    .line 36
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    .line 44
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    .line 45
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    .line 46
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    .line 47
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    .line 48
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    .line 49
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    .line 51
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcItemBackgroundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mTextPaddingRight:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mColor:I

    .line 36
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    .line 44
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    .line 45
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    .line 46
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    .line 47
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    .line 48
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    .line 49
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    .line 51
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcItemBackgroundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mTextPaddingRight:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mColor:I

    .line 36
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    .line 43
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    .line 44
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    .line 45
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    .line 46
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    .line 47
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    .line 48
    iput v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    .line 49
    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    .line 51
    iput-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    .line 66
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundTextLayout;->getMeasuredWidth()I

    move-result v0

    .line 141
    .local v0, width:I
    iget v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    .line 142
    invoke-virtual {p0}, Lcom/htc/widget/HtcCompoundTextLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    .line 143
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    .line 172
    .end local v0           #width:I
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 179
    iget-boolean v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 212
    invoke-super {p0}, Lcom/htc/widget/HtcItemBackgroundLayout;->onFinishInflate()V

    .line 213
    const v5, 0x1020014

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcCompoundTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 214
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 215
    check-cast v4, Landroid/widget/TextView;

    .end local v4           #v:Landroid/view/View;
    iput-object v4, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    .line 216
    iget-object v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 218
    .local v1, left:I
    iget-object v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 219
    .local v3, top:I
    iget v2, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mTextPaddingRight:I

    .line 220
    .local v2, right:I
    iget-object v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 221
    .local v0, bottom:I
    iget-object v5, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcItemBackgroundLayout;->onSizeChanged(IIII)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mIsSizeChanged:Z

    .line 191
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 201
    iput-boolean p1, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    .line 203
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x66

    .line 228
    invoke-super {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 237
    if-nez p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 247
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setUpResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "outer"
    .parameter "press"
    .parameter "rest"
    .parameter "off"
    .parameter "on"

    .prologue
    .line 70
    if-eqz p1, :cond_7

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 72
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v7, :cond_7

    .line 73
    const-string v9, "margin_m"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, marginId:I
    const-string v9, "multiply_color"

    const-string v10, "color"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, colorId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, p2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, outId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, p3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, pressId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 80
    .local v8, restId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p5

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, offId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 82
    .local v4, onId:I
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    const-string v9, "multiply_color"

    invoke-static {p1, v9, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 88
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mColor:I

    .line 89
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    iget v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mColor:I

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 92
    :cond_1
    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    .line 95
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    .line 96
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuteryOffset:I

    .line 99
    :cond_2
    if-eqz v6, :cond_3

    .line 100
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 102
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressxOffset:I

    .line 103
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressyOffset:I

    .line 104
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_3

    .line 105
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    :cond_3
    if-eqz v8, :cond_4

    .line 110
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 112
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestxOffset:I

    .line 113
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mRestyOffset:I

    .line 116
    :cond_4
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 119
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffxOffset:I

    .line 120
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOffyOffset:I

    .line 123
    :cond_5
    if-eqz v4, :cond_6

    .line 124
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    .line 126
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnxOffset:I

    .line 127
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnyOffset:I

    .line 128
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_6

    .line 129
    iget-object v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    :cond_6
    iget v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    iget v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mOuterxOffset:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mMargin:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mTextPaddingRight:I

    .line 135
    .end local v1           #colorId:I
    .end local v2           #marginId:I
    .end local v3           #offId:I
    .end local v4           #onId:I
    .end local v5           #outId:I
    .end local v6           #pressId:I
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v8           #restId:I
    :cond_7
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundTextLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcCompoundTextLayout;->setChecked(Z)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
