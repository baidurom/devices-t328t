.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private actionBarArea:Landroid/graphics/Rect;

.field private backgroundShadow:Landroid/graphics/drawable/Drawable;

.field private defaultDisplay:Landroid/view/Display;

.field private enableHTCActionBar:Z

.field private enableLandscape:Z

.field private isPortrait:Z

.field private mActionBarView:Lcom/android/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private marginOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    .line 281
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    .line 283
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    .line 308
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    .line 311
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    .line 406
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    const v4, 0x10202eb

    if-ne v3, v4, :cond_0

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 76
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 83
    return-void

    :cond_2
    move v1, v2

    .line 81
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    .line 330
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    if-gez v1, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 337
    .local v0, orientation:I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    .line 344
    return-void

    .line 337
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 394
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v1

    .line 397
    .local v1, contentWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 398
    .local v0, contentHeight:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 401
    .local v2, shadowWidth:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    sub-int v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 404
    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #shadowWidth:I
    :cond_0
    return-void
.end method

.method public enableHTCActionBar()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 290
    return-void
.end method

.method public enableHTCLandscape(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    if-eq p1, v0, :cond_0

    .line 297
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    .line 298
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContainer;->updateContainerLayout()V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->backgroundShadow:Landroid/graphics/drawable/Drawable;

    .line 305
    :cond_0
    return-void
.end method

.method public getActionBarArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 416
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    .line 418
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 421
    .local v0, screenLocation:[I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->getLocationOnScreen([I)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 426
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 427
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 429
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->actionBarArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->enableHTCActionBar:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 88
    const v0, 0x10202e9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 89
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 226
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 228
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    const/4 v4, 0x1

    .line 230
    .local v4, hasTabs:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 232
    .local v2, containerHeight:I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 234
    .local v7, tabHeight:I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .line 237
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 238
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_2

    .line 237
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    .end local v1           #child:Landroid/view/View;
    .end local v2           #containerHeight:I
    .end local v3           #count:I
    .end local v4           #hasTabs:Z
    .end local v5           #i:I
    .end local v7           #tabHeight:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 242
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #containerHeight:I
    .restart local v3       #count:I
    .restart local v4       #hasTabs:Z
    .restart local v5       #i:I
    .restart local v7       #tabHeight:I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 243
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 246
    .end local v1           #child:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 252
    .end local v2           #containerHeight:I
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v7           #tabHeight:I
    :cond_4
    :goto_3
    const/4 v6, 0x0

    .line 253
    .local v6, needsInvalidate:Z
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_8

    .line 254
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 255
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    const/4 v6, 0x1

    .line 271
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 274
    :cond_6
    return-void

    .line 248
    .end local v6           #needsInvalidate:Z
    .restart local v2       #containerHeight:I
    .restart local v7       #tabHeight:I
    :cond_7
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 259
    .end local v2           #containerHeight:I
    .end local v7           #tabHeight:I
    .restart local v6       #needsInvalidate:Z
    :cond_8
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 260
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/android/internal/widget/ActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v11}, Lcom/android/internal/widget/ActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v12}, Lcom/android/internal/widget/ActionBarView;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    const/4 v6, 0x1

    .line 264
    :cond_9
    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_5

    .line 265
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    const/4 v6, 0x1

    goto :goto_4

    .line 264
    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 192
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->enableLandscape:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContainer;->updateContainerLayout()V

    .line 196
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->isPortrait:Z

    if-nez v6, :cond_0

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 199
    .local v3, measuremode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 200
    .local v4, measuresize:I
    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    sub-int v6, v4, v6

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 205
    .end local v3           #measuremode:I
    .end local v4           #measuresize:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 207
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v6, :cond_2

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    .line 213
    .local v0, actionBarViewHeight:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 214
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 215
    .local v5, mode:I
    const/high16 v6, -0x8000

    if-ne v5, v6, :cond_1

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 217
    .local v2, maxHeight:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 210
    .end local v0           #actionBarViewHeight:I
    .end local v2           #maxHeight:I
    .end local v5           #mode:I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v6

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public setContainerMarginRatio(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 354
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    if-gez v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 359
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->marginOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 94
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 104
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 99
    return-void
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .parameter "tabView"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 146
    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 153
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .parameter "isTransitioning"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 116
    if-eqz p1, :cond_0

    const/high16 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/high16 v0, 0x4

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "child"
    .parameter "callback"

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method
