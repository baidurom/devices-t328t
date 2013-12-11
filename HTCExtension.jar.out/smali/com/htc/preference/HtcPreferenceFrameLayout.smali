.class public Lcom/htc/preference/HtcPreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HtcPreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private mBorderBottom:I

.field private mBorderLeft:I

.field private mBorderRight:I

.field private mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const v0, 0x10103d4

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v6, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v5, density:F
    mul-float v6, v5, v8

    add-float/2addr v6, v9

    float-to-int v1, v6

    .line 56
    .local v1, defaultBorderTop:I
    mul-float v6, v5, v8

    add-float/2addr v6, v9

    float-to-int v2, v6

    .line 57
    .local v2, defaultBottomPadding:I
    mul-float v6, v5, v8

    add-float/2addr v6, v9

    float-to-int v3, v6

    .line 58
    .local v3, defaultLeftPadding:I
    mul-float v6, v5, v8

    add-float/2addr v6, v9

    float-to-int v4, v6

    .line 60
    .local v4, defaultRightPadding:I
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    .line 63
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    .line 66
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    .line 69
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    .line 73
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    iput v7, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    .line 76
    iput v7, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    .line 77
    iput v7, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    .line 78
    iput v7, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 11
    .parameter "child"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingTop()I

    move-result v3

    .line 102
    .local v3, borderTop:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingBottom()I

    move-result v0

    .line 103
    .local v0, borderBottom:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingLeft()I

    move-result v1

    .line 104
    .local v1, borderLeft:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingRight()I

    move-result v2

    .line 106
    .local v2, borderRight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 107
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-object v4, v10

    .line 110
    .local v4, layoutParams:Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    :goto_0
    if-eqz v4, :cond_4

    iget-boolean v10, v4, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v10, :cond_4

    .line 111
    iget-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v10, :cond_0

    .line 112
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v3, v10

    .line 113
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v0, v10

    .line 114
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v1, v10

    .line 115
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v2, v10

    .line 116
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    .line 130
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingTop()I

    move-result v9

    .line 131
    .local v9, previousTop:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingBottom()I

    move-result v6

    .line 132
    .local v6, previousBottom:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingLeft()I

    move-result v7

    .line 133
    .local v7, previousLeft:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingRight()I

    move-result v8

    .line 134
    .local v8, previousRight:I
    if-ne v9, v3, :cond_1

    if-ne v6, v0, :cond_1

    if-ne v7, v1, :cond_1

    if-eq v8, v2, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->setPadding(IIII)V

    .line 139
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    return-void

    .line 107
    .end local v4           #layoutParams:Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    .end local v6           #previousBottom:I
    .end local v7           #previousLeft:I
    .end local v8           #previousRight:I
    .end local v9           #previousTop:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    .restart local v4       #layoutParams:Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    :cond_4
    iget-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v10, :cond_0

    .line 122
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v3, v10

    .line 123
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v0, v10

    .line 124
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v1, v10

    .line 125
    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v2, v10

    .line 126
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 92
    new-instance v0, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
