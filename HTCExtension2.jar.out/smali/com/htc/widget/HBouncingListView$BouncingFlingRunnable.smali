.class Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
.source "HBouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field private isNeedCheckOverBottom:Z

.field private isNeedCheckOverLeft:Z

.field private isNeedCheckOverRight:Z

.field private isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/widget/HBouncingListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HBouncingListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 379
    iput-object p1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    .line 381
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 382
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 385
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 386
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HBouncingListView;Lcom/htc/widget/HBouncingListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/HBouncingListView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 636
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 637
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 638
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 639
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 640
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    .line 682
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 644
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 646
    .local v2, distanceToRight:I
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1700(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 649
    .local v1, distanceToLeft:I
    if-ge v1, v2, :cond_1

    move v4, v1

    .line 651
    .local v4, scrollDistance:I
    :goto_1
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v4           #scrollDistance:I
    :cond_1
    move v4, v2

    .line 649
    goto :goto_1

    .line 653
    .end local v1           #distanceToLeft:I
    .end local v2           #distanceToRight:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 654
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    .line 655
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    .line 656
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto :goto_0

    .line 659
    :cond_3
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 660
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 661
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 662
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .line 663
    :cond_4
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1800(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 664
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 666
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 668
    .local v0, distanceToBottom:I
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1900(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 671
    .local v3, distanceToTop:I
    if-ge v3, v0, :cond_5

    move v4, v3

    .line 673
    .restart local v4       #scrollDistance:I
    :goto_2
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .end local v4           #scrollDistance:I
    :cond_5
    move v4, v0

    .line 671
    goto :goto_2

    .line 675
    .end local v0           #distanceToBottom:I
    .end local v3           #distanceToTop:I
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 676
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    .line 677
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    .line 678
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 490
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 628
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 501
    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-nez v9, :cond_3

    .line 502
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 503
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    .line 514
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 515
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 517
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 518
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 520
    .local v7, x:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 525
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    .line 528
    .local v0, delta:I
    if-lez v0, :cond_6

    .line 531
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 532
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 533
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 536
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$800(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$900(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 553
    .end local v1           #firstView:Landroid/view/View;
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    .line 556
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 557
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 560
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_4

    .line 561
    const/4 v3, 0x0

    .line 610
    :cond_4
    :goto_3
    if-eqz v3, :cond_a

    .line 612
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 613
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    .line 618
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 507
    .end local v0           #delta:I
    .end local v3           #more:Z
    .end local v4           #motionView:Landroid/view/View;
    .end local v6           #scroller:Lcom/htc/widget/HtcScroller;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v9, :cond_3

    .line 508
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 509
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_1

    .line 541
    .restart local v0       #delta:I
    .restart local v3       #more:Z
    .restart local v6       #scroller:Lcom/htc/widget/HtcScroller;
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 542
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 544
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 545
    .local v2, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 548
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1000(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1100(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_2

    .line 569
    .end local v0           #delta:I
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    :cond_7
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .line 572
    .restart local v0       #delta:I
    if-lez v0, :cond_8

    .line 575
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 576
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 577
    .restart local v1       #firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 580
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1200(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1300(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 597
    .end local v1           #firstView:Landroid/view/View;
    :goto_5
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    .line 600
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 601
    .restart local v4       #motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 604
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_4

    .line 605
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 585
    .end local v4           #motionView:Landroid/view/View;
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 586
    .restart local v5       #offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 588
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 589
    .restart local v2       #lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 592
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1400(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1500(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 615
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    .line 620
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 475
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    .line 482
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 483
    return-void

    .line 477
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 478
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistance(I)V
    .locals 14
    .parameter "distance"

    .prologue
    const/16 v5, 0x1f4

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    if-ltz p1, :cond_1

    .line 397
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 398
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 403
    :goto_0
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    .line 406
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 407
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 408
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$100(Lcom/htc/widget/HBouncingListView;Z)V

    .line 409
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$200(Lcom/htc/widget/HBouncingListView;Z)V

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void

    .line 400
    :cond_1
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 401
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    goto :goto_0

    .line 411
    :cond_2
    if-ltz p1, :cond_4

    .line 412
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 413
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 418
    :goto_2
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    .line 421
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    move v7, v2

    move v9, v2

    move v10, p1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 422
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 423
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$300(Lcom/htc/widget/HBouncingListView;Z)V

    .line 424
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$400(Lcom/htc/widget/HBouncingListView;Z)V

    goto :goto_1

    .line 415
    :cond_4
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 416
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_2
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 8
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    .line 446
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 456
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void

    .line 449
    :cond_1
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    .line 450
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-instance v7, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v7}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v4, v2

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    goto :goto_0
.end method
