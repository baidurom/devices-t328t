.class public Lcom/android/internal/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private activeItemLMax:I

.field private activeItemPMax:I

.field private defaultDisplay:Landroid/view/Display;

.field private enableActionLimit:Z

.field private enableHtcPopup:Z

.field private invokeOverflowMenu:Landroid/view/View$OnClickListener;

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAllMenusAreClosing:Z

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private popupanchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 86
    const v0, 0x109001b

    const v1, 0x109001a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 68
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 835
    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    .line 846
    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    .line 849
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    .line 850
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    .line 852
    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    .line 876
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$1;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    .line 886
    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 897
    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    .line 88
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 382
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 385
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 386
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 385
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 392
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .parameter "item"
    .parameter "itemView"

    .prologue
    .line 248
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    .local v1, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    move-object v0, p2

    .line 251
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 252
    .local v0, actionItemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 253
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 464
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 465
    return v0
.end method

.method public enableActionLimit(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 857
    if-nez p1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    .line 863
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    if-gez v1, :cond_3

    .line 865
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 867
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x10e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    .line 868
    const v1, 0x10e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    .line 871
    .end local v0           #resource:Landroid/content/res/Resources;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 872
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    goto :goto_0
.end method

.method public enableHtcPopup(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    .line 840
    return-void
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 344
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 30

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v26

    .line 497
    .local v26, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 498
    .local v15, itemsSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 499
    .local v17, maxActions:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v27, v0

    .line 500
    .local v27, widthLimit:I
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 501
    .local v21, querySpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/ViewGroup;

    .line 504
    .local v20, parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->defaultDisplay:Landroid/view/Display;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Display;->getRotation()I

    move-result v19

    .line 509
    .local v19, orientation:I
    if-eqz v19, :cond_0

    const/16 v28, 0x2

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemPMax:I

    move/from16 v17, v0

    .line 513
    .end local v19           #orientation:I
    :cond_1
    :goto_0
    const/16 v23, 0x0

    .line 514
    .local v23, requiredItems:I
    const/16 v22, 0x0

    .line 515
    .local v22, requestedItems:I
    const/4 v8, 0x0

    .line 516
    .local v8, firstActionWidth:I
    const/4 v10, 0x0

    .line 517
    .local v10, hasOverflow:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v15, :cond_6

    .line 518
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 519
    .local v14, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 520
    add-int/lit8 v23, v23, 0x1

    .line 526
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 529
    const/16 v17, 0x0

    .line 517
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 509
    .end local v8           #firstActionWidth:I
    .end local v10           #hasOverflow:Z
    .end local v11           #i:I
    .end local v14           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v22           #requestedItems:I
    .end local v23           #requiredItems:I
    .restart local v19       #orientation:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->activeItemLMax:I

    move/from16 v17, v0

    goto :goto_0

    .line 521
    .end local v19           #orientation:I
    .restart local v8       #firstActionWidth:I
    .restart local v10       #hasOverflow:Z
    .restart local v11       #i:I
    .restart local v14       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v22       #requestedItems:I
    .restart local v23       #requiredItems:I
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 522
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 524
    :cond_5
    const/4 v10, 0x1

    goto :goto_2

    .line 534
    .end local v14           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    if-nez v10, :cond_7

    add-int v28, v23, v22

    move/from16 v0, v28

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 536
    :cond_7
    add-int/lit8 v17, v17, -0x1

    .line 538
    :cond_8
    sub-int v17, v17, v23

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    .line 541
    .local v24, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseBooleanArray;->clear()V

    .line 543
    const/4 v4, 0x0

    .line 544
    .local v4, cellSize:I
    const/4 v7, 0x0

    .line 545
    .local v7, cellsRemaining:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v7, v27, v28

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    rem-int v5, v27, v28

    .line 548
    .local v5, cellSizeRemaining:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v29, v5, v7

    add-int v4, v28, v29

    .line 552
    .end local v5           #cellSizeRemaining:I
    :cond_9
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_20

    .line 553
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 555
    .restart local v14       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 557
    .local v25, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    .line 558
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 560
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_e

    .line 561
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v28

    sub-int v7, v7, v28

    .line 566
    :goto_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 567
    .local v18, measuredWidth:I
    sub-int v27, v27, v18

    .line 568
    if-nez v8, :cond_b

    .line 569
    move/from16 v8, v18

    .line 571
    :cond_b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 572
    .local v9, groupId:I
    if-eqz v9, :cond_c

    .line 573
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 575
    :cond_c
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 552
    .end local v9           #groupId:I
    .end local v18           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 564
    .restart local v25       #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 576
    .end local v25           #v:Landroid/view/View;
    :cond_f
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 579
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 580
    .restart local v9       #groupId:I
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 581
    .local v12, inGroup:Z
    if-gtz v17, :cond_10

    if-eqz v12, :cond_18

    :cond_10
    if-lez v27, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    if-lez v7, :cond_18

    :cond_11
    const/4 v13, 0x1

    .line 584
    .local v13, isAction:Z
    :goto_6
    if-eqz v13, :cond_15

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 586
    .restart local v25       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_12

    .line 587
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 589
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 590
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 592
    .local v6, cells:I
    sub-int/2addr v7, v6

    .line 593
    if-nez v6, :cond_13

    .line 594
    const/4 v13, 0x0

    .line 599
    .end local v6           #cells:I
    :cond_13
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 600
    .restart local v18       #measuredWidth:I
    sub-int v27, v27, v18

    .line 601
    if-nez v8, :cond_14

    .line 602
    move/from16 v8, v18

    .line 605
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 606
    if-ltz v27, :cond_1a

    const/16 v28, 0x1

    :goto_8
    and-int v13, v13, v28

    .line 613
    .end local v18           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :cond_15
    :goto_9
    if-eqz v13, :cond_1d

    if-eqz v9, :cond_1d

    .line 614
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 628
    :cond_16
    if-eqz v13, :cond_17

    add-int/lit8 v17, v17, -0x1

    .line 630
    :cond_17
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 581
    .end local v13           #isAction:Z
    :cond_18
    const/4 v13, 0x0

    goto :goto_6

    .line 597
    .restart local v13       #isAction:Z
    .restart local v25       #v:Landroid/view/View;
    :cond_19
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 606
    .restart local v18       #measuredWidth:I
    :cond_1a
    const/16 v28, 0x0

    goto :goto_8

    .line 609
    :cond_1b
    add-int v28, v27, v8

    if-lez v28, :cond_1c

    const/16 v28, 0x1

    :goto_a
    and-int v13, v13, v28

    goto :goto_9

    :cond_1c
    const/16 v28, 0x0

    goto :goto_a

    .line 615
    .end local v18           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :cond_1d
    if-eqz v12, :cond_16

    .line 617
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 618
    const/16 v16, 0x0

    .local v16, j:I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_16

    .line 619
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 620
    .local v3, areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v9, :cond_1f

    .line 622
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v28

    if-eqz v28, :cond_1e

    add-int/lit8 v17, v17, 0x1

    .line 623
    :cond_1e
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 618
    :cond_1f
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 633
    .end local v3           #areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9           #groupId:I
    .end local v12           #inGroup:Z
    .end local v13           #isAction:Z
    .end local v14           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v16           #j:I
    :cond_20
    const/16 v28, 0x1

    return v28
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, actionView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    :cond_0
    instance-of v3, p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v3, :cond_1

    .line 228
    const/4 p2, 0x0

    .line 230
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 234
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 235
    .local v2, menuParent:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 236
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 237
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    :cond_3
    if-nez v2, :cond_4

    .line 241
    const-string v3, "HTCActionBar"

    const-string v4, "ActionMenuPresenter:getItemView()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4
    return-object v0

    .line 232
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #menuParent:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, result:Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    .line 219
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    .line 220
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 455
    :goto_0
    return v1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 448
    .local v0, popup:Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 450
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mAllMenusAreClosing:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCloseAnimationEnabled(Z)V

    .line 452
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 453
    goto :goto_0

    .line 455
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 476
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 13
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, res:Landroid/content/res/Resources;
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v7, :cond_0

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 100
    :cond_0
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v7, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 105
    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v7, :cond_2

    .line 106
    const v7, 0x10e002d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 109
    :cond_2
    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 110
    .local v6, width:I
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v7, :cond_b

    .line 111
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v7, :cond_5

    .line 115
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v7, :cond_a

    .line 117
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 120
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x10900d0

    invoke-virtual {v7, v9, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 123
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "icon_btn_menu_dark"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, resource:I
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, imageButton:Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const v9, 0x102022f

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageButton:Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 133
    .restart local v0       #imageButton:Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    .end local v0           #imageButton:Landroid/widget/ImageButton;
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "action_bar_menu"

    const-string/jumbo v10, "string"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 142
    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, textButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const v9, 0x1020230

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textButton:Landroid/widget/Button;
    check-cast v4, Landroid/widget/Button;

    .line 149
    .restart local v4       #textButton:Landroid/widget/Button;
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(I)V

    .line 155
    .end local v4           #textButton:Landroid/widget/Button;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "overflowView"

    const-string/jumbo v10, "id"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, viewID:I
    if-lez v5, :cond_9

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v7, :cond_9

    .line 159
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    .line 164
    :goto_3
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .end local v2           #resource:I
    .end local v5           #viewID:I
    :goto_4
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 171
    .local v3, spec:I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v3, v3}, Landroid/view/View;->measure(II)V

    .line 173
    .end local v3           #spec:I
    :cond_5
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 178
    :goto_5
    iput v6, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 180
    const/high16 v7, 0x4260

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 183
    iput-object v12, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 184
    return-void

    .end local v6           #width:I
    :cond_6
    move v7, v8

    .line 97
    goto/16 :goto_0

    .line 137
    .restart local v2       #resource:I
    .restart local v6       #width:I
    :cond_7
    const-string v7, "HTCActionBar"

    const-string/jumbo v9, "icon_btn_menu_dark not found"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :cond_8
    const-string v7, "HTCActionBar"

    const-string v9, "action_bar_menu not found"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .restart local v5       #viewID:I
    :cond_9
    const-string v7, "HTCActionBar"

    const-string/jumbo v9, "overflowView id not found"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    .end local v2           #resource:I
    .end local v5           #viewID:I
    :cond_a
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, p0, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_4

    .line 175
    :cond_b
    iput-object v12, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_5
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 639
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mAllMenusAreClosing:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 642
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 643
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 190
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 654
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 655
    .local v1, saved:Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 656
    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 657
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 659
    .local v2, subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 662
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v2           #subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 647
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 648
    .local v0, state:Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 649
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 6
    .parameter "subMenu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    move-object v1, p1

    .line 352
    .local v1, topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_2

    .line 353
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1           #topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1       #topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, anchor:Landroid/view/View;
    if-nez v0, :cond_3

    .line 357
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 361
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 362
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 363
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 365
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    if-eqz v2, :cond_4

    .line 366
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->enableHtcPopup(Z)V

    .line 369
    :cond_4
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 371
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move v2, v3

    .line 377
    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 666
    if-eqz p1, :cond_0

    .line 668
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .parameter "isExclusive"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 214
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .parameter "itemCount"

    .prologue
    .line 208
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 210
    return-void
.end method

.method public setListMenuAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    .line 900
    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 893
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 895
    :cond_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .parameter "reserveOverflow"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 205
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .parameter "width"
    .parameter "strict"

    .prologue
    .line 197
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 198
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 200
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "childIndex"
    .parameter "item"

    .prologue
    .line 257
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 401
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 406
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->popupanchor:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 412
    .local v0, popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup:Z

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->enableHtcPopup(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    :cond_0
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 420
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 424
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 432
    .end local v0           #popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_1
    return v5

    .line 408
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .restart local v0       #popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    goto :goto_0

    .line 432
    .end local v0           #popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 14
    .parameter "cleared"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 262
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 264
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v10, :cond_1

    .line 265
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    .local v0, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 267
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 268
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 269
    .local v8, provider:Landroid/view/ActionProvider;
    if-eqz v8, :cond_0

    .line 270
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 267
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v0           #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v8           #provider:Landroid/view/ActionProvider;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 278
    .local v6, nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 279
    .local v2, hasOverflow:Z
    iget-boolean v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v10, :cond_2

    if-eqz v6, :cond_2

    .line 280
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 281
    .restart local v1       #count:I
    if-ne v1, v12, :cond_8

    .line 282
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v10

    if-nez v10, :cond_7

    move v2, v12

    .line 288
    .end local v1           #count:I
    :cond_2
    :goto_2
    if-eqz v2, :cond_c

    .line 289
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v10, :cond_3

    .line 293
    iget-boolean v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v10, :cond_a

    .line 296
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v12, 0x10900d0

    invoke-virtual {v10, v12, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 300
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v11, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->invokeOverflowMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 307
    .local v7, parent:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v7, v10, :cond_5

    .line 308
    if-eqz v7, :cond_4

    .line 309
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    :cond_4
    iget-object v5, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuView;

    .line 314
    .local v5, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-boolean v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit:Z

    if-eqz v10, :cond_b

    .line 317
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5, v10}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;)V

    .line 319
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 325
    .local v9, resource:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 326
    .local v4, lparams:Landroid/view/ViewGroup$LayoutParams;
    const v10, 0x10500dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    const v10, 0x10500dd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .end local v4           #lparams:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v7           #parent:Landroid/view/ViewGroup;
    .end local v9           #resource:Landroid/content/res/Resources;
    :cond_5
    :goto_4
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuView;

    iget-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 340
    return-void

    .end local v2           #hasOverflow:Z
    .end local v6           #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    move-object v6, v11

    .line 275
    goto/16 :goto_1

    .restart local v1       #count:I
    .restart local v2       #hasOverflow:Z
    .restart local v6       #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    move v2, v13

    .line 282
    goto :goto_2

    .line 284
    :cond_8
    if-lez v1, :cond_9

    move v2, v12

    :goto_5
    goto :goto_2

    :cond_9
    move v2, v13

    goto :goto_5

    .line 303
    .end local v1           #count:I
    :cond_a
    new-instance v10, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v11, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_3

    .line 332
    .restart local v5       #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    .restart local v7       #parent:Landroid/view/ViewGroup;
    :cond_b
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 335
    .end local v5           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_c
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v10, v11, :cond_5

    .line 336
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
