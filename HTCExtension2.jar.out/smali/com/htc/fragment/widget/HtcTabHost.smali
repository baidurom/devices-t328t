.class public Lcom/htc/fragment/widget/HtcTabHost;
.super Landroid/widget/FrameLayout;
.source "HtcTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$LabelIndicatorStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;,
        Lcom/htc/fragment/widget/HtcTabHost$TabSpec;,
        Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;,
        Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcTabHost"


# instance fields
.field private mAddedtab:I

.field protected mCurrentTab:I

.field mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mOnTabChangeListener:Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;

.field private mPreviousTab:I

.field mPreviousTabTag:Ljava/lang/String;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/fragment/widget/HtcTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/htc/fragment/widget/HtcTabFragment;

    invoke-direct {v0}, Lcom/htc/fragment/widget/HtcTabFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    .line 63
    iput v2, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    .line 64
    iput v2, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTab:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    .line 82
    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabHost;->initTabHost()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    .line 57
    new-instance v1, Lcom/htc/fragment/widget/HtcTabFragment;

    invoke-direct {v1}, Lcom/htc/fragment/widget/HtcTabFragment;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    .line 63
    iput v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    .line 64
    iput v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTab:I

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 78
    iput v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    const v2, 0x1010083

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabLayoutId:I

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabLayoutId:I

    if-nez v1, :cond_0

    .line 99
    const v1, 0x109009e

    iput v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabLayoutId:I

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabHost;->initTabHost()V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/widget/HtcTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/HtcTabHost;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/widget/HtcTabFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/HtcTabHost;)Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/HtcTabHost;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabLayoutId:I

    return v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setFocusableInTouchMode(Z)V

    .line 109
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setDescendantFocusability(I)V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 113
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    .line 251
    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_1
    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/fragment/widget/HtcTabWidget;->setTabView(Landroid/view/View;I)Z

    .line 267
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/HtcTabWidget;->addView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public addTabWithViewTag(Landroid/view/View;)V
    .locals 7
    .parameter "vw"

    .prologue
    .line 503
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 504
    .local v3, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 505
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, child:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 508
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 511
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 512
    const-string v4, "HtcTabHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Categories: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v5, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    invoke-virtual {v4, v0, v5}, Lcom/htc/fragment/widget/HtcTabWidget;->setTabView(Landroid/view/View;I)Z

    .line 517
    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-virtual {v4, v0}, Lcom/htc/fragment/widget/HtcTabWidget;->addView(Landroid/view/View;)V

    .line 518
    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v5, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/HtcTabHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    iget v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mAddedtab:I

    .line 504
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 523
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    goto :goto_1

    .line 528
    .end local v0           #child:Landroid/view/View;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/HtcTabWidget;->removeAllViews()V

    .line 283
    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabHost;->initTabHost()V

    .line 284
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 285
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->requestLayout()V

    .line 287
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->invalidate()V

    .line 288
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 376
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 384
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/HtcTabHost;->playSoundEffect(I)V

    .line 385
    const/4 v0, 0x1

    .line 387
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 400
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/fragment/widget/HtcTabWidget;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 124
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Lcom/htc/fragment/widget/HtcTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 204
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 205
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 217
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 218
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 231
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 238
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, -0x1

    .line 408
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/HtcTabFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/HtcTabFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/HtcTabFragment;->isRemoving()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 422
    iget v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    iput v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTab:I

    .line 423
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTabTag:Ljava/lang/String;

    .line 427
    iget v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    if-eq v3, v6, :cond_2

    .line 428
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;
    invoke-static {v3}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;->tabClosed()V

    .line 431
    :cond_2
    iput p1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    .line 433
    iget v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTab:I

    iget v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    if-eq v3, v4, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTabTag:Ljava/lang/String;

    .line 441
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    .line 445
    .local v2, spec:Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/HtcTabWidget;->focusCurrentTab(I)V

    .line 448
    #getter for: Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 450
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 451
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_3
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/HtcTabWidget;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 462
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 466
    :cond_4
    const/4 v1, 0x0

    .local v1, previouseTab:Landroid/app/Fragment;
    const/4 v0, 0x0

    .line 468
    .local v0, currentTab:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3}, Lcom/htc/fragment/app/LocalFragmentManager;->beginTransaction()V

    .line 469
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTabTag:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 470
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mPreviousTabTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_5

    .line 472
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->hideFragment(Landroid/app/Fragment;)V

    .line 474
    :cond_5
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_6

    .line 476
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 477
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->showFragment(Landroid/app/Fragment;)V

    .line 481
    :cond_6
    if-eqz v1, :cond_7

    .line 482
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    .line 484
    :cond_7
    if-eqz v0, :cond_8

    .line 485
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    .line 487
    :cond_8
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3}, Lcom/htc/fragment/app/LocalFragmentManager;->commit()V

    .line 488
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/HtcTabFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabHost;->invokeOnTabChangeListener()V

    goto/16 :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTabTag:Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    .line 353
    :cond_0
    return-void

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCustomTabWidget(Landroid/view/View;)V
    .locals 2
    .parameter "vw"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getTabWidget()Lcom/htc/fragment/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    .line 542
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    .line 544
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    .line 548
    :cond_0
    return-void
.end method

.method public setCustomTabWidget(Landroid/view/View;I)V
    .locals 2
    .parameter "vw"
    .parameter "defaultTab"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->getTabWidget()Lcom/htc/fragment/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    .line 563
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    .line 565
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 566
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    .line 572
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method setHtcTabFragment(Lcom/htc/fragment/widget/HtcTabFragment;)V
    .locals 0
    .parameter "tabFragment"

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mHtcTabFragment:Lcom/htc/fragment/widget/HtcTabFragment;

    .line 1055
    return-void
.end method

.method setOnTabChangedListener(Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/HtcTabHost$OnTabChangeListener;

    .line 581
    return-void
.end method

.method setup()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x202010f

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/HtcTabWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    .line 142
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'com.htc.R.id.htc_tabs_fragment\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/HtcTabHost$1;-><init>(Lcom/htc/fragment/widget/HtcTabHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 167
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabWidget:Lcom/htc/fragment/widget/HtcTabWidget;

    new-instance v1, Lcom/htc/fragment/widget/HtcTabHost$2;

    invoke-direct {v1, p0}, Lcom/htc/fragment/widget/HtcTabHost$2;-><init>(Lcom/htc/fragment/widget/HtcTabHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->setTabSelectionListener(Lcom/htc/fragment/widget/HtcTabWidget$OnTabSelectionChanged;)V

    .line 176
    const v0, 0x202010e

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 177
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'com.htc.R.id.htc_tabcontent_fragment\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    return-void
.end method

.method setup(Lcom/htc/fragment/app/LocalFragmentManager;)V
    .locals 0
    .parameter "localFragmentManager"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabHost;->setup()V

    .line 194
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 195
    return-void
.end method
