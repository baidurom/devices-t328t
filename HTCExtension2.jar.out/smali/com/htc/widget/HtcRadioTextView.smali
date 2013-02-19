.class public Lcom/htc/widget/HtcRadioTextView;
.super Landroid/widget/TextView;
.source "HtcRadioTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


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

.field private mTextPaddingLeft:I

.field private mTextPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    .line 27
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingLeft:I

    .line 28
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingRight:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mColor:I

    .line 30
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    .line 36
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    .line 27
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingLeft:I

    .line 28
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingRight:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mColor:I

    .line 30
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    .line 36
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextView;->init(Landroid/content/Context;)V

    .line 54
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

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    .line 27
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingLeft:I

    .line 28
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingRight:I

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mColor:I

    .line 30
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    .line 31
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    .line 33
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    .line 36
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    .line 37
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    .line 38
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    .line 39
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    .line 40
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 62
    const-string v2, "common_circle_outer"

    const-string v3, "common_circle_pressed"

    const-string v4, "common_circle_rest"

    const-string v5, "common_radiobutton_rest"

    const-string v6, "common_radiobutton_on"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcRadioTextView;->setUpResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private setUpResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "outer"
    .parameter "press"
    .parameter "rest"
    .parameter "off"
    .parameter "on"

    .prologue
    .line 69
    if-eqz p1, :cond_7

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 71
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v7, :cond_7

    .line 72
    const-string v9, "margin_m"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, marginId:I
    const-string v9, "multiply_color"

    const-string v10, "color"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, colorId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, p2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 77
    .local v5, outId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, pressId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, restId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p5

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, offId:I
    const-string v9, "drawable"

    const-string v10, "com.htc"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 81
    .local v4, onId:I
    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    .line 84
    :cond_0
    if-eqz v1, :cond_1

    .line 85
    const-string v9, "multiply_color"

    invoke-static {p1, v9, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 87
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mColor:I

    .line 88
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    iget v10, p0, Lcom/htc/widget/HtcRadioTextView;->mColor:I

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 91
    :cond_1
    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    .line 94
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    .line 95
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    .line 98
    :cond_2
    if-eqz v6, :cond_3

    .line 99
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 101
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    .line 102
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    .line 103
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_3

    .line 104
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/htc/widget/HtcRadioTextView;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    :cond_3
    if-eqz v8, :cond_4

    .line 109
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 111
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    .line 112
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    .line 115
    :cond_4
    if-eqz v3, :cond_5

    .line 116
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 118
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    .line 119
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    .line 122
    :cond_5
    if-eqz v4, :cond_6

    .line 123
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    .line 125
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    .line 126
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    .line 127
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_6

    .line 128
    iget-object v9, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/htc/widget/HtcRadioTextView;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    :cond_6
    const v9, 0x2050057

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingLeft:I

    .line 134
    iget v9, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    mul-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingRight:I

    .line 136
    iget v9, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingLeft:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcRadioTextView;->mTextPaddingRight:I

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/htc/widget/HtcRadioTextView;->setPadding(IIII)V

    .line 139
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


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    iget-boolean v1, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/htc/widget/HtcRadioTextView;->getMeasuredWidth()I

    move-result v0

    .line 146
    .local v0, width:I
    iget v1, p0, Lcom/htc/widget/HtcRadioTextView;->mMargin:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    .line 147
    invoke-virtual {p0}, Lcom/htc/widget/HtcRadioTextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    .line 148
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcRadioTextView;->mOuteryOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mPressxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcRadioTextView;->mPressyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mRestxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcRadioTextView;->mRestyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mOffxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcRadioTextView;->mOffyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mOnxOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcRadioTextView;->mDrawableCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcRadioTextView;->mOnyOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    .line 173
    .end local v0           #width:I
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    iget-boolean v1, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    :cond_2
    :goto_0
    return-void

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcRadioTextView;->mOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mIsSizeChanged:Z

    .line 190
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 200
    iput-boolean p1, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    .line 202
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/htc/widget/HtcRadioTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcRadioTextView;->setChecked(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
