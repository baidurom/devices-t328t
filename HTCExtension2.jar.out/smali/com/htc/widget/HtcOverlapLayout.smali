.class public Lcom/htc/widget/HtcOverlapLayout;
.super Landroid/view/ViewGroup;
.source "HtcOverlapLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final mOverlapSize:I


# instance fields
.field private dHeight:I

.field private dWidth:I

.field private mActionBarHeight:I

.field private mFooterHeight:I

.field private mFooterVisible:Z

.field private mFooterWidth:I

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I

.field protected mForegroundInPadding:Z

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mHeaderHeight:I

.field private mHeaderVisible:Z

.field private mHeaderWidth:I

.field private mHorizontal:Z

.field private mIsActionBarVisible:Z

.field private mMeasureAllChildren:Z

.field private mOverlapHeight:I

.field private mOverlapWidth:I

.field private mShadowImage:Landroid/graphics/drawable/Drawable;

.field private mShadowImageHeight:I

.field private mShadowImageWidth:I

.field private mShadowXoffset:I

.field private mShadowYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0}, Lcom/htc/widget/HtcOverlapLayout;->getViewOrientation()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    .line 22
    iput-boolean v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mMeasureAllChildren:Z

    .line 26
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingLeft:I

    .line 28
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingTop:I

    .line 30
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingRight:I

    .line 32
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingBottom:I

    .line 47
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowXoffset:I

    .line 48
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowYoffset:I

    .line 50
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageWidth:I

    .line 51
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageHeight:I

    .line 53
    iput-boolean v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderVisible:Z

    .line 54
    iput-boolean v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 57
    iput-boolean v6, p0, Lcom/htc/widget/HtcOverlapLayout;->mIsActionBarVisible:Z

    .line 58
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->dWidth:I

    .line 59
    iput v5, p0, Lcom/htc/widget/HtcOverlapLayout;->dHeight:I

    .line 63
    iput-boolean v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundBoundsChanged:Z

    .line 64
    iput-boolean v6, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundInPadding:Z

    .line 69
    const/16 v3, 0x77

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundGravity:I

    .line 71
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    .line 85
    sget-object v3, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundGravity:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundGravity:I

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcOverlapLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcOverlapLayout;->setMeasureAllChildren(Z)V

    .line 102
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundInPadding:Z

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    .local v2, resource:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/htc/widget/HtcOverlapLayout;->getViewOrientation()V

    .line 111
    const v3, 0x2080038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    .line 112
    const v3, 0x20e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mActionBarHeight:I

    .line 115
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 116
    iget v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mActionBarHeight:I

    const v4, 0x205000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mActionBarHeight:I

    .line 121
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageWidth:I

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageHeight:I

    goto :goto_0
.end method

.method private drawshadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 431
    invoke-direct {p0}, Lcom/htc/widget/HtcOverlapLayout;->getViewOrientation()V

    .line 432
    iget-boolean v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    if-eqz v0, :cond_1

    .line 433
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowXoffset:I

    .line 434
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowYoffset:I

    .line 435
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageWidth:I

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->dWidth:I

    .line 436
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->dHeight:I

    .line 443
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->dWidth:I

    iget v2, p0, Lcom/htc/widget/HtcOverlapLayout;->dHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowXoffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowYoffset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 445
    iget-object v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 438
    :cond_1
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowXoffset:I

    .line 439
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowYoffset:I

    .line 440
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mShadowImageHeight:I

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->dHeight:I

    .line 441
    iget v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout;->dWidth:I

    goto :goto_1
.end method

.method private getViewOrientation()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 131
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 132
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 417
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    if-ne v0, v1, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcOverlapLayout;->drawshadow(Landroid/graphics/Canvas;)V

    .line 420
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 539
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->generateDefaultLayoutParams()Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 526
    new-instance v0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcOverlapLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 521
    new-instance v0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isActionBarVisible(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/htc/widget/HtcOverlapLayout;->mIsActionBarVisible:Z

    .line 454
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 533
    invoke-direct {p0}, Lcom/htc/widget/HtcOverlapLayout;->getViewOrientation()V

    .line 534
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcOverlapLayout;->getChildCount()I

    move-result v6

    .line 299
    .local v6, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mPaddingLeft:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingLeft:I

    move/from16 v19, v0

    add-int v13, v18, v19

    .line 300
    .local v13, parentLeft:I
    sub-int v18, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingRight:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 303
    .local v14, parentRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mPaddingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingTop:I

    move/from16 v19, v0

    add-int v15, v18, v19

    .line 304
    .local v15, parentTop:I
    sub-int v18, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingBottom:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 307
    .local v12, parentBottom:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcOverlapLayout;->mForegroundBoundsChanged:Z

    .line 309
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v6, :cond_5

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 311
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 312
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    .line 314
    .local v11, lp:Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 315
    .local v17, width:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 317
    .local v8, height:I
    move v4, v13

    .line 318
    .local v4, childLeft:I
    move v5, v15

    .line 320
    .local v5, childTop:I
    iget v7, v11, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 322
    .local v7, gravity:I
    instance-of v0, v3, Lcom/htc/widget/HtcFooter;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v3

    .line 323
    check-cast v18, Lcom/htc/widget/HtcFooter;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcFooter;->getDisplayMode()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 340
    sub-int v18, v14, v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .line 341
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 342
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 309
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v7           #gravity:I
    .end local v8           #height:I
    .end local v11           #lp:Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    .end local v17           #width:I
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 325
    .restart local v4       #childLeft:I
    .restart local v5       #childTop:I
    .restart local v7       #gravity:I
    .restart local v8       #height:I
    .restart local v11       #lp:Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    .restart local v17       #width:I
    :pswitch_0
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 326
    sub-int v18, v12, v8

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 327
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 332
    :pswitch_1
    sub-int v18, v14, v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .line 333
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 334
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 345
    :cond_1
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 346
    sub-int v18, v12, v8

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 347
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 356
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    .line 357
    and-int/lit8 v9, v7, 0x7

    .line 359
    .local v9, horizontalGravity:I
    and-int/lit8 v16, v7, 0x70

    .line 362
    .local v16, verticalGravity:I
    packed-switch v9, :pswitch_data_1

    .line 375
    :pswitch_2
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 378
    :goto_2
    sparse-switch v16, :sswitch_data_0

    .line 391
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 394
    .end local v9           #horizontalGravity:I
    .end local v16           #verticalGravity:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v19, v4, v17

    add-int/lit8 v19, v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    move/from16 v20, v0

    add-int v20, v20, v5

    add-int v20, v20, v8

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 364
    .restart local v9       #horizontalGravity:I
    .restart local v16       #verticalGravity:I
    :pswitch_3
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 365
    goto :goto_2

    .line 367
    :pswitch_4
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 370
    goto :goto_2

    .line 372
    :pswitch_5
    sub-int v18, v14, v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 373
    goto :goto_2

    .line 380
    :sswitch_0
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 381
    goto :goto_3

    .line 383
    :sswitch_1
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 386
    goto :goto_3

    .line 388
    :sswitch_2
    sub-int v18, v12, v8

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 389
    goto :goto_3

    .line 399
    .end local v9           #horizontalGravity:I
    .end local v16           #verticalGravity:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v19, v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    move/from16 v20, v0

    add-int v20, v20, v5

    add-int v20, v20, v8

    add-int/lit8 v20, v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 405
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v7           #gravity:I
    .end local v8           #height:I
    .end local v11           #lp:Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
    .end local v17           #width:I
    :cond_5
    return-void

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 362
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, ChildWMeasureSpec:I
    const/4 v0, 0x0

    .line 196
    .local v0, ChildHMeasureSpec:I
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    .line 197
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    .line 198
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    .line 199
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    .line 201
    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->getChildCount()I

    move-result v6

    .line 202
    .local v6, count:I
    const/4 v5, 0x0

    .line 203
    .local v5, contentWidth:I
    const/4 v4, 0x0

    .line 204
    .local v4, contentHeight:I
    const/4 v2, 0x0

    .line 206
    .local v2, IsFooterExist:Z
    invoke-direct {p0}, Lcom/htc/widget/HtcOverlapLayout;->getViewOrientation()V

    .line 208
    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mIsActionBarVisible:Z

    if-ne v8, v9, :cond_0

    .line 209
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mActionBarHeight:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    .line 211
    :cond_0
    iget-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHorizontal:Z

    if-eqz v8, :cond_4

    .line 212
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_8

    .line 213
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 214
    .local v3, child:Landroid/view/View;
    instance-of v8, v3, Lcom/htc/widget/HtcFooter;

    if-eqz v8, :cond_1

    .line 215
    const/4 v2, 0x1

    .line 216
    const/16 v8, 0x8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 217
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 218
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    .line 220
    check-cast v3, Lcom/htc/widget/HtcFooter;

    .end local v3           #child:Landroid/view/View;
    invoke-virtual {v3}, Lcom/htc/widget/HtcFooter;->getDisplayMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 221
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    sub-int v4, v8, v9

    .line 223
    iget v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 224
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    .line 230
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 212
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 226
    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int v4, v8, v9

    .line 227
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    sub-int v5, v8, v9

    .line 228
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    goto :goto_1

    .line 232
    .restart local v3       #child:Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 233
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int v4, v8, v9

    .line 234
    iget v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 235
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    goto :goto_2

    .line 240
    .end local v3           #child:Landroid/view/View;
    .end local v7           #i:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v6, :cond_8

    .line 241
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 242
    .restart local v3       #child:Landroid/view/View;
    instance-of v8, v3, Lcom/htc/widget/HtcFooter;

    if-eqz v8, :cond_5

    .line 243
    const/4 v2, 0x1

    .line 244
    const/16 v8, 0x8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_7

    .line 245
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    .line 248
    check-cast v3, Lcom/htc/widget/HtcFooter;

    .end local v3           #child:Landroid/view/View;
    invoke-virtual {v3}, Lcom/htc/widget/HtcFooter;->getDisplayMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 249
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int v4, v8, v9

    .line 250
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    sub-int v5, v8, v9

    .line 251
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterWidth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    .line 258
    :goto_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 240
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 253
    :cond_6
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterHeight:I

    sub-int v4, v8, v9

    .line 255
    iget v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 256
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    goto :goto_4

    .line 260
    .restart local v3       #child:Landroid/view/View;
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 261
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int v4, v8, v9

    .line 262
    iget v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 263
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    goto :goto_5

    .line 268
    .end local v3           #child:Landroid/view/View;
    :cond_8
    if-nez v2, :cond_9

    .line 269
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mFooterVisible:Z

    .line 270
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapHeight:I

    iget v9, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderHeight:I

    sub-int v4, v8, v9

    .line 271
    iget v5, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    .line 272
    iget v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mOverlapWidth:I

    iput v8, p0, Lcom/htc/widget/HtcOverlapLayout;->mHeaderWidth:I

    .line 274
    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_c

    .line 275
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 276
    .restart local v3       #child:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_a

    .line 277
    instance-of v8, v3, Lcom/htc/widget/HtcFooter;

    if-eqz v8, :cond_b

    .line 274
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 280
    :cond_b
    const/high16 v8, 0x4000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 282
    const/high16 v8, 0x4000

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 284
    invoke-virtual {p0, v3, v1, v0}, Lcom/htc/widget/HtcOverlapLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_7

    .line 290
    .end local v3           #child:Landroid/view/View;
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcOverlapLayout;->setMeasuredDimension(II)V

    .line 292
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 543
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 544
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 142
    iget-object v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcOverlapLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 146
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingLeft:I

    .line 147
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingTop:I

    .line 148
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingRight:I

    .line 149
    iput v3, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingBottom:I

    .line 151
    if-eqz p1, :cond_4

    .line 152
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcOverlapLayout;->setWillNotDraw(Z)V

    .line 153
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 157
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingLeft:I

    .line 161
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingTop:I

    .line 162
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingRight:I

    .line 163
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcOverlapLayout;->mForegroundPaddingBottom:I

    .line 169
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Lcom/htc/widget/HtcOverlapLayout;->invalidate()V

    .line 172
    :cond_3
    return-void

    .line 167
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcOverlapLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .parameter "measureAll"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/widget/HtcOverlapLayout;->mMeasureAllChildren:Z

    .line 176
    return-void
.end method
