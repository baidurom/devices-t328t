.class Lcom/htc/widget/CarouselOverlay;
.super Landroid/view/ViewGroup;
.source "CarouselOverlay.java"


# instance fields
.field mGroupOffset:I

.field mIcon:Landroid/widget/ImageView;

.field mIconPos:[I

.field mText:Landroid/widget/TextView;

.field mTextOffset:I

.field mTextPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    .line 27
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    .line 28
    invoke-virtual {p0}, Lcom/htc/widget/CarouselOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    .line 29
    invoke-virtual {p0}, Lcom/htc/widget/CarouselOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselOverlay;->mGroupOffset:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x202006d

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    .line 80
    const v0, 0x202006c

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    .line 81
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 56
    sub-int v2, p4, p2

    .line 57
    .local v2, width:I
    sub-int v0, p5, p3

    .line 58
    .local v0, height:I
    div-int/lit8 v3, v2, 0x2

    .line 60
    .local v3, width_H:I
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    aput v6, v4, v5

    .line 61
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    aput v6, v4, v5

    .line 63
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    add-int v1, v4, v5

    .line 64
    .local v1, totalChildHeight:I
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v5, 0x1

    sub-int v6, v0, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/CarouselOverlay;->mGroupOffset:I

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 65
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget v7, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 67
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 69
    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 40
    .local v3, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 42
    .local v0, heightSpecSize:I
    iget-object v1, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    .line 43
    .local v1, icon:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/widget/CarouselOverlay;->measureChild(Landroid/view/View;II)V

    .line 44
    iget-object v2, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    .line 45
    .local v2, text:Landroid/view/View;
    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/CarouselOverlay;->measureChild(Landroid/view/View;II)V

    .line 47
    invoke-virtual {p0, v3, v0}, Lcom/htc/widget/CarouselOverlay;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method
