.class public Lcom/htc/widget/HtcFooter;
.super Landroid/view/ViewGroup;
.source "HtcFooter.java"


# static fields
.field private static final DEF_CHILD_WEIGHT:F = 1.0f

.field public static final DISPLAY_MODE_ALWAYSBOTTOM:I = 0x2

.field public static final DISPLAY_MODE_ALWAYSRIGHT:I = 0x1

.field public static final DISPLAY_MODE_DEFAULT:I


# instance fields
.field private final TRANSPARENT_RATIO:I

.field private dividerM2:I

.field private footerArea:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDefHeight:I

.field private mDefWidth:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMode:I

.field private mHorizontal:Z

.field private mLocation:[I

.field private mOneChildHeight:I

.field private mOneChildHeightOfLand:I

.field private mOneChildHeightOfPort:I

.field private mOneChildWidth:I

.field private mOneChildWidthOfLand:I

.field private mOneChildWidthOfPort:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorHeight:I

.field private mSeperatorWidth:I

.field private mShrinkTouchAreaEnabled:Z

.field private mShrinkTouchAreaOffsetLeft:I

.field private mShrinkTouchAreaOffsetRight:I

.field private mTransparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x2030103

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const v2, 0x43658000

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->TRANSPARENT_RATIO:I

    .line 81
    iput v3, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    .line 99
    iput-boolean v4, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    .line 106
    iput-boolean v3, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 109
    iput v3, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    .line 114
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/htc/widget/HtcFooter;->mLocation:[I

    .line 1221
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 182
    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    .line 184
    sget-object v2, Lcom/htc/R$styleable;->HtcFooter:[I

    invoke-virtual {p1, p2, v2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    .line 190
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    .line 193
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeightOfPort:I

    .line 197
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeightOfLand:I

    .line 201
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 207
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 209
    .local v1, nDisplayMode:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    .line 216
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    .line 222
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 225
    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaOffsetLeft:I

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaOffsetRight:I

    .line 239
    return-void
.end method

.method private getChildWeight(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    const/high16 v2, 0x3f80

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 332
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    :goto_0
    float-to-int v2, v2

    .line 340
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return v2

    .line 334
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    const/4 v2, 0x1

    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getChildWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    const/4 v2, 0x1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 350
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 358
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return v2

    .line 352
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getChildrenTotalWeight()I
    .locals 5

    .prologue
    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, nTotalWeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 369
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 370
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    .line 371
    .local v0, fChildWeight:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    float-to-int v4, v0

    goto :goto_1

    .line 373
    .end local v0           #fChildWeight:F
    :cond_1
    return v3
.end method

.method private getChildrenTotalWidth()I
    .locals 5

    .prologue
    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, nTotalWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 383
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 384
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWidth(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    .line 385
    .local v0, fChildWidth:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    float-to-int v4, v0

    goto :goto_1

    .line 387
    .end local v0           #fChildWidth:F
    :cond_1
    return v3
.end method

.method private getSeparatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getViewOrientation()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 302
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    goto :goto_0
.end method

.method private getVisibleChildCount()I
    .locals 6

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, nVisibleCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 317
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 318
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 320
    add-int/lit8 v3, v3, 0x1

    .line 317
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method private initFooter()V
    .locals 8

    .prologue
    const v7, 0x2080041

    const v6, 0x2080036

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getViewOrientation()V

    .line 246
    iget v3, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v3, :pswitch_data_0

    .line 262
    iget-boolean v3, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v3, :cond_1

    .line 265
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 266
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->isShrinkTouchAreaEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 280
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 281
    .local v2, wInch:I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 283
    .local v0, hInch:I
    const/16 v3, 0x140

    if-gt v2, v3, :cond_0

    const/16 v3, 0x1e0

    if-gt v0, v3, :cond_0

    .line 284
    const-string v3, "HtcFooter"

    const-string v4, "force disable footerbar shrink"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    .line 289
    .end local v0           #hInch:I
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #wInch:I
    :cond_0
    iget-boolean v3, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 290
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->setFooterButton()V

    .line 291
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 251
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 258
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 271
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isShrinkTouchAreaEnabled()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaEnabled:Z

    return v0
.end method

.method private setFooterButton()V
    .locals 5

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v1

    .line 698
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 699
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 701
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .end local v0           #child:Landroid/view/View;
    iget v3, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->FooterDisplayMode(I)V

    .line 698
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_1
    return-void
.end method

.method private setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "seperator"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1049
    if-nez p1, :cond_1

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    .line 1094
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1053
    .restart local p1
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 1054
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 1064
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v0, :cond_2

    .line 1065
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1056
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1060
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1067
    .restart local p1
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1072
    .restart local p1
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 1073
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_1

    .line 1083
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v0, :cond_4

    .line 1084
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1075
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1079
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1086
    .restart local p1
    :cond_4
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1073
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setSeparatorResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 1101
    if-eqz p1, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1103
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setShrinkTouchAreaEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaEnabled:Z

    .line 722
    return-void
.end method


# virtual methods
.method public GetAlwaysBottom()Z
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x1

    return v0
.end method

.method public GetAlwaysRight()Z
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public SetAlwaysBottom(Z)V
    .locals 1
    .parameter "bottom"

    .prologue
    .line 1160
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 1161
    return-void
.end method

.method public SetAlwaysRight(Z)V
    .locals 1
    .parameter "right"

    .prologue
    .line 1169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 1170
    return-void
.end method

.method public SetDisplayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1199
    packed-switch p1, :pswitch_data_0

    .line 1206
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    .line 1210
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->initFooter()V

    .line 1211
    return-void

    .line 1202
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->isShrinkTouchAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mLocation:[I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 712
    .local v0, x:I
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mLocation:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaOffsetLeft:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mLocation:[I

    aget v1, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcFooter;->mShrinkTouchAreaOffsetRight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 714
    :cond_0
    const/4 v1, 0x1

    .line 717
    .end local v0           #x:I
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 956
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 957
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1035
    return-void
.end method

.method public enableTransparentBckground(Z)V
    .locals 10
    .parameter "bTransparent"

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    iput-boolean p1, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 964
    iget-object v9, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 966
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v2

    .line 967
    .local v2, leftPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v6

    .line 968
    .local v6, rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v8

    .line 969
    .local v8, topPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v1

    .line 971
    .local v1, bottomPadding:I
    const-string v7, "common_app_bkg_down_src"

    .line 972
    .local v7, sResName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 973
    .local v3, nDefResID:I
    iget v9, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v9, :pswitch_data_0

    .line 985
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v9, :cond_1

    .line 986
    const v3, 0x2080148

    .line 987
    const-string v7, "common_app_bkg_down_land_src"

    .line 996
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 997
    .local v4, nResID:I
    if-eqz v4, :cond_0

    .line 998
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 999
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/htc/widget/HtcFooter;->TRANSPARENT_RATIO:I

    :goto_1
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1000
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    :cond_0
    invoke-virtual {p0, v2, v8, v6, v1}, Lcom/htc/widget/HtcFooter;->setPadding(IIII)V

    .line 1007
    return-void

    .line 975
    .end local v4           #nResID:I
    :pswitch_0
    const v3, 0x2080039

    .line 976
    const-string v7, "common_app_bkg_down_src"

    .line 978
    goto :goto_0

    .line 980
    :pswitch_1
    const v3, 0x2080148

    .line 981
    const-string v7, "common_app_bkg_down_land_src"

    .line 983
    goto :goto_0

    .line 989
    :cond_1
    const v3, 0x2080039

    .line 990
    const-string v7, "common_app_bkg_down_src"

    goto :goto_0

    .line 999
    .restart local v4       #nResID:I
    :cond_2
    const/16 v9, 0xff

    goto :goto_1

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 781
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 826
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 829
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .parameter "attrs"

    .prologue
    const/4 v5, -0x2

    .line 796
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 801
    .local v4, vglp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 805
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 808
    .local v2, fWeight:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 810
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 811
    return-object v3

    .line 797
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #fWeight:F
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v1

    .line 798
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v4       #vglp:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    return v0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v1

    if-gez v1, :cond_1

    .line 1227
    :cond_0
    const/4 v1, 0x0

    .line 1242
    :goto_0
    return-object v1

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 1230
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 1232
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1235
    .local v0, screenLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 1237
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1238
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1239
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1240
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1242
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getOneChildHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    return v0
.end method

.method public getOneChildWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    return v0
.end method

.method public getSeperatorHeight()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    return v0
.end method

.method public getSeperatorWidth()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1120
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const-wide/high16 v11, 0x3fe0

    .line 840
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 844
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 845
    .local v8, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 846
    .local v0, LastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    .line 847
    .local v4, nChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v7

    .line 848
    .local v7, nVisibleChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getSeparatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 849
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v11

    double-to-int v5, v9

    .line 850
    .local v5, nHalfOfSperatorWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 852
    .local v6, nHalfofSperatorHeihgt:I
    const/4 v9, 0x1

    if-ne v9, v7, :cond_1

    if-eqz v2, :cond_1

    .line 929
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 930
    return-void

    .line 887
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 888
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 889
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 890
    if-eqz v0, :cond_2

    .line 891
    if-eqz v2, :cond_2

    .line 892
    iget v9, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v9, :pswitch_data_0

    .line 907
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v9, :cond_4

    .line 908
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 921
    :goto_1
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 922
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 925
    :cond_2
    move-object v0, v1

    .line 887
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 894
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 900
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 913
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v8

    .line 403
    .local v8, nChildren:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v13

    .line 405
    .local v13, nVisibleCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v18

    .line 406
    .local v18, parentLeft:I
    sub-int v21, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v22

    sub-int v19, v21, v22

    .line 408
    .local v19, parentRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v20

    .line 409
    .local v20, parentTop:I
    sub-int v21, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v22

    sub-int v17, v21, v22

    .line 412
    .local v17, parentBottom:I
    packed-switch v13, :pswitch_data_0

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v15

    .line 426
    .local v15, npl:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v16

    .line 428
    .local v16, npt:I
    move v10, v15

    .line 429
    .local v10, nLastLeft:I
    move/from16 v11, v16

    .line 430
    .local v11, nLastTop:I
    const/4 v12, 0x0

    .line 431
    .local v12, nViewCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v6

    .line 432
    .local v6, childTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v5

    .line 433
    .local v5, childLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 434
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 435
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 455
    move v6, v11

    .line 456
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 459
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v11, v11, v21

    .line 470
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 433
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 414
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v7           #i:I
    .end local v10           #nLastLeft:I
    .end local v11           #nLastTop:I
    .end local v12           #nViewCount:I
    .end local v15           #npl:I
    .end local v16           #npt:I
    :pswitch_0
    move/from16 v14, v19

    .line 415
    .local v14, nWidth:I
    move/from16 v9, v17

    .line 416
    .local v9, nHeight:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 417
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 418
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 419
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 416
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 438
    .end local v9           #nHeight:I
    .end local v14           #nWidth:I
    .restart local v5       #childLeft:I
    .restart local v6       #childTop:I
    .restart local v10       #nLastLeft:I
    .restart local v11       #nLastTop:I
    .restart local v12       #nViewCount:I
    .restart local v15       #npl:I
    .restart local v16       #npt:I
    :pswitch_1
    move v5, v10

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 442
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v10, v21

    .line 444
    goto :goto_1

    .line 446
    :pswitch_2
    move v6, v11

    .line 447
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 450
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v11, v11, v21

    .line 452
    goto :goto_1

    .line 461
    :cond_2
    move v5, v10

    .line 462
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 465
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v10, v21

    goto :goto_1

    .line 475
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v10           #nLastLeft:I
    .end local v11           #nLastTop:I
    .end local v12           #nViewCount:I
    .end local v15           #npl:I
    .end local v16           #npt:I
    :cond_3
    return-void

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 436
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 32
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v25

    .line 490
    .local v25, npl:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v26

    .line 491
    .local v26, npr:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v27

    .line 492
    .local v27, npt:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v24

    .line 493
    .local v24, npb:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 494
    .local v23, nWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 496
    .local v12, nHeight:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getViewOrientation()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 499
    .local v28, vglp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 526
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 527
    .local v4, height:I
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_0

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 530
    :cond_0
    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 534
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v23

    .line 535
    move v12, v4

    .line 555
    .end local v4           #height:I
    :goto_0
    sub-int v30, v12, v27

    sub-int v11, v30, v24

    .line 556
    .local v11, nContentHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v10

    .line 557
    .local v10, nChildren:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v22

    .line 559
    .local v22, nVisibleCount:I
    sub-int v30, v23, v25

    sub-int v17, v30, v26

    .line 561
    .local v17, nTotalChildrenWidth:I
    const/4 v7, 0x0

    .line 562
    .local v7, nChildWMeasureSpec:I
    const/4 v6, 0x0

    .line 566
    .local v6, nChildHMeasureSpec:I
    packed-switch v22, :pswitch_data_1

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildrenTotalWeight()I

    move-result v18

    .line 583
    .local v18, nTotalWeight:I
    if-lez v18, :cond_d

    div-int v20, v17, v18

    .line 585
    .local v20, nUnitWidth:I
    :goto_1
    if-lez v18, :cond_e

    div-int v19, v11, v18

    .line 587
    .local v19, nUnitHeight:I
    :goto_2
    if-lez v18, :cond_f

    rem-int v14, v17, v18

    .line 589
    .local v14, nRemainderWidth:I
    :goto_3
    if-lez v18, :cond_10

    rem-int v13, v11, v18

    .line 592
    .local v13, nRemainderHeight:I
    :goto_4
    move/from16 v16, v14

    .line 593
    .local v16, nRestWidth:I
    move v15, v13

    .line 595
    .local v15, nRestHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    if-ge v5, v10, :cond_15

    .line 596
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 597
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v21

    .line 599
    .local v21, nVisChildWeight:I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_2

    .line 637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 638
    mul-int v8, v21, v19

    .line 640
    .local v8, nChildWeight:I
    if-lez v15, :cond_2

    if-lez v21, :cond_2

    .line 641
    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v8, v8, v30

    .line 645
    :cond_2
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 647
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 650
    if-lez v15, :cond_3

    if-lez v21, :cond_3

    .line 651
    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v15, v15, v30

    .line 672
    .end local v8           #nChildWeight:I
    :cond_3
    :goto_6
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 595
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 501
    .end local v3           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #nChildHMeasureSpec:I
    .end local v7           #nChildWMeasureSpec:I
    .end local v10           #nChildren:I
    .end local v11           #nContentHeight:I
    .end local v13           #nRemainderHeight:I
    .end local v14           #nRemainderWidth:I
    .end local v15           #nRestHeight:I
    .end local v16           #nRestWidth:I
    .end local v17           #nTotalChildrenWidth:I
    .end local v18           #nTotalWeight:I
    .end local v19           #nUnitHeight:I
    .end local v20           #nUnitWidth:I
    .end local v21           #nVisChildWeight:I
    .end local v22           #nVisibleCount:I
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 502
    .local v29, width:I
    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    if-lez v30, :cond_5

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 504
    :cond_5
    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 508
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v12

    .line 509
    move/from16 v23, v29

    .line 511
    goto/16 :goto_0

    .line 513
    .end local v29           #width:I
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 514
    .restart local v4       #height:I
    if-eqz v28, :cond_7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_7

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 516
    :cond_7
    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 520
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v23

    .line 521
    move v12, v4

    .line 523
    goto/16 :goto_0

    .line 538
    .end local v4           #height:I
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 539
    .restart local v29       #width:I
    if-eqz v28, :cond_a

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    if-lez v30, :cond_a

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 542
    :cond_a
    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 546
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v12

    .line 547
    move/from16 v23, v29

    goto/16 :goto_0

    .line 568
    .end local v29           #width:I
    .restart local v6       #nChildHMeasureSpec:I
    .restart local v7       #nChildWMeasureSpec:I
    .restart local v10       #nChildren:I
    .restart local v11       #nContentHeight:I
    .restart local v17       #nTotalChildrenWidth:I
    .restart local v22       #nVisibleCount:I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    if-ge v5, v10, :cond_15

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 570
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 571
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 573
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 575
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 568
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .end local v3           #child:Landroid/view/View;
    .end local v5           #i:I
    .restart local v18       #nTotalWeight:I
    :cond_d
    move/from16 v20, v17

    .line 583
    goto/16 :goto_1

    .restart local v20       #nUnitWidth:I
    :cond_e
    move/from16 v19, v11

    .line 585
    goto/16 :goto_2

    .line 587
    .restart local v19       #nUnitHeight:I
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 589
    .restart local v14       #nRemainderWidth:I
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 602
    .restart local v3       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v13       #nRemainderHeight:I
    .restart local v15       #nRestHeight:I
    .restart local v16       #nRestWidth:I
    .restart local v21       #nVisChildWeight:I
    :pswitch_3
    mul-int v9, v21, v20

    .line 604
    .local v9, nChildWidth:I
    if-lez v16, :cond_11

    if-lez v21, :cond_11

    .line 605
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v9, v9, v30

    .line 608
    :cond_11
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 610
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 612
    if-lez v16, :cond_3

    if-lez v21, :cond_3

    .line 613
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v16, v16, v30

    goto/16 :goto_6

    .line 618
    .end local v9           #nChildWidth:I
    :pswitch_4
    mul-int v8, v21, v19

    .line 620
    .restart local v8       #nChildWeight:I
    if-lez v15, :cond_12

    if-lez v21, :cond_12

    .line 621
    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v8, v8, v30

    .line 625
    :cond_12
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 627
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 630
    if-lez v15, :cond_3

    if-lez v21, :cond_3

    .line 631
    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v15, v15, v30

    goto/16 :goto_6

    .line 655
    .end local v8           #nChildWeight:I
    :cond_13
    mul-int v9, v21, v20

    .line 657
    .restart local v9       #nChildWidth:I
    if-lez v16, :cond_14

    if-lez v21, :cond_14

    .line 658
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v9, v9, v30

    .line 661
    :cond_14
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 663
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 665
    if-lez v16, :cond_3

    if-lez v21, :cond_3

    .line 666
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v16, v16, v30

    goto/16 :goto_6

    .line 684
    .end local v3           #child:Landroid/view/View;
    .end local v9           #nChildWidth:I
    .end local v13           #nRemainderHeight:I
    .end local v14           #nRemainderWidth:I
    .end local v15           #nRestHeight:I
    .end local v16           #nRestWidth:I
    .end local v18           #nTotalWeight:I
    .end local v19           #nUnitHeight:I
    .end local v20           #nUnitWidth:I
    .end local v21           #nVisChildWeight:I
    :cond_15
    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v30

    move/from16 v0, p2

    invoke-static {v12, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcFooter;->setMeasuredDimension(II)V

    .line 690
    return-void

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 566
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 600
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1130
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->initFooter()V

    .line 1135
    return-void
.end method

.method public setOneChildHeight(I)V
    .locals 1
    .parameter "nOneChildHeight"

    .prologue
    .line 151
    if-gez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    goto :goto_0
.end method

.method public setOneChildWidth(I)V
    .locals 1
    .parameter "nOneChildWidth"

    .prologue
    .line 138
    if-gez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    goto :goto_0
.end method

.method public setSeperatorHeight(I)V
    .locals 1
    .parameter "nSeperatorHeight"

    .prologue
    .line 761
    if-gez p1, :cond_0

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    goto :goto_0
.end method

.method public setSeperatorWidth(I)V
    .locals 1
    .parameter "nSeperatorWidth"

    .prologue
    .line 749
    if-gez p1, :cond_0

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    goto :goto_0
.end method

.method public setTranparentBckground(Z)V
    .locals 0
    .parameter "bTransparent"

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 1011
    return-void
.end method
