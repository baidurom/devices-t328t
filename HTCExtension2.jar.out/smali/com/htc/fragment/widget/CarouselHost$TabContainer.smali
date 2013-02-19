.class Lcom/htc/fragment/widget/CarouselHost$TabContainer;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabContainer"
.end annotation


# static fields
.field private static final VIEW_FAKE:I = 0x0

.field private static final VIEW_REAL:I = 0x1

.field private static final VIEW_UNKNOW:I = -0x1


# instance fields
.field private childCache:[Landroid/view/View;

.field private currentView:I

.field private fakeViewTitle:Ljava/lang/String;

.field private isUsingMyFakeViewTitle:Z

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    .line 1464
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1456
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    .line 1457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    .line 1460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->isUsingMyFakeViewTitle:Z

    .line 1461
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->fakeViewTitle:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method static synthetic access$1500(Lcom/htc/fragment/widget/CarouselHost$TabContainer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->addFakeView(Ljava/lang/String;)V

    return-void
.end method

.method private addFakeView(Ljava/lang/String;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->saveAllViews()V

    .line 1506
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;-><init>(Lcom/htc/fragment/widget/CarouselHost;Landroid/content/Context;)V

    .line 1507
    .local v0, tabTitle:Lcom/htc/fragment/widget/CarouselHost$FakeScreen;
    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->addView(Landroid/view/View;)V

    .line 1509
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->fakeViewTitle:Ljava/lang/String;

    .line 1510
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->isUsingMyFakeViewTitle:Z

    .line 1513
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->restoreAllViews()V

    .line 1514
    return-void
.end method

.method private restoreAllViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1485
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1491
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    aget-object v0, v3, v1

    .line 1492
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1493
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v2, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 1495
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    aput-object v4, v3, v1

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1498
    .end local v0           #child:Landroid/view/View;
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iput-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    .line 1500
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private saveAllViews()V
    .locals 4

    .prologue
    .line 1468
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1469
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->restoreAllViews()V

    .line 1471
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildCount()I

    move-result v0

    .line 1472
    .local v0, childCount:I
    if-eqz v0, :cond_2

    .line 1473
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    .line 1476
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->childCache:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->detachAllViewsFromParent()V

    .line 1482
    .end local v1           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1591
    return-void
.end method

.method hasFakeView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method switchFakeViewTitleTo(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1574
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    .line 1579
    .local v1, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-eqz v1, :cond_0

    .line 1581
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getCacheView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    .line 1583
    .local v0, newTitleView:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;

    iget-object v3, v0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->fakeViewTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->isUsingMyFakeViewTitle:Z

    goto :goto_0
.end method

.method switchToContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1553
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    if-ne v0, v2, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1566
    :goto_1
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->isUsingMyFakeViewTitle:Z

    if-nez v0, :cond_1

    .line 1567
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->fakeViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->isUsingMyFakeViewTitle:Z

    .line 1570
    :cond_1
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    goto :goto_0

    .line 1558
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method switchToFakeView()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 1521
    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    if-nez v3, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1523
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildCount()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1549
    :cond_1
    :goto_1
    iput v6, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->currentView:I

    goto :goto_0

    .line 1526
    :pswitch_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;

    .line 1529
    .local v2, fakeView:Lcom/htc/fragment/widget/CarouselHost$FakeScreen;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getMeasuredWidth()I

    move-result v1

    .line 1530
    .local v1, contentWidth:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getMeasuredHeight()I

    move-result v0

    .line 1534
    .local v0, contentHeight:I
    invoke-virtual {v2, v6}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setVisibility(I)V

    .line 1536
    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 1537
    :cond_2
    const-string v3, "ani"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before relayout content  , (w,h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), M(w.h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v3, "ani"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before relayout fake view, (w,h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), M(w.h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->measure(II)V

    .line 1542
    invoke-virtual {v2, v6, v6, v1, v0}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->layout(IIII)V

    .line 1543
    const-string v3, "ani"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after  relayout fake view, (w,h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), M(w.h) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
