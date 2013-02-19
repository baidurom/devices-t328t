.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private childDivider:Landroid/graphics/drawable/Drawable;

.field private enableHTCActionBar:Z

.field private internalHeight:I

.field private internalPadding:I

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 683
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    .line 704
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 705
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 744
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 431
    .local v0, a:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 433
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 435
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 13

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, -0x2

    .line 200
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_7

    .line 204
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    if-gez v5, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x10e0040

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 208
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 209
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    invoke-virtual {v5, v9, v7, v10, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 211
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 212
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const/high16 v0, -0x8000

    .line 217
    .local v0, fontStyle:I
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 218
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v9, "title_primary_m"

    const-string/jumbo v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 223
    if-eqz v0, :cond_5

    .line 225
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 226
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 231
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 235
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v9, "title_secondary_m"

    const-string/jumbo v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    if-eqz v0, :cond_6

    .line 242
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 243
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 249
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 250
    .local v4, lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x4

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 252
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 256
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    .end local v0           #fontStyle:I
    .end local v4           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v6

    .line 279
    .local v2, hasTitle:Z
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v6

    .line 280
    .local v1, hasSubtitle:Z
    :goto_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    move v5, v7

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v8, v7

    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_4

    .line 283
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 285
    :cond_4
    return-void

    .line 229
    .end local v1           #hasSubtitle:Z
    .end local v2           #hasTitle:Z
    .restart local v0       #fontStyle:I
    :cond_5
    const-string v5, "HTCActionBar"

    const-string/jumbo v9, "title_primary_m no found"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :cond_6
    const-string v5, "HTCActionBar"

    const-string/jumbo v9, "title_secondary_m not found"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    .end local v0           #fontStyle:I
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 262
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090019

    invoke-virtual {v3, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 264
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x102022d

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 265
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x102022e

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 266
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v5, :cond_8

    .line 267
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 269
    :cond_8
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_9
    move v2, v7

    .line 278
    goto/16 :goto_3

    .restart local v2       #hasTitle:Z
    :cond_a
    move v1, v7

    .line 279
    goto/16 :goto_4

    .restart local v1       #hasSubtitle:Z
    :cond_b
    move v5, v8

    .line 280
    goto/16 :goto_5
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 554
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 556
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 557
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 558
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 562
    .local v7, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 564
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v8, :cond_0

    .line 565
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 566
    .local v4, count:I
    if-lez v4, :cond_0

    .line 567
    add-int/lit8 v5, v4, -0x1

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-ltz v5, :cond_0

    .line 568
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 569
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 570
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 571
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 572
    mul-int/lit8 v8, v6, 0x46

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 573
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 567
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 578
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    return-object v7

    .line 570
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 582
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 584
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 585
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 589
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 591
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_0

    .line 592
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 593
    .local v4, count:I
    if-lez v4, :cond_0

    .line 594
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-gez v5, :cond_0

    .line 595
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 596
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 597
    const-string/jumbo v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 598
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    mul-int/lit8 v7, v5, 0x46

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 600
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 594
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 605
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 414
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 424
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 425
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 710
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 712
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    if-gez v3, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 716
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, resourceID:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_b_div"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 723
    if-eqz v1, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 732
    .end local v1           #resourceID:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 734
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 735
    .local v2, rightBound:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 738
    .local v0, leftBound:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    .end local v0           #leftBound:I
    .end local v2           #rightBound:I
    :cond_2
    return-void

    .line 727
    .restart local v1       #resourceID:I
    :cond_3
    const-string v3, "HTCActionBar"

    const-string v4, "common_b_div not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public enableHTCActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 687
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg_top_src"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 692
    .local v0, resource:I
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "common_app_bkg_top_src"

    invoke-static {v1, v2, v0}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 694
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->setBackgroundResource(I)V

    .line 697
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/internal/widget/ActionBarContextView;->setPadding(IIII)V

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    const-string v1, "HTCActionBar"

    const-string v2, "common_app_bkg_to_src not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 476
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 481
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 14
    .parameter "mode"

    .prologue
    const/4 v9, 0x0

    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 290
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v7, v11, :cond_7

    .line 292
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v7, :cond_6

    .line 294
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900d0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 296
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x1020230

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 302
    .local v6, textButton:Landroid/widget/Button;
    const v7, 0x104046d

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 305
    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, imageButton:Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x102022f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imageButton:Landroid/widget/ImageButton;
    check-cast v1, Landroid/widget/ImageButton;

    .line 313
    .restart local v1       #imageButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "icon_btn_done_dark"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 316
    .local v5, resource:I
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 321
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 327
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    .end local v5           #resource:I
    .end local v6           #textButton:Landroid/widget/Button;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 328
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    new-instance v8, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v8, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuBuilder;

    .line 355
    .local v4, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v7, :cond_2

    .line 356
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 358
    :cond_2
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 359
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, v11}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 363
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v7, v11, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v7, :cond_3

    .line 365
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, v11}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 366
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit(Landroid/content/Context;)V

    .line 367
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v8, 0x10900cf

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCustomItemRes(I)V

    .line 368
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, v11}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup(Z)V

    .line 372
    :cond_3
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v13, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 374
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v7, :cond_a

    .line 375
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 376
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 377
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v7, v11, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_4

    .line 381
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuView;->disableLayoutDivider()V

    .line 383
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    :goto_3
    iput-boolean v11, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 411
    return-void

    .line 319
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #menu:Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v1       #imageButton:Landroid/widget/ImageButton;
    .restart local v5       #resource:I
    .restart local v6       #textButton:Landroid/widget/Button;
    :cond_5
    const-string v7, "HTCActionBar"

    const-string/jumbo v8, "icon_btn_done_dark not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v1           #imageButton:Landroid/widget/ImageButton;
    .end local v5           #resource:I
    .end local v6           #textButton:Landroid/widget/Button;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 324
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 338
    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v7, :cond_9

    .line 339
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 340
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x109001d

    invoke-virtual {v2, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 341
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 346
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v8, 0x1020231

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, closeButton:Landroid/view/View;
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v7, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 342
    .end local v0           #closeButton:Landroid/view/View;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_8

    .line 343
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 386
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #menu:Lcom/android/internal/view/menu/MenuBuilder;
    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8, v11}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 389
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 391
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 392
    iget v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v7, v11, :cond_c

    .line 397
    iget v7, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    if-gez v7, :cond_b

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 400
    :cond_b
    iget v7, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    :cond_c
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 405
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 406
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 443
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 444
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 446
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 657
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 649
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 652
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 653
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 661
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 645
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 113
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 672
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 673
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 611
    .local v2, x:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 612
    .local v3, y:I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 614
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 615
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 616
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 617
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 618
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 620
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v4, :cond_0

    .line 621
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 622
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 623
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 624
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 628
    .end local v1           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 629
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 632
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 633
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 636
    :cond_2
    sub-int v4, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 638
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_3

    .line 639
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    move-result v4

    sub-int/2addr v2, v4

    .line 641
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 486
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 487
    .local v20, widthMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 488
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 492
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 493
    .local v12, heightMode:I
    if-nez v12, :cond_1

    .line 494
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 498
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 500
    .local v5, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 503
    .local v15, maxHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v22

    add-int v19, v21, v22

    .line 504
    .local v19, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v21

    sub-int v21, v5, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v22

    sub-int v3, v21, v22

    .line 505
    .local v3, availableWidth:I
    sub-int v11, v15, v19

    .line 506
    .local v11, height:I
    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 508
    .local v4, childSpecHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 511
    .local v14, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v3, v3, v21

    .line 514
    .end local v14           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 519
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 523
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 525
    .local v14, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/high16 v10, 0x4000

    .line 527
    .local v10, customWidthMode:I
    :goto_1
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    if-ltz v21, :cond_9

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 529
    .local v9, customWidth:I
    :goto_2
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    const/high16 v8, 0x4000

    .line 531
    .local v8, customHeightMode:I
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    if-ltz v21, :cond_b

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 533
    .local v7, customHeight:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 537
    .end local v7           #customHeight:I
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v21, v0

    if-gtz v21, :cond_d

    .line 538
    const/16 v16, 0x0

    .line 539
    .local v16, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 540
    .local v6, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-ge v13, v6, :cond_c

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 542
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v17, v21, v19

    .line 543
    .local v17, paddedViewHeight:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 544
    move/from16 v16, v17

    .line 540
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 500
    .end local v3           #availableWidth:I
    .end local v4           #childSpecHeight:I
    .end local v6           #count:I
    .end local v11           #height:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #measuredHeight:I
    .end local v17           #paddedViewHeight:I
    .end local v18           #v:Landroid/view/View;
    .end local v19           #verticalPadding:I
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 525
    .restart local v3       #availableWidth:I
    .restart local v4       #childSpecHeight:I
    .restart local v11       #height:I
    .restart local v14       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v15       #maxHeight:I
    .restart local v19       #verticalPadding:I
    :cond_8
    const/high16 v10, -0x8000

    goto :goto_1

    .restart local v10       #customWidthMode:I
    :cond_9
    move v9, v3

    .line 527
    goto :goto_2

    .line 529
    .restart local v9       #customWidth:I
    :cond_a
    const/high16 v8, -0x8000

    goto :goto_3

    .restart local v8       #customHeightMode:I
    :cond_b
    move v7, v11

    .line 531
    goto :goto_4

    .line 547
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v6       #count:I
    .restart local v13       #i:I
    .restart local v16       #measuredHeight:I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 551
    .end local v6           #count:I
    .end local v13           #i:I
    .end local v16           #measuredHeight:I
    :goto_6
    return-void

    .line 549
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_6
.end method

.method public setContentHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 153
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    if-gez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    iput v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 161
    :cond_1
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 176
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6
    .parameter "split"

    .prologue
    const/4 v5, -0x1

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 120
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 123
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 126
    .local v1, oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 146
    :cond_2
    return-void

    .line 130
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 133
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 135
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 138
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 140
    .restart local v1       #oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 180
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 181
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFontResource()V
    .locals 5

    .prologue
    .line 749
    const/high16 v0, -0x8000

    .line 752
    .local v0, fontStyle:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 754
    const/high16 v0, -0x8000

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "title_primary_m"

    const-string/jumbo v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 757
    if-eqz v0, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 764
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 766
    const/high16 v0, -0x8000

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "title_secondary_m"

    const-string/jumbo v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 769
    if-eqz v0, :cond_4

    .line 770
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 775
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-eqz v1, :cond_2

    .line 776
    const-string v1, "HTCActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFontResource():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    return-void

    .line 760
    :cond_3
    const-string v1, "HTCActionBar"

    const-string/jumbo v2, "title_primary_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_4
    const-string v1, "HTCActionBar"

    const-string/jumbo v2, "title_secondary_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
