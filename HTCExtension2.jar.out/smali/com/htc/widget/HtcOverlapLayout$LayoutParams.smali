.class public Lcom/htc/widget/HtcOverlapLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "HtcOverlapLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcOverlapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 483
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 501
    iput p3, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 502
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 469
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 463
    iput v2, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 471
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 473
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 475
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 509
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;->gravity:I

    .line 516
    return-void
.end method
