.class public Lcom/htc/widget/TabSwitchHost;
.super Landroid/widget/FrameLayout;
.source "TabSwitchHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/widget/TabSwitchHost$ContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;,
        Lcom/htc/widget/TabSwitchHost$TabSpec;,
        Lcom/htc/widget/TabSwitchHost$TabContentFactory;,
        Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;,
        Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;,
        Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ENABLE_DRAWINGCATCH:Z = true

.field public static final MODE_CENTERVIEW:I = 0x1

.field public static final MODE_WIDGET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TabSwitchHost"


# instance fields
.field private mAddNewViewflag:Z

.field private mContext:Landroid/content/Context;

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mFocusMode:I

.field private mIsChangeTabAnim:Z

.field private mIsJumpTab:Z

.field private mIsShowWidget:Z

.field private mIsTouchMove:Z

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

.field private mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

.field private mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 68
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    .line 73
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 77
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    .line 80
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    .line 82
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    .line 92
    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 93
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    .line 146
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 68
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    .line 73
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 77
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    .line 80
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    .line 82
    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    .line 92
    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 93
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    .line 151
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    .line 153
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->onChangeTab()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/widget/TabSwitchHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabChangeListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/TabSwitchHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/widget/TabSwitchHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/TabSwitchHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/TabSwitchHost;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setFocusableInTouchMode(Z)V

    .line 157
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setDescendantFocusability(I)V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    .line 161
    return-void
.end method

.method private invokeOnTabBeforeChangeListener(Ljava/lang/String;)V
    .locals 1
    .parameter "nextID"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    instance-of v0, v0, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;->onTabBeforeChange(Ljava/lang/String;)V

    .line 866
    :cond_0
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 872
    :cond_0
    return-void
.end method

.method private onChangeTab()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 776
    const-string v3, "TabSwitchHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeTab------------- , mCurrentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabBeforeChangeListener(Ljava/lang/String;)V

    .line 779
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 783
    .local v2, spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/TabSwitchWidget;->setCurrentTab(I)V

    .line 785
    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    .line 787
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 788
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 795
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x20a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 798
    .local v1, slide_alpha:Landroid/view/animation/Animation;
    new-instance v3, Lcom/htc/widget/TabSwitchHost$6;

    invoke-direct {v3, p0}, Lcom/htc/widget/TabSwitchHost$6;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 807
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 808
    .local v0, anim_set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 810
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    return-void
.end method


# virtual methods
.method public SetResumeCurrentView(Z)V
    .locals 0
    .parameter "AddNew"

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    .line 677
    return-void
.end method

.method public addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 392
    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$800(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, tabIndicator:Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 403
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1, v0}, Lcom/htc/widget/TabSwitchWidget;->addView(Landroid/view/View;)V

    .line 405
    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 406
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 408
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchWidget;->removeAllViews()V

    .line 481
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    .line 482
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 483
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 484
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->requestLayout()V

    .line 485
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->invalidate()V

    .line 486
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->checkFocusMode()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 608
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 610
    .local v0, handled:Z
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 614
    :cond_0
    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 615
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    .line 616
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    .line 617
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1, p1}, Lcom/htc/widget/TabSwitchWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 654
    .end local v0           #handled:Z
    :cond_1
    :goto_0
    return v0

    .line 624
    .restart local v0       #handled:Z
    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->isSelectTab()Z

    move-result v3

    if-nez v3, :cond_4

    .line 630
    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 631
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 632
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    .line 633
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 636
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    .line 642
    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    .line 643
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    .line 644
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    move v0, v1

    .line 645
    goto :goto_0

    .line 648
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_6
    move v0, v2

    .line 652
    goto/16 :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 665
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/TabSwitchWidget;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    return-object v0
.end method

.method public getWidgetVisiable()Z
    .locals 1

    .prologue
    .line 1428
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    return v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 168
    new-instance v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Lcom/htc/widget/TabSwitchHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 347
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 348
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 360
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 361
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 187
    .local v1, screenheight:I
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 188
    .local v2, screenwidth:I
    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchWidget;->getWidgetHeight()I

    move-result v3

    .line 189
    .local v3, widgetheight:I
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    if-nez v4, :cond_0

    .line 190
    const/4 v3, 0x0

    .line 191
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v3

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    sub-int v5, v1, v3

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/widget/TabSwitchHost;->measureChild(Landroid/view/View;II)V

    .line 197
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 206
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 374
    if-nez p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    .line 383
    :cond_1
    return-void
.end method

.method public removeTab(I)V
    .locals 4
    .parameter "tabIndex"

    .prologue
    const/4 v2, 0x1

    .line 420
    if-lt p1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 421
    :cond_0
    const-string v1, "TabSwitchHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Table number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is wrong. Cannot delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 426
    const-string v1, "TabSwitchHost"

    const-string v2, "Only one tab remains. Cannot delete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_2
    add-int/lit8 v0, p1, -0x1

    .line 432
    .local v0, deleteIndex:I
    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ne v1, v0, :cond_3

    .line 433
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabClosed()V

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 436
    :cond_3
    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-lt v1, v0, :cond_4

    .line 437
    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 439
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabRemoved()V

    .line 440
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->doDelete()V

    .line 441
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/widget/TabSwitchWidget;->removeViewIndex(II)V

    goto :goto_0
.end method

.method public removeTab(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 457
    :cond_0
    const-string v2, "TabSwitchHost"

    const-string v3, "Invalid tag. Can not delete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    .line 462
    const-string v2, "TabSwitchHost"

    const-string v3, "Table number is one. Can not delete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 468
    .local v1, spc:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchHost;->removeTab(I)V

    goto :goto_0

    .line 466
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setChangeTabAnimationState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 685
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    .line 686
    return-void
.end method

.method public setCountText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "index"
    .parameter "text"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setCountText(ILjava/lang/CharSequence;)V

    .line 850
    return-void
.end method

.method public setCountVisibility(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setCountVisibility(IZ)V

    .line 841
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, -0x1

    .line 693
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    if-nez v3, :cond_2

    .line 698
    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-eq p1, v3, :cond_0

    .line 704
    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-eq v3, v6, :cond_3

    .line 705
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabClosed()V

    .line 708
    :cond_3
    iput p1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    .line 710
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    if-nez v3, :cond_5

    .line 711
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabBeforeChangeListener(Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 717
    .local v2, spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/TabSwitchWidget;->setCurrentTab(I)V

    .line 720
    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    .line 722
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 723
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 739
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabChangeListener()V

    goto :goto_0

    .line 741
    .end local v2           #spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 744
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    if-nez v3, :cond_6

    .line 746
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x20a0002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 753
    .local v1, slide_alpha:Landroid/view/animation/Animation;
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 754
    .local v0, anim_set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 757
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 759
    new-instance v3, Lcom/htc/widget/TabSwitchHost$5;

    invoke-direct {v3, p0}, Lcom/htc/widget/TabSwitchHost$5;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 750
    .end local v0           #anim_set:Landroid/view/animation/AnimationSet;
    .end local v1           #slide_alpha:Landroid/view/animation/Animation;
    :cond_6
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x20a0003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .restart local v1       #slide_alpha:Landroid/view/animation/Animation;
    goto :goto_1

    .line 770
    .end local v1           #slide_alpha:Landroid/view/animation/Animation;
    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->onChangeTab()V

    goto/16 :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 585
    :cond_0
    return-void

    .line 579
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setInfoMessageEnable(II)V
    .locals 1
    .parameter "view"
    .parameter "state"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setInfoMessageEnable(II)V

    .line 860
    return-void
.end method

.method public setOnTabChangedListener(Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    .line 822
    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 1
    .parameter "tabHint"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchWidget;->setTabHintEnabled(Z)V

    .line 831
    return-void
.end method

.method public setWidgetTouchListener(Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    .line 142
    return-void
.end method

.method public setWidgetVisiable(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchWidget;->setVisibility(I)V

    .line 1409
    sparse-switch p1, :sswitch_data_0

    .line 1418
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->requestLayout()V

    .line 1420
    return-void

    .line 1413
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    goto :goto_0

    .line 1416
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    goto :goto_0

    .line 1409
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 223
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchWidget;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    .line 224
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p0}, Lcom/htc/widget/TabSwitchWidget;->setTabSwitchHost(Lcom/htc/widget/TabSwitchHost;)V

    .line 226
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    new-instance v1, Lcom/htc/widget/TabSwitchHost$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchHost$1;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setWidgetTouchListener(Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;)V

    .line 264
    new-instance v0, Lcom/htc/widget/TabSwitchHost$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/TabSwitchHost$2;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 282
    new-instance v0, Lcom/htc/widget/TabSwitchHost$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/TabSwitchHost$3;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

    .line 300
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 302
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    new-instance v1, Lcom/htc/widget/TabSwitchHost$4;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchHost$4;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setTabSelectionListener(Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;)V

    .line 317
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 318
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->setup()V

    .line 337
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 338
    return-void
.end method

.method public updateTabLabelText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 495
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    .line 496
    :cond_0
    const-string v2, "TabSwitchHost"

    const-string v3, "Invalid tag or text info. Can not update"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 502
    .local v1, spc:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v2, v0, p2}, Lcom/htc/widget/TabSwitchWidget;->setInfoTextToWidget(ILjava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v1, p2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setInfoText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
