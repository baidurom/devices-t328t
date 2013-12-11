.class public Lcom/htc/widget/HtcTabHost1;
.super Landroid/widget/FrameLayout;
.source "HtcTabHost1.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTabHost1$IntentContentStrategy;,
        Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;,
        Lcom/htc/widget/HtcTabHost1$ViewIdContentStrategy;,
        Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost1$LabelAndIconIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost1$ContentStrategy;,
        Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost1$TabSpec;,
        Lcom/htc/widget/HtcTabHost1$TabContentFactory;,
        Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcTabHost1"


# instance fields
.field private mAddedtab:I

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcTabHost1$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/htc/widget/HtcTabWidget1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    .line 60
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost1;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    .line 73
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost1;->initTabHost()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    .line 60
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost1;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    .line 78
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost1;->initTabHost()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabHost1;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcTabHost1;)Lcom/htc/widget/HtcTabWidget1;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    return-object v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->setFocusableInTouchMode(Z)V

    .line 83
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->setDescendantFocusability(I)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    .line 87
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/htc/widget/HtcTabHost1$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 226
    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 238
    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 247
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    .line 249
    :cond_3
    return-void
.end method

.method public addTabWithViewTag(Landroid/view/View;)V
    .locals 7
    .parameter "vw"

    .prologue
    .line 429
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 430
    .local v3, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 431
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, child:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 437
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 438
    const-string v4, "HtcTabHost1"

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

    .line 442
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    iget v5, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    invoke-virtual {v4, v0, v5}, Lcom/htc/widget/HtcTabWidget1;->setTabView(Landroid/view/View;I)Z

    .line 443
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcTabWidget1;->addView(Landroid/view/View;)V

    .line 444
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    iget v5, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTabHost1;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost1$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcTabHost1$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/HtcTabHost1$TabSpec;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 448
    iget v4, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/HtcTabHost1;->mAddedtab:I

    .line 430
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 449
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 450
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->addTabWithViewTag(Landroid/view/View;)V

    goto :goto_1

    .line 454
    .end local v0           #child:Landroid/view/View;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabWidget1;->removeAllViews()V

    .line 261
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost1;->initTabHost()V

    .line 262
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->requestLayout()V

    .line 265
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->invalidate()V

    .line 266
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 349
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    iget v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 357
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost1;->playSoundEffect(I)V

    .line 358
    const/4 v0, 0x1

    .line 360
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 373
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost1$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabHost1$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    iget v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/HtcTabWidget1;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 98
    new-instance v0, Lcom/htc/widget/HtcTabHost1$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/HtcTabHost1$TabSpec;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/String;Lcom/htc/widget/HtcTabHost1$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 180
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 181
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 193
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 194
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    iget v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 214
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 380
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 391
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost1$TabSpec;

    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost1$ContentStrategy;->tabClosed()V

    .line 394
    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    .line 395
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost1$TabSpec;

    .line 399
    .local v0, spec:Lcom/htc/widget/HtcTabHost1$TabSpec;
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    iget v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget1;->focusCurrentTab(I)V

    .line 402
    #getter for: Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/HtcTabHost1$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost1$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    .line 404
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabWidget1;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 416
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 420
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost1;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost1$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost1$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    .line 326
    :cond_0
    return-void

    .line 320
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCustomTabWidget(Landroid/view/View;)V
    .locals 2
    .parameter "vw"

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->getTabWidget()Lcom/htc/widget/HtcTabWidget1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget1;->addCustomView(Landroid/view/View;)V

    .line 464
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost1;->addTabWithViewTag(Landroid/view/View;)V

    .line 466
    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public setCustomTabWidget(Landroid/view/View;I)V
    .locals 2
    .parameter "vw"
    .parameter "defaultTab"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->getTabWidget()Lcom/htc/widget/HtcTabWidget1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget1;->addCustomView(Landroid/view/View;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost1;->addTabWithViewTag(Landroid/view/View;)V

    .line 487
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 488
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 490
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcTabHost1;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost1$OnTabChangeListener;

    .line 507
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x202010c

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabWidget1;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    .line 118
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'com.htc.R.id.htc_tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcTabHost1$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcTabHost1$1;-><init>(Lcom/htc/widget/HtcTabHost1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 143
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;

    new-instance v1, Lcom/htc/widget/HtcTabHost1$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabHost1$2;-><init>(Lcom/htc/widget/HtcTabHost1;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->setTabSelectionListener(Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;)V

    .line 152
    const v0, 0x202010b

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'com.htc.R.id.htc_tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost1;->setup()V

    .line 169
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 170
    return-void
.end method
