.class Lcom/htc/app/mf/Animation$LayoutWrapper;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutWrapper"
.end annotation


# instance fields
.field mLps:Landroid/widget/FrameLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 748
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mView:Landroid/view/View;

    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    .line 751
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 818
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 819
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 802
    return-void
.end method

.method public setX(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 767
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 768
    return-void
.end method

.method public setY(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mLps:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 784
    iget-object v0, p0, Lcom/htc/app/mf/Animation$LayoutWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 785
    return-void
.end method
