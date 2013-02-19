.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private itemLeftMargin:I

.field private itemRightMargin:I

.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3
    .parameter
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 523
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 521
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 554
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 555
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 557
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 524
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 525
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    invoke-direct {v0, p1, v2}, Lcom/android/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 643
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 644
    .local v1, expandedItem:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 645
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 646
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 648
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 649
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 650
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 656
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 647
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 532
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 535
    :goto_1
    return v1

    .line 530
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 535
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 541
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 542
    add-int/lit8 p1, p1, 0x1

    .line 544
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 539
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 550
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 560
    if-nez p2, :cond_0

    .line 561
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x1090068

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 565
    :cond_0
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 566
    instance-of v9, p2, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v9, :cond_6

    move-object v9, p2

    .line 567
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 568
    .local v8, temp:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 571
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    if-ltz v9, :cond_1

    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    if-gez v9, :cond_3

    .line 573
    :cond_1
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 575
    .local v4, resource:Landroid/content/res/Resources;
    const-string/jumbo v9, "htc_list_item_margin_left"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 576
    .local v6, resourceLID:I
    const-string/jumbo v9, "htc_list_item_margin_right"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 578
    .local v7, resourceRID:I
    if-eqz v6, :cond_2

    .line 579
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 581
    :cond_2
    if-eqz v7, :cond_3

    .line 582
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 585
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v6           #resourceLID:I
    .end local v7           #resourceRID:I
    :cond_3
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    if-lez v9, :cond_4

    if-eqz v2, :cond_4

    .line 586
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 588
    :cond_4
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    if-lez v9, :cond_5

    if-eqz v2, :cond_5

    .line 589
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_5
    move-object v9, p2

    .line 592
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->enableHtcStyle(Z)V

    .end local v2           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8           #temp:Landroid/view/View;
    :cond_6
    move-object v1, p2

    .line 596
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 597
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-boolean v9, v9, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v9, :cond_7

    move-object v9, p2

    .line 598
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 600
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 603
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, p2

    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ListMenuItemView;->showsIcon()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, p2

    .line 604
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 606
    const v9, 0x1020006

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, iconView:Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 609
    const/high16 v9, 0x3f80

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 620
    .end local v0           #iconView:Landroid/view/View;
    :cond_8
    :goto_0
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 623
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_9

    .line 625
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 627
    .restart local v4       #resource:Landroid/content/res/Resources;
    const-string v9, "darklist_primary"

    const-string v10, "color"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 629
    .local v5, resourceID:I
    if-eqz v5, :cond_9

    .line 630
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 633
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v5           #resourceID:I
    :cond_9
    const v9, 0x1020016

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 635
    .local v3, mTitleView:Landroid/widget/TextView;
    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v9, :cond_a

    .line 636
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 639
    .end local v3           #mTitleView:Landroid/widget/TextView;
    :cond_a
    return-object p2

    .line 612
    :cond_b
    const v9, 0x1020006

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .restart local v0       #iconView:Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    const v10, 0x3ecccccd

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 615
    const v9, 0x3ecccccd

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
