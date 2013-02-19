.class public Lcom/htc/widget/EditWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "EditWindowLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;,
        Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;,
        Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;,
        Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;
    }
.end annotation


# instance fields
.field private final BODY_BACKGROUND_BOTTOM_BRIGHT:I

.field private final BODY_BACKGROUND_BOTTOM_DARK:I

.field private final BODY_BACKGROUND_CENTER_BRIGHT:I

.field private final BODY_BACKGROUND_CENTER_DARK:I

.field private final SIP_MIN_HEIGHT:I

.field private disableItemTxtColor:I

.field private disableTxtColor:I

.field private enableItemTxtColor:I

.field private enableTxtColor:I

.field private isAutoRefresh:Z

.field isBodyBlackBackground:Z

.field private isFirstTime:Z

.field isNeedToUpdate:Z

.field private isSizeChangedFullScreen:Z

.field isTitleRightImageSet:Z

.field isTitleRightTextSet:Z

.field private mAppDropDownAdapter:Landroid/widget/BaseAdapter;

.field private mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mAppDropDownOnClickListener:Landroid/view/View$OnClickListener;

.field private mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mAppDropDownVTO:Landroid/view/ViewTreeObserver;

.field private mDropDownListViewWidth:I

.field private mEditWindowHeight:I

.field private mEditWindowWidth:I

.field mListPopupMaxWidth:I

.field mListPopupMinWidth:I

.field private mMaxButtonCount:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuButtonAdapter:Landroid/widget/BaseAdapter;

.field private mMenuButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

.field private menuButton:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->SIP_MIN_HEIGHT:I

    .line 74
    const/16 v0, 0x260

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMaxWidth:I

    .line 75
    const/16 v0, 0x110

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMinWidth:I

    .line 76
    const v0, 0x20802ed

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_DARK:I

    .line 77
    const v0, 0x20802e6

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_DARK:I

    .line 78
    const v0, 0x20802ec

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_BRIGHT:I

    .line 79
    const v0, 0x20802e4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_BRIGHT:I

    .line 80
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isBodyBlackBackground:Z

    .line 287
    new-instance v0, Lcom/htc/widget/EditWindowLayout$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$1;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnClickListener:Landroid/view/View$OnClickListener;

    .line 450
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowWidth:I

    .line 451
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowHeight:I

    .line 491
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    .line 1240
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    .line 1241
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightTextSet:Z

    .line 1406
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isFirstTime:Z

    .line 1407
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mMaxButtonCount:I

    .line 1408
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    .line 1548
    const v0, -0x7f333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableTxtColor:I

    .line 1549
    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableTxtColor:I

    .line 1550
    const v0, -0x7f000001

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I

    .line 1551
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I

    .line 1726
    new-instance v0, Lcom/htc/widget/EditWindowLayout$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$2;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1748
    new-instance v0, Lcom/htc/widget/EditWindowLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$3;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 2157
    const/16 v0, 0x17c

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mDropDownListViewWidth:I

    .line 2225
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 89
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 90
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support EditinWindow at this project which is not a tablet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 441
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->SIP_MIN_HEIGHT:I

    .line 74
    const/16 v0, 0x260

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMaxWidth:I

    .line 75
    const/16 v0, 0x110

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMinWidth:I

    .line 76
    const v0, 0x20802ed

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_DARK:I

    .line 77
    const v0, 0x20802e6

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_DARK:I

    .line 78
    const v0, 0x20802ec

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_BRIGHT:I

    .line 79
    const v0, 0x20802e4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_BRIGHT:I

    .line 80
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isBodyBlackBackground:Z

    .line 287
    new-instance v0, Lcom/htc/widget/EditWindowLayout$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$1;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnClickListener:Landroid/view/View$OnClickListener;

    .line 450
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowWidth:I

    .line 451
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowHeight:I

    .line 491
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    .line 1240
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    .line 1241
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightTextSet:Z

    .line 1406
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isFirstTime:Z

    .line 1407
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mMaxButtonCount:I

    .line 1408
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    .line 1548
    const v0, -0x7f333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableTxtColor:I

    .line 1549
    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableTxtColor:I

    .line 1550
    const v0, -0x7f000001

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I

    .line 1551
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I

    .line 1726
    new-instance v0, Lcom/htc/widget/EditWindowLayout$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$2;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1748
    new-instance v0, Lcom/htc/widget/EditWindowLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$3;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 2157
    const/16 v0, 0x17c

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mDropDownListViewWidth:I

    .line 2225
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 442
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->SIP_MIN_HEIGHT:I

    .line 74
    const/16 v0, 0x260

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMaxWidth:I

    .line 75
    const/16 v0, 0x110

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMinWidth:I

    .line 76
    const v0, 0x20802ed

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_DARK:I

    .line 77
    const v0, 0x20802e6

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_DARK:I

    .line 78
    const v0, 0x20802ec

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_CENTER_BRIGHT:I

    .line 79
    const v0, 0x20802e4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->BODY_BACKGROUND_BOTTOM_BRIGHT:I

    .line 80
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isBodyBlackBackground:Z

    .line 287
    new-instance v0, Lcom/htc/widget/EditWindowLayout$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$1;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnClickListener:Landroid/view/View$OnClickListener;

    .line 450
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowWidth:I

    .line 451
    iput v1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowHeight:I

    .line 491
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    .line 1240
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    .line 1241
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightTextSet:Z

    .line 1406
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isFirstTime:Z

    .line 1407
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mMaxButtonCount:I

    .line 1408
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    .line 1548
    const v0, -0x7f333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableTxtColor:I

    .line 1549
    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableTxtColor:I

    .line 1550
    const v0, -0x7f000001

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I

    .line 1551
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I

    .line 1726
    new-instance v0, Lcom/htc/widget/EditWindowLayout$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$2;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1748
    new-instance v0, Lcom/htc/widget/EditWindowLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/EditWindowLayout$3;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 2157
    const/16 v0, 0x17c

    iput v0, p0, Lcom/htc/widget/EditWindowLayout;->mDropDownListViewWidth:I

    .line 2225
    iput-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 447
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/EditWindowLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->onAppDropDownPopupButtonClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/EditWindowLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->dismissTitleBarDropDownWhenItemClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/EditWindowLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/EditWindowLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/EditWindowLayout;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/widget/EditWindowLayout;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/widget/EditWindowLayout;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/EditWindowLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/EditWindowLayout;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshEditTitleBarOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/EditWindowLayout;Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/EditWindowLayout;->onTitleBarDropDownPopupButtonClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;Z)V

    return-void
.end method

.method private addToTitleButtonBar(Ljava/util/LinkedList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p1, viewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/FrameLayout;>;"
    const v4, 0x2020009

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1711
    .local v1, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1712
    const v4, 0x2020095

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1714
    .local v0, editWindowTitleButtonBar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1716
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1717
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1718
    .local v3, view:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1724
    .end local v0           #editWindowTitleButtonBar:Landroid/view/ViewGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #view:Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private adjustAppDropDownPosition()V
    .locals 0

    .prologue
    .line 2160
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->updateDropDownListPosition()V

    .line 2161
    return-void
.end method

.method private adjustDropDownLocationAfterRotate()V
    .locals 8

    .prologue
    .line 2113
    const v6, 0x2020009

    invoke-virtual {p0, v6}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2114
    .local v3, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 2115
    const v6, 0x2020095

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2117
    .local v2, editWindowTitleButtonBar:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 2118
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2119
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 2155
    .end local v0           #childCount:I
    .end local v2           #editWindowTitleButtonBar:Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 2121
    .restart local v0       #childCount:I
    .restart local v2       #editWindowTitleButtonBar:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2123
    .local v1, configuration:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    .line 2125
    .local v5, isLandscape:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 2126
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2125
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2123
    .end local v4           #i:I
    .end local v5           #isLandscape:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private adjustEditWindowSize()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 526
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205017d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 530
    .local v0, editWindowWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 531
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 532
    iget-boolean v2, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    if-eqz v2, :cond_1

    .line 533
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 534
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget v2, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowWidth:I

    if-lez v2, :cond_2

    .line 539
    iget v2, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 543
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 541
    :cond_2
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private adjustFooterButtons(I)V
    .locals 8
    .parameter "h"

    .prologue
    const v7, 0x20802ea

    const v6, 0x20802e5

    .line 923
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->isSipOn(I)Z

    move-result v3

    .line 924
    .local v3, sipOn:Z
    const v4, 0x2020083

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 925
    .local v1, editingFooterButtonBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 926
    const v4, 0x20802e9

    const v5, 0x20802e8

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 934
    const/4 v0, 0x0

    .line 949
    .local v0, btn:Lcom/htc/widget/HtcIconButton;
    const v4, 0x2020004

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 951
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 952
    invoke-virtual {p0, v0, v3, v6, v6}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 958
    :cond_0
    const v4, 0x2020005

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 960
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 961
    invoke-virtual {p0, v0, v3, v6, v6}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 966
    :cond_1
    const v4, 0x2020006

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 968
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 969
    invoke-virtual {p0, v0, v3, v6, v6}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 974
    :cond_2
    const v4, 0x2020007

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 976
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 977
    invoke-virtual {p0, v0, v3, v7, v7}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 982
    :cond_3
    const/4 v2, 0x0

    .line 983
    .local v2, imageView:Landroid/widget/ImageView;
    const v4, 0x2020084

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 985
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 987
    invoke-virtual {p0, v2, v3, v6, v6}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 994
    :cond_4
    const/4 v2, 0x0

    .line 995
    const v4, 0x2020088

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 997
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 999
    invoke-virtual {p0, v2, v3, v6, v6}, Lcom/htc/widget/EditWindowLayout;->adjustViewBackgroundResource(Landroid/view/View;ZII)V

    .line 1007
    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_5
    return-void
.end method

.method private adjustWindowPadding(I)V
    .locals 7
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 2208
    const v4, 0x202000b

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2209
    .local v1, contentView:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 2211
    const/4 v3, 0x0

    .line 2212
    .local v3, topPadding:I
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2213
    .local v0, bottomPadding:I
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->isSipOn(I)Z

    move-result v2

    .line 2214
    .local v2, sipOn:Z
    if-eqz v2, :cond_1

    .line 2215
    invoke-virtual {v1, v6, v3, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2223
    .end local v0           #bottomPadding:I
    .end local v2           #sipOn:Z
    .end local v3           #topPadding:I
    :cond_0
    :goto_0
    return-void

    .line 2218
    .restart local v0       #bottomPadding:I
    .restart local v2       #sipOn:Z
    .restart local v3       #topPadding:I
    :cond_1
    invoke-virtual {v1, v6, v3, v6, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private dismissAppDropDownPopupButton()V
    .locals 1

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isAppDropDownPopupButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 2475
    :cond_0
    return-void
.end method

.method private dismissTitleBarDropDownPopupButton()V
    .locals 1

    .prologue
    .line 2490
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isTitleBarDropDownPopupButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 2493
    :cond_0
    return-void
.end method

.method private dismissTitleBarDropDownWhenItemClicked()V
    .locals 1

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isTitleBarDropDownPopupButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 2500
    :cond_0
    return-void
.end method

.method private getTitleBarButtonInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;
    .locals 7
    .parameter "menuItem"

    .prologue
    const/4 v6, 0x0

    .line 1663
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->newTitleBarItemInstance()Landroid/widget/FrameLayout;

    move-result-object v3

    .line 1670
    .local v3, editTitleBarItem:Landroid/widget/FrameLayout;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1671
    iget-object v5, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1672
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1674
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1675
    .local v0, btn_text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1676
    const v5, 0x202009a

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1678
    .local v2, button_txt:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1679
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1680
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1681
    iget v5, p0, Lcom/htc/widget/EditWindowLayout;->disableTxtColor:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1685
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1690
    .end local v2           #button_txt:Landroid/widget/TextView;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1691
    .local v4, topDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 1692
    const v5, 0x2020099

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1694
    .local v1, button_icon:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 1695
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1696
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1697
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1701
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1702
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    .end local v1           #button_icon:Landroid/widget/ImageView;
    :cond_1
    return-object v3

    .line 1683
    .end local v4           #topDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #button_txt:Landroid/widget/TextView;
    :cond_2
    iget v5, p0, Lcom/htc/widget/EditWindowLayout;->enableTxtColor:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1699
    .end local v2           #button_txt:Landroid/widget/TextView;
    .restart local v1       #button_icon:Landroid/widget/ImageView;
    .restart local v4       #topDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method private getTitleBarDropDownInstance(Ljava/util/LinkedList;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter
    .parameter "btn_text"
    .parameter "btn_icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .prologue
    .line 1605
    .local p1, subMenuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/EditWindowLayout;->getTitleBarDropDownInstance(Ljava/util/LinkedList;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private getTitleBarDropDownInstance(Ljava/util/LinkedList;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/widget/FrameLayout;
    .locals 6
    .parameter
    .parameter "btn_text"
    .parameter "btn_icon"
    .parameter "isMenuButton"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .prologue
    .local p1, subMenuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    const/4 v5, 0x0

    .line 1614
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->newTitleBarDropDownInstance()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 1615
    .local v2, editTitleBarItem:Landroid/widget/FrameLayout;
    if-eqz p2, :cond_0

    .line 1616
    const v4, 0x202009a

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1618
    .local v1, button_txt:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 1619
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1620
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1623
    .end local v1           #button_txt:Landroid/widget/TextView;
    :cond_0
    if-eqz p3, :cond_1

    .line 1624
    const v4, 0x2020099

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1626
    .local v0, button_icon:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 1627
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1632
    .end local v0           #button_icon:Landroid/widget/ImageView;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1634
    new-instance v3, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;-><init>(Lcom/htc/widget/EditWindowLayout;Lcom/htc/widget/EditWindowLayout$1;)V

    .line 1635
    .local v3, mMenuItemOnClickListener:Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;
    invoke-virtual {v3, v2}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->setMenuPopupWindow(Landroid/widget/FrameLayout;)V

    .line 1636
    invoke-direct {p0, v2, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->setMenuAdapter(Landroid/widget/BaseAdapter;)V

    .line 1638
    if-eqz p4, :cond_2

    .line 1639
    invoke-direct {p0, v2, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;

    .line 1641
    invoke-virtual {v3}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->enablePrepareOptionsMenu()V

    .line 1643
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->setMenuOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1644
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1645
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1648
    .end local v3           #mMenuItemOnClickListener:Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;
    :cond_3
    return-object v2
.end method

.method private getTitleBarItemInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;
    .locals 9
    .parameter "menuItem"

    .prologue
    .line 1574
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1575
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1576
    .local v5, subMenuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 1577
    .local v4, subMenu:Landroid/view/SubMenu;
    invoke-interface {v4}, Landroid/view/SubMenu;->size()I

    move-result v0

    .line 1578
    .local v0, Length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1579
    invoke-interface {v4, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1580
    .local v3, subItem:Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    .line 1581
    .local v2, isVisible:Z
    if-eqz v2, :cond_0

    .line 1582
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1586
    .end local v2           #isVisible:Z
    .end local v3           #subItem:Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1587
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1588
    .local v6, title:Ljava/lang/CharSequence;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1589
    .local v7, topDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v5, v6, v7}, Lcom/htc/widget/EditWindowLayout;->getTitleBarDropDownInstance(Ljava/util/LinkedList;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v8

    .line 1594
    .end local v0           #Length:I
    .end local v1           #i:I
    .end local v4           #subMenu:Landroid/view/SubMenu;
    .end local v5           #subMenuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    .end local v6           #title:Ljava/lang/CharSequence;
    .end local v7           #topDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v8

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->getTitleBarButtonInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;

    move-result-object v8

    goto :goto_1
.end method

.method private hideActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 480
    .local v1, context:Landroid/content/Context;
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 481
    .local v0, ab:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 483
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 484
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 485
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 486
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 487
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setShowHideActionBarViewOnActionModeFinished(Z)V

    .line 489
    :cond_0
    return-void
.end method

.method private hideOrginalTitle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 104
    const v1, 0x202000a

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, orginalTitle:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private initAppDropDownList()V
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownClickable(Z)V

    .line 2165
    return-void
.end method

.method private initialFooterButtons()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1025
    const v3, 0x2020083

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1026
    .local v1, editingFooterButtonBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_9

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .local v0, btn:Lcom/htc/widget/HtcIconButton;
    const v3, 0x2020008

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 1030
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1031
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 1033
    :cond_0
    const v3, 0x2020004

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 1035
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1036
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 1038
    :cond_1
    const v3, 0x2020005

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 1040
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1041
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 1043
    :cond_2
    const v3, 0x2020006

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 1045
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 1046
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 1048
    :cond_3
    const v3, 0x2020007

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 1050
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1051
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 1053
    :cond_4
    const/4 v2, 0x0

    .line 1054
    .local v2, imageView:Landroid/widget/ImageView;
    const v3, 0x2020084

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 1056
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1058
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    :cond_5
    const v3, 0x2020088

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 1063
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1065
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1069
    :cond_6
    const v3, 0x2020085

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 1071
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 1073
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1075
    :cond_7
    const v3, 0x2020086

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 1077
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 1079
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    :cond_8
    const v3, 0x2020087

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 1083
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 1085
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_9
    return-void
.end method

.method private isAppDropDownPopupButtonShowing()Z
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSipOn(I)Z
    .locals 4
    .parameter "h"

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1011
    .local v0, dm:Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .line 1012
    .local v1, sipOn:Z
    if-lez p1, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, p1

    const/16 v3, 0xc8

    if-le v2, v3, :cond_0

    .line 1013
    const/4 v1, 0x1

    .line 1015
    :cond_0
    return v1
.end method

.method private isTitleBarDropDownPopupButtonShowing()Z
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2440
    const/4 v6, 0x0

    .line 2441
    .local v6, width:I
    const/4 v4, 0x0

    .line 2442
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 2443
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2445
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2447
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2448
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2449
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 2450
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 2451
    move v3, v5

    .line 2452
    const/4 v4, 0x0

    .line 2454
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2455
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 2456
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2448
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2458
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private newTitleBarDropDownInstance()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2168
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->newTitleBarItemInstance()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2188
    .local v0, editTitleBarItem:Landroid/widget/FrameLayout;
    return-object v0
.end method

.method private newTitleBarItemInstance()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1555
    .local v0, context:Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1557
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090021

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1562
    .local v1, editTitleBarItem:Landroid/widget/FrameLayout;
    return-object v1
.end method

.method private onAppDropDownPopupButtonClick(Landroid/view/View;)V
    .locals 5
    .parameter "anchor"

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2334
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 2335
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2336
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 2338
    if-eqz p1, :cond_0

    .line 2339
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2340
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2341
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 2347
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, v1}, Lcom/htc/widget/EditWindowLayout;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x4078800000000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 2349
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 2351
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 2352
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2353
    return-void

    .line 2343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onTitleBarDropDownPopupButtonClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;Z)V
    .locals 3
    .parameter "anchor"
    .parameter "menuAdapter"
    .parameter "mMenuOnItemClickListener"
    .parameter "isLandscape"

    .prologue
    .line 2359
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p3}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2361
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 2362
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2363
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 2365
    if-eqz p1, :cond_0

    .line 2366
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2367
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2368
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 2374
    invoke-direct {p0, p2}, Lcom/htc/widget/EditWindowLayout;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    iget v2, p0, Lcom/htc/widget/EditWindowLayout;->mListPopupMaxWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2376
    .local v0, contentWidth:I
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 2377
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 2390
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 2393
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2395
    return-void

    .line 2370
    .end local v0           #contentWidth:I
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private refreshEditTitleBarOptionsMenu(Landroid/view/Menu;)V
    .locals 23
    .parameter "menu"

    .prologue
    .line 1411
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/EditWindowLayout;->mMenu:Landroid/view/Menu;

    .line 1412
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1413
    .local v9, editWindowTitleBarList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/FrameLayout;>;"
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v5

    .line 1415
    .local v5, Length:I
    const/4 v8, 0x0

    .line 1416
    .local v8, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/EditWindowLayout;->mMaxButtonCount:I

    move/from16 v21, v0

    add-int/lit8 v7, v21, -0x1

    .line 1417
    .local v7, buttonCount:I
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1420
    .local v16, menuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 1421
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 1422
    .local v15, menuItem:Landroid/view/MenuItem;
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v14

    .line 1423
    .local v14, isVisible:Z
    if-eqz v14, :cond_0

    .line 1424
    if-lez v7, :cond_1

    move-object/from16 v21, v15

    .line 1426
    check-cast v21, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    .line 1428
    .local v6, always:Z
    if-eqz v6, :cond_1

    .line 1429
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/widget/EditWindowLayout;->getTitleBarItemInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;

    move-result-object v19

    .line 1430
    .local v19, titleBarItem:Landroid/widget/FrameLayout;
    if-eqz v19, :cond_0

    .line 1431
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1432
    add-int/lit8 v7, v7, -0x1

    .line 1420
    .end local v6           #always:Z
    .end local v19           #titleBarItem:Landroid/widget/FrameLayout;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1439
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1445
    .end local v14           #isVisible:Z
    .end local v15           #menuItem:Landroid/view/MenuItem;
    :cond_2
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 1446
    .local v17, remainderItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    if-lez v7, :cond_5

    .line 1447
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 1448
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MenuItem;

    .line 1449
    .restart local v15       #menuItem:Landroid/view/MenuItem;
    if-lez v7, :cond_4

    move-object/from16 v21, v15

    .line 1451
    check-cast v21, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    .line 1453
    .local v12, ifRoom:Z
    if-eqz v12, :cond_4

    .line 1454
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/widget/EditWindowLayout;->getTitleBarItemInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;

    move-result-object v19

    .line 1455
    .restart local v19       #titleBarItem:Landroid/widget/FrameLayout;
    if-eqz v19, :cond_3

    .line 1456
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1462
    .end local v12           #ifRoom:Z
    .end local v19           #titleBarItem:Landroid/widget/FrameLayout;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1466
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #menuItem:Landroid/view/MenuItem;
    :cond_5
    move-object/from16 v17, v16

    .line 1469
    :cond_6
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_d

    .line 1470
    const/4 v13, 0x0

    .line 1471
    .local v13, isOneButtonCase:Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1472
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MenuItem;

    .restart local v15       #menuItem:Landroid/view/MenuItem;
    move-object/from16 v21, v15

    .line 1473
    check-cast v21, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    .line 1475
    .restart local v12       #ifRoom:Z
    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local v15           #menuItem:Landroid/view/MenuItem;
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    .line 1477
    .restart local v6       #always:Z
    if-nez v6, :cond_7

    if-eqz v12, :cond_a

    :cond_7
    const/4 v13, 0x1

    .line 1480
    .end local v6           #always:Z
    .end local v12           #ifRoom:Z
    :cond_8
    :goto_3
    if-eqz v13, :cond_b

    .line 1481
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MenuItem;

    .line 1482
    .restart local v15       #menuItem:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/widget/EditWindowLayout;->getTitleBarItemInstance(Landroid/view/MenuItem;)Landroid/widget/FrameLayout;

    move-result-object v19

    .line 1483
    .restart local v19       #titleBarItem:Landroid/widget/FrameLayout;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;

    .line 1513
    .end local v13           #isOneButtonCase:Z
    .end local v15           #menuItem:Landroid/view/MenuItem;
    .end local v19           #titleBarItem:Landroid/widget/FrameLayout;
    :cond_9
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 1514
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/widget/EditWindowLayout;->addToTitleButtonBar(Ljava/util/LinkedList;)V

    .line 1517
    return-void

    .line 1477
    .restart local v6       #always:Z
    .restart local v12       #ifRoom:Z
    .restart local v13       #isOneButtonCase:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 1492
    .end local v6           #always:Z
    .end local v12           #ifRoom:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/EditWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x20800ee

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1495
    .local v20, topDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/EditWindowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x2040142

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1497
    .local v18, title:Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/EditWindowLayout;->getTitleBarDropDownInstance(Ljava/util/LinkedList;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/widget/FrameLayout;

    move-result-object v19

    .line 1500
    .restart local v19       #titleBarItem:Landroid/widget/FrameLayout;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    .line 1506
    .end local v18           #title:Ljava/lang/String;
    .end local v19           #titleBarItem:Landroid/widget/FrameLayout;
    .end local v20           #topDrawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1504
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;

    goto :goto_5

    .line 1510
    .end local v13           #isOneButtonCase:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;

    goto/16 :goto_4
.end method

.method private setAppDropDownClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 409
    const v2, 0x202008c

    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 410
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 411
    const v2, 0x2020090

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 412
    .local v1, twoLineTitle:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 415
    .end local v1           #twoLineTitle:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private setArrowDownView(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 271
    const v2, 0x2020090

    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 272
    .local v1, twoLineTitle:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 274
    const v2, 0x2020093

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, arrowDownView:Landroid/view/View;
    if-eqz p1, :cond_1

    .line 277
    if-eqz v0, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .end local v0           #arrowDownView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v0       #arrowDownView:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_0

    .line 281
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitleBarDropDownAdapter(Landroid/widget/FrameLayout;Ljava/util/LinkedList;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "editTitleBarItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 1657
    .local p2, sourceItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    new-instance v0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;

    invoke-direct {v0, p0, p2}, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;-><init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;)V

    .line 1659
    .local v0, menuItemAdapter:Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;
    return-object v0
.end method

.method private setTitleString(ILjava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "mainTitleName"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method private setTitleStringId(II)V
    .locals 1
    .parameter "resId"
    .parameter "stringId"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_0
    return-void
.end method

.method private showTwoLineTitle()V
    .locals 2

    .prologue
    .line 96
    const v1, 0x2020090

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .local v0, twoLineTitle:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method

.method private updateDropDownListPosition()V
    .locals 2

    .prologue
    .line 2192
    const/4 v0, 0x0

    .line 2193
    .local v0, isPerformClick:Z
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2194
    const/4 v0, 0x1

    .line 2201
    :cond_0
    if-eqz v0, :cond_1

    .line 2204
    :cond_1
    return-void
.end method


# virtual methods
.method public addViewToBody(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1161
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1162
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/widget/EditWindowLayout;->addViewToBody(Landroid/view/View;)V

    .line 1163
    return-void
.end method

.method public addViewToBody(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1137
    if-nez p1, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const v1, 0x202000c

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1140
    .local v0, contentView:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method adjustBackground(IZ)V
    .locals 7
    .parameter "h"
    .parameter "isBodyBlack"

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->isSipOn(I)Z

    move-result v5

    .line 1215
    .local v5, sipOn:Z
    const v6, 0x2020003

    invoke-virtual {p0, v6}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1216
    const v6, 0x202000c

    invoke-virtual {p0, v6}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1217
    .local v1, editingWindowContent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1218
    if-eqz p2, :cond_1

    const v4, 0x20802ed

    .line 1219
    .local v4, resWithSip:I
    :goto_0
    if-eqz p2, :cond_2

    const v3, 0x20802e6

    .line 1220
    .local v3, res:I
    :goto_1
    if-eqz v5, :cond_3

    .end local v4           #resWithSip:I
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1238
    .end local v1           #editingWindowContent:Landroid/view/ViewGroup;
    .end local v3           #res:I
    :cond_0
    :goto_3
    return-void

    .line 1218
    .restart local v1       #editingWindowContent:Landroid/view/ViewGroup;
    :cond_1
    const v4, 0x20802ec

    goto :goto_0

    .line 1219
    .restart local v4       #resWithSip:I
    :cond_2
    const v3, 0x20802e4

    goto :goto_1

    .restart local v3       #res:I
    :cond_3
    move v4, v3

    .line 1220
    goto :goto_2

    .line 1224
    .end local v1           #editingWindowContent:Landroid/view/ViewGroup;
    .end local v3           #res:I
    .end local v4           #resWithSip:I
    :cond_4
    const v6, 0x2020083

    invoke-virtual {p0, v6}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1225
    .local v0, editingFooterButtonBar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1228
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 1229
    if-eqz v5, :cond_5

    .line 1230
    const/16 v6, 0x50

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1233
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 1232
    :cond_5
    const/16 v6, 0x30

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4
.end method

.method public adjustTitleSkin()V
    .locals 2

    .prologue
    .line 1170
    const v1, 0x2020009

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1171
    .local v0, editingTitle:Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1177
    :cond_0
    const v1, 0x20802f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method adjustViewBackgroundResource(Landroid/view/View;ZII)V
    .locals 2
    .parameter "view"
    .parameter "sipOn"
    .parameter "resWithSip"
    .parameter "res"

    .prologue
    const/4 v1, 0x0

    .line 1196
    if-eqz p1, :cond_0

    .line 1198
    if-eqz p2, :cond_1

    .line 1199
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1200
    instance-of v0, p1, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 1201
    const/16 v0, 0x9

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1206
    instance-of v0, p1, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public disableSizeChangedFullScreen()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    .line 503
    return-void
.end method

.method public dismissAppDropDownWhenItemClicked()V
    .locals 1

    .prologue
    .line 2483
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isAppDropDownPopupButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 2486
    :cond_0
    return-void
.end method

.method public enableButton(IZ)V
    .locals 2
    .parameter "buttonId"
    .parameter "enable"

    .prologue
    .line 772
    const v1, 0x2020008

    if-ne p1, v1, :cond_0

    .line 773
    const p1, 0x2020005

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 775
    .local v0, btn:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 776
    instance-of v1, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_1

    .line 777
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .end local v0           #btn:Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 780
    :cond_1
    return-void
.end method

.method public enableSizeChangedFullScreen()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isSizeChangedFullScreen:Z

    .line 495
    return-void
.end method

.method public getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;"
        }
    .end annotation

    .prologue
    .line 1769
    .local p1, itemNameLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;-><init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;"
        }
    .end annotation

    .prologue
    .line 1779
    .local p1, itemNameLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p2, enableLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;-><init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public getEditingFooterHeight()I
    .locals 5

    .prologue
    .line 554
    const/4 v3, 0x0

    .line 555
    .local v3, result:I
    const v4, 0x2020082

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 556
    .local v2, editingFooterShadow:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 558
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 559
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 572
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v3

    .line 563
    :cond_1
    const v4, 0x2020083

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 564
    .local v1, editingFooterButtonBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 566
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0
.end method

.method public initEditTitleBarStyle()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 455
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v3, :cond_0

    .line 456
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Not support EditinWindow at this project which is not a tablet."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 462
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {v3, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 463
    new-instance v3, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {v3, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 464
    iget-object v3, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 467
    check-cast v0, Landroid/app/Activity;

    .line 468
    .local v0, act:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->hideActionBar()V

    .line 469
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 470
    .local v2, theWindow:Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 471
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x6700

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 475
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->setWillNotDraw(Z)V

    .line 476
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 2233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 2235
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2509
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2511
    iput-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2514
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2516
    iput-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2518
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2244
    iget-boolean v4, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    if-eqz v4, :cond_0

    .line 2245
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->adjustDropDownLocationAfterRotate()V

    .line 2246
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->adjustEditWindowSize()V

    .line 2247
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->adjustAppDropDownPosition()V

    .line 2248
    iput-boolean v5, p0, Lcom/htc/widget/EditWindowLayout;->isNeedToUpdate:Z

    .line 2250
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/widget/EditWindowLayout;->adjustWindowPadding(I)V

    .line 2253
    iget-boolean v4, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightTextSet:Z

    if-eqz v4, :cond_2

    .line 2254
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/widget/EditWindowLayout;->showProgressBar(Z)V

    .line 2255
    const v4, 0x2020009

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2256
    .local v2, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 2257
    const v4, 0x2020095

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2259
    .local v1, editWindowTitleButtonBar:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 2260
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2266
    .end local v1           #editWindowTitleButtonBar:Landroid/view/ViewGroup;
    .end local v2           #editingTitle1:Landroid/view/ViewGroup;
    :cond_2
    const v4, 0x2020005

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2267
    .local v0, btn:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2268
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2269
    const v4, 0x2020087

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2270
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 2271
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2276
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2277
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 2281
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2282
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->adjustTitleSkin()V

    .line 2283
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->initAppDropDownList()V

    .line 2284
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2403
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isAppDropDownPopupButtonShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2404
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    .line 2405
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2406
    iput-object v2, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2419
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->isTitleBarDropDownPopupButtonShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2420
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 2421
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2422
    iput-object v2, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownVTO:Landroid/view/ViewTreeObserver;

    .line 2435
    :cond_1
    :goto_1
    return-void

    .line 2410
    :cond_2
    const v1, 0x202008c

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2411
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2412
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->dismissAppDropDownPopupButton()V

    goto :goto_0

    .line 2415
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_0

    .line 2426
    .end local v0           #anchor:Landroid/view/View;
    :cond_4
    const v1, 0x2020096

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2427
    .restart local v0       #anchor:Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2428
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->dismissTitleBarDropDownPopupButton()V

    goto :goto_1

    .line 2431
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mTitleBarDropDownListPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2527
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2535
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 518
    invoke-direct {p0, p2}, Lcom/htc/widget/EditWindowLayout;->adjustFooterButtons(I)V

    .line 520
    iget-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isBodyBlackBackground:Z

    invoke-virtual {p0, p2, v0}, Lcom/htc/widget/EditWindowLayout;->adjustBackground(IZ)V

    .line 521
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->adjustEditWindowSize()V

    .line 522
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 523
    return-void
.end method

.method public refreshEditTitleBar(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1538
    iget-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    if-eqz v1, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1540
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1542
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshEditTitleBarOptionsMenu(Landroid/view/Menu;)V

    .line 1543
    return-void
.end method

.method public refreshOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z

    .line 1528
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshEditTitleBarOptionsMenu(Landroid/view/Menu;)V

    .line 1529
    return-void
.end method

.method public setAppDropDownAdapter(Landroid/widget/BaseAdapter;)V
    .locals 3
    .parameter "baseAdapter"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;

    .line 243
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/widget/EditWindowLayout;->setArrowDownView(Z)V

    .line 244
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownClickable(Z)V

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 243
    goto :goto_0

    :cond_1
    move v1, v2

    .line 244
    goto :goto_1
.end method

.method public setAppDropDownAdapter(Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 222
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Landroid/widget/BaseAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setAppDropDownEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 258
    if-eqz p1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/EditWindowLayout;->setArrowDownView(Z)V

    .line 266
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownClickable(Z)V

    .line 268
    return-void

    .line 264
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setArrowDownView(Z)V

    goto :goto_0
.end method

.method public setAppDropDownOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "onClickListener"

    .prologue
    .line 399
    const v2, 0x202008c

    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 400
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 401
    const v2, 0x2020090

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 402
    .local v1, twoLineTitle:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .end local v1           #twoLineTitle:Landroid/widget/LinearLayout;
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownClickable(Z)V

    .line 406
    return-void

    .line 405
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAppDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 3
    .parameter "onItemClickListener"

    .prologue
    .line 432
    const v2, 0x202008c

    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 433
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 434
    const v2, 0x2020090

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 435
    .local v1, twoLineTitle:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 436
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 438
    .end local v1           #twoLineTitle:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public setBodyDarkBackground()V
    .locals 2

    .prologue
    .line 1184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout;->isBodyBlackBackground:Z

    .line 1185
    const v1, 0x202000c

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1186
    .local v0, editingWindowContent:Landroid/widget/FrameLayout;
    const v1, 0x2020003

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1187
    const v1, 0x20802e6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1191
    :goto_0
    return-void

    .line 1189
    :cond_0
    const v1, 0x20802ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setButtonLabel(II)V
    .locals 2
    .parameter "buttonId"
    .parameter "stringId"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 709
    return-void
.end method

.method public setButtonLabel(ILjava/lang/String;)V
    .locals 2
    .parameter "buttonId"
    .parameter "str"

    .prologue
    .line 725
    const v1, 0x2020008

    if-ne p1, v1, :cond_0

    .line 726
    const p1, 0x2020005

    .line 727
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 728
    .local v0, btn:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 729
    instance-of v1, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_1

    .line 730
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .end local v0           #btn:Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcIconButton;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :cond_1
    return-void
.end method

.method public setButtonListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "buttonId"
    .parameter "l"

    .prologue
    .line 749
    const v1, 0x2020008

    if-ne p1, v1, :cond_0

    .line 750
    const p1, 0x2020005

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, btn:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 753
    instance-of v1, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_1

    .line 754
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .end local v0           #btn:Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    :cond_1
    return-void
.end method

.method public setCenterButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2319
    const v0, 0x2020005

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 2320
    return-void
.end method

.method public setCenterButtonLabel(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 638
    const v0, 0x2020005

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(II)V

    .line 639
    return-void
.end method

.method public setCenterButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 629
    const v0, 0x2020005

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 630
    return-void
.end method

.method public setCenterButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 2295
    const v0, 0x2020005

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 2296
    return-void
.end method

.method public setCenterButton_1Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2327
    const v0, 0x2020006

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 2328
    return-void
.end method

.method public setCenterButton_1Label(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 651
    const v0, 0x2020006

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(II)V

    .line 652
    return-void
.end method

.method public setCenterButton_1Label(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 664
    const v0, 0x2020006

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 665
    return-void
.end method

.method public setCenterButton_1Listener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 2303
    const v0, 0x2020006

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 2304
    return-void
.end method

.method public setEditWindowHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 506
    iput p1, p0, Lcom/htc/widget/EditWindowLayout;->mEditWindowHeight:I

    .line 507
    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2307
    const v0, 0x2020004

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 2308
    return-void
.end method

.method public setLeftButtonLabel(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 616
    const v0, 0x2020004

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(II)V

    .line 617
    return-void
.end method

.method public setLeftButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 607
    const v0, 0x2020004

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 608
    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 2287
    const v0, 0x2020004

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 2288
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->hideOrginalTitle()V

    .line 161
    const v0, 0x2020091

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleStringId(II)V

    .line 162
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->showTwoLineTitle()V

    .line 163
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitleName"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->hideOrginalTitle()V

    .line 134
    const v0, 0x2020091

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleString(ILjava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->showTwoLineTitle()V

    .line 136
    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2311
    const v0, 0x2020007

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 2312
    return-void
.end method

.method public setRightButtonLabel(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 594
    const v0, 0x2020007

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(II)V

    .line 595
    return-void
.end method

.method public setRightButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 585
    const v0, 0x2020007

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 586
    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 2291
    const v0, 0x2020007

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 2292
    return-void
.end method

.method public setSoloButtonLabel(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    .line 691
    return-void
.end method

.method public setSoloButtonLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setSubTitle(I)V
    .locals 3
    .parameter "stringId"

    .prologue
    const v2, 0x2020092

    .line 171
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->hideOrginalTitle()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, subTitle:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleStringId(II)V

    .line 178
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->showTwoLineTitle()V

    .line 179
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "subTitleName"

    .prologue
    const v2, 0x2020092

    .line 144
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->hideOrginalTitle()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, subTitle:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleString(ILjava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->showTwoLineTitle()V

    .line 152
    return-void
.end method

.method public setTitleLabel(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setMainTitle(I)V

    .line 206
    return-void
.end method

.method public setTitleLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setMainTitle(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setTitleLable(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setTitleRightImage(Landroid/view/View$OnClickListener;IZ)V
    .locals 6
    .parameter "ocl"
    .parameter "imageId"
    .parameter "isVisible"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1251
    iput-boolean p3, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    .line 1252
    const v3, 0x2020009

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1253
    .local v1, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1254
    const v3, 0x202008c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1255
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 1256
    const v3, 0x202008f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1257
    .local v2, titleRightImage:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 1258
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1259
    if-eqz p1, :cond_1

    .line 1260
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1266
    :goto_0
    if-eqz p3, :cond_2

    .line 1267
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1268
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1276
    .end local v0           #appDropDown:Landroid/widget/FrameLayout;
    .end local v2           #titleRightImage:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1263
    .restart local v0       #appDropDown:Landroid/widget/FrameLayout;
    .restart local v2       #titleRightImage:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1270
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1271
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTitleRightImage(Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "ocl"
    .parameter "image"
    .parameter "isVisible"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1287
    iput-boolean p3, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightImageSet:Z

    .line 1288
    const v3, 0x2020009

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1289
    .local v1, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1290
    const v3, 0x202008c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1291
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 1292
    const v3, 0x202008f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1293
    .local v2, titleRightImage:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 1294
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1295
    if-eqz p1, :cond_1

    .line 1296
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1302
    :goto_0
    if-eqz p3, :cond_2

    .line 1303
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1312
    .end local v0           #appDropDown:Landroid/widget/FrameLayout;
    .end local v2           #titleRightImage:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1299
    .restart local v0       #appDropDown:Landroid/widget/FrameLayout;
    .restart local v2       #titleRightImage:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1306
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1307
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTitleRightText(Landroid/view/View$OnClickListener;IZ)V
    .locals 2
    .parameter "ocl"
    .parameter "stringId"
    .parameter "isVisible"

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, string:Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lcom/htc/widget/EditWindowLayout;->setTitleRightText(Landroid/view/View$OnClickListener;Ljava/lang/String;Z)V

    .line 1325
    return-void
.end method

.method public setTitleRightText(Landroid/view/View$OnClickListener;Ljava/lang/String;Z)V
    .locals 6
    .parameter "ocl"
    .parameter "string"
    .parameter "isVisible"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1340
    iput-boolean p3, p0, Lcom/htc/widget/EditWindowLayout;->isTitleRightTextSet:Z

    .line 1341
    const v3, 0x2020009

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1342
    .local v1, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1343
    const v3, 0x202008c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1344
    .local v0, appDropDown:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 1345
    const v3, 0x202008e

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1346
    .local v2, titleRightText:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1347
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    if-eqz p1, :cond_1

    .line 1349
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1355
    :goto_0
    if-eqz p3, :cond_2

    .line 1356
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1357
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    .end local v0           #appDropDown:Landroid/widget/FrameLayout;
    .end local v2           #titleRightText:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-void

    .line 1352
    .restart local v0       #appDropDown:Landroid/widget/FrameLayout;
    .restart local v2       #titleRightText:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 1359
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1360
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setupBackButton(Landroid/view/View$OnClickListener;Z)Z
    .locals 6
    .parameter "ocl"
    .parameter "isEnabled"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1375
    const v4, 0x2020009

    invoke-virtual {p0, v4}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1376
    .local v1, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 1377
    const v4, 0x2020089

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1379
    .local v0, editingBackButton:Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    .line 1380
    if-eqz p1, :cond_0

    .line 1381
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1383
    :cond_0
    if-eqz p2, :cond_2

    .line 1384
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1385
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1386
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1397
    .end local v0           #editingBackButton:Landroid/view/ViewGroup;
    :goto_0
    return v2

    .line 1388
    .restart local v0       #editingBackButton:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 1389
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1390
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1394
    goto :goto_0

    .end local v0           #editingBackButton:Landroid/view/ViewGroup;
    :cond_5
    move v2, v3

    .line 1397
    goto :goto_0
.end method

.method public setupFooterButtons(I)V
    .locals 9
    .parameter "button_number"

    .prologue
    const v8, 0x2020007

    const v7, 0x2020005

    const v6, 0x2020004

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 792
    const v3, 0x2020003

    invoke-virtual {p0, v3}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 793
    .local v1, editingFooterBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 794
    invoke-direct {p0}, Lcom/htc/widget/EditWindowLayout;->initialFooterButtons()V

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, btn:Lcom/htc/widget/HtcIconButton;
    packed-switch p1, :pswitch_data_0

    .line 898
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 900
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 901
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 904
    :cond_1
    const v3, 0x2020087

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 906
    .local v2, imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 908
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 913
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 914
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 918
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/EditWindowLayout;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/EditWindowLayout;->adjustFooterButtons(I)V

    .line 920
    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_4
    return-void

    .line 798
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    :pswitch_1
    const/4 v2, 0x0

    .line 799
    .restart local v2       #imageView:Landroid/widget/ImageView;
    const v3, 0x2020084

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 801
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 803
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 808
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 809
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 812
    :cond_6
    const v3, 0x2020088

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 814
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 816
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 820
    .end local v2           #imageView:Landroid/widget/ImageView;
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 822
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 823
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 826
    :cond_7
    const v3, 0x2020085

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 828
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 830
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    :cond_8
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 836
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 837
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 840
    :cond_9
    const v3, 0x2020086

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 842
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 844
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    :cond_a
    const v3, 0x2020006

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 849
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_b

    .line 850
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 853
    :cond_b
    const v3, 0x2020087

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 855
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 857
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    :cond_c
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 862
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 863
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 866
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_d
    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 868
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_e

    .line 869
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 872
    :cond_e
    const v3, 0x2020085

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 874
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_f

    .line 876
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    :cond_f
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 881
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 882
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 885
    :cond_10
    const v3, 0x2020087

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 887
    .restart local v2       #imageView:Landroid/widget/ImageView;
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 889
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    :cond_11
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 894
    .restart local v0       #btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 895
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showProgressBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1097
    const v2, 0x2020009

    invoke-virtual {p0, v2}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1098
    .local v0, editingTitle1:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1099
    const v2, 0x202008d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1101
    .local v1, p:Landroid/widget/ProgressBar;
    if-eqz v1, :cond_0

    .line 1102
    if-eqz p1, :cond_1

    .line 1103
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1108
    .end local v1           #p:Landroid/widget/ProgressBar;
    :cond_0
    :goto_0
    return-void

    .line 1105
    .restart local v1       #p:Landroid/widget/ProgressBar;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightImageView(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1121
    const v1, 0x202008f

    invoke-virtual {p0, v1}, Lcom/htc/widget/EditWindowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1122
    .local v0, p:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1123
    if-eqz p1, :cond_1

    .line 1124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
